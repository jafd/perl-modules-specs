RPMSPECFLAGS := --define 'dist .el9'
RPMSPEC = rpmspec --query $(RPMSPECFLAGS)
CHROOT := centos-stream+epel-9-$(shell arch)
REPO := .repo

srpm_basename = $(shell $(RPMSPEC) --srpm --query --queryformat '%{name}-%{version}-%{release}' $(1))
srpm_name = .srpms/$(call srpm_basename,$(1)).src.rpm
rpm_name = $(shell $(RPMSPEC) --builtrpms --query --queryformat '$(REPO)/results/$(CHROOT)/$(call srpm_basename,$(1))/%{name}-%{version}-%{release}.%{arch}.rpm ' $(1))
spec_name = $(1)/$(1).spec
stamp_name = .stamps/$(call spec_name,$(1)).built-stamp

.srpms:
	mkdir "$@"

define build_rpm_source =
	$(eval builddir := $(shell dirname "$@"))
	$(eval specdir := $(shell dirname "$^"))
	set -euo pipefail; \
	mkdir -p $(builddir) && \
	rpmbuild -bs --define '_disable_source_fetch 0' --define '_sourcedir $(specdir)' --define '_srcrpmdir $(builddir)' $(RPMSPECFLAGS) "$^"
endef

define build_rpm_binary =
	set -euo pipefail; \
	mock -r $(CHROOT) --localrepo=$(REPO) --chain --enable-network "$^"
endef


-include resolvedpackages.mk

ifneq ($(PACKAGES_ARE_COMPILED),yes)

define buildpackage =

ALL_PACKAGES += $(1)

$(call srpm_name,$(call spec_name,$(1))): $(call spec_name,$(1))
	$$(build_rpm_source)

$(call rpm_name,$(call spec_name,$(1))): $(call srpm_name,$(call spec_name,$(1)))
	$$(build_rpm_binary)

$(call stamp_name,$(1)): $(call rpm_name,$(call spec_name,$(1)))
	mkdir -p $$$$(dirname "$$@") && \
	touch "$$@"

$(1): $(2) $(call stamp_name,$(1))

endef

PACKAGE_DEFS += $(call buildpackage,percona-toolkit,)
PACKAGE_DEFS += $(call buildpackage,perl-Algorithm-Loops,)
PACKAGE_DEFS += $(call buildpackage,perl-AnyEvent-AIO,perl-IO-AIO)
PACKAGE_DEFS += $(call buildpackage,perl-AnyEvent-CacheDNS,)
PACKAGE_DEFS += $(call buildpackage,perl-App-Nopaste,)
PACKAGE_DEFS += $(call buildpackage,perl-ARGV-Struct,)
PACKAGE_DEFS += $(call buildpackage,perl-Astro-Sunrise,)
PACKAGE_DEFS += $(call buildpackage,perl-Authen-DecHpwd,perl-Data-Integer perl-Scalar-String)
PACKAGE_DEFS += $(call buildpackage,perl-Authen-Passphrase,perl-Authen-DecHpwd perl-Crypt-MySQL perl-Crypt-UnixCrypt_XS)
PACKAGE_DEFS += $(call buildpackage,perl-B-Compiling,)
PACKAGE_DEFS += $(call buildpackage,perl-Beanstalk-Client,)
PACKAGE_DEFS += $(call buildpackage,perl-Bread-Board,perl-MooseX-Clone perl-MooseX-Params-Validate)
PACKAGE_DEFS += $(call buildpackage,perl-Business-AuthorizeNet-CIM,)
PACKAGE_DEFS += $(call buildpackage,perl-Business-OnlinePayment,perl-Net-HTTPS-Any)
PACKAGE_DEFS += $(call buildpackage,perl-Business-OnlinePayment-AuthorizeNet,perl-Business-OnlinePayment perl-Net-HTTPS-Any)
PACKAGE_DEFS += $(call buildpackage,perl-Business-PayPal-API,)
PACKAGE_DEFS += $(call buildpackage,perl-Business-PayPal-NVP,)
PACKAGE_DEFS += $(call buildpackage,perl-Bytes-Random-Secure,perl-Crypt-Random-Seed perl-Math-Random-ISAAC perl-Statistics-Basic)
PACKAGE_DEFS += $(call buildpackage,perl-Carp-Always,)
PACKAGE_DEFS += $(call buildpackage,perl-Carp-Assert-More,)
PACKAGE_DEFS += $(call buildpackage,perl-Carp-Clan-Share,)
PACKAGE_DEFS += $(call buildpackage,perl-CGI-Application,perl-CGI-PSGI perl-Class-ISA)
PACKAGE_DEFS += $(call buildpackage,perl-CGI-Application-Dispatch,perl-CGI-Application perl-CGI-PSGI perl-Exception-Class-TryCatch perl-HTTP-Exception)
PACKAGE_DEFS += $(call buildpackage,perl-CGI-Application-Plugin-AutoRunmode,perl-CGI-Application)
PACKAGE_DEFS += $(call buildpackage,perl-CGI-Application-Plugin-DBH,perl-CGI-Application perl-DBD-Mock)
PACKAGE_DEFS += $(call buildpackage,perl-CGI-Application-Plugin-Redirect,perl-CGI-Application)
PACKAGE_DEFS += $(call buildpackage,perl-CGI-Application-Plugin-RunmodeParseKeyword,perl-CGI-Application perl-Parse-Keyword)
PACKAGE_DEFS += $(call buildpackage,perl-CGI-PSGI,)
PACKAGE_DEFS += $(call buildpackage,perl-ClamAV-Client,)
PACKAGE_DEFS += $(call buildpackage,perl-Class-Accessor-Chained,)
PACKAGE_DEFS += $(call buildpackage,perl-Class-CSV,)
PACKAGE_DEFS += $(call buildpackage,perl-Class-ISA,)
PACKAGE_DEFS += $(call buildpackage,perl-Class-Null,)
PACKAGE_DEFS += $(call buildpackage,perl-Class-Prototyped,)
PACKAGE_DEFS += $(call buildpackage,perl-Class-Refresh,perl-Devel-OverrideGlobalRequire)
PACKAGE_DEFS += $(call buildpackage,perl-Class-ReturnValue,)
PACKAGE_DEFS += $(call buildpackage,perl-Clipboard,)
PACKAGE_DEFS += $(call buildpackage,perl-Compiler-Lexer,)
PACKAGE_DEFS += $(call buildpackage,perl-Config-AWS,)
PACKAGE_DEFS += $(call buildpackage,perl-Config-JFDI,perl-Carp-Clan-Share perl-Data-Visitor perl-Getopt-Usaginator)
PACKAGE_DEFS += $(call buildpackage,perl-Config-ZOMG,)
# PACKAGE_DEFS += $(call buildpackage,perl-Coro,perl-Guard perl-EV)
PACKAGE_DEFS += $(call buildpackage,perl-Crypt-JWT,)
PACKAGE_DEFS += $(call buildpackage,perl-Crypt-MySQL,)
PACKAGE_DEFS += $(call buildpackage,perl-Crypt-OpenSSL-DSA,)
PACKAGE_DEFS += $(call buildpackage,perl-Crypt-OpenSSL-Guess,)
PACKAGE_DEFS += $(call buildpackage,perl-Crypt-PW44,)
PACKAGE_DEFS += $(call buildpackage,perl-Crypt-Random-Seed,)
PACKAGE_DEFS += $(call buildpackage,perl-Crypt-UnixCrypt_XS,perl-Algorithm-Loops)
PACKAGE_DEFS += $(call buildpackage,perl-curry,)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Alias,perl-Devel-CallParser)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Constraint,perl-Class-Prototyped)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Currency,perl-Finance-Currency-Convert-WebserviceX perl-Locale-Currency-Format)
PACKAGE_DEFS += $(call buildpackage,perl-Data-ICal,perl-Class-ReturnValue perl-Text-vFile-asData)
PACKAGE_DEFS += $(call buildpackage,perl-Data-ICal-DateTime,perl-Data-ICal)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Integer,)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Manager,perl-Data-Verifier perl-Message-Stack perl-Message-Stack-Parser perl-MooseX-Storage)
PACKAGE_DEFS += $(call buildpackage,perl-Data-MessagePack,)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Page,perl-Class-Accessor-Chained)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Password-Meter,)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Random,)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Stream-Bulk,perl-Test-TempDir perl-DBD-Mock)
PACKAGE_DEFS += $(call buildpackage,perl-DataStruct-Flat,)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Validate-Type,)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Verifier,perl-MooseX-Storage)
PACKAGE_DEFS += $(call buildpackage,perl-Data-Visitor,perl-Tie-ToObject)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-Event-ICal,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-Event-Recurrence,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-Format-DateManip,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-Format-Flexible,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-Format-HTTP,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-Format-ICal,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-Format-Natural,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-HiRes,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-Set,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTime-TimeZone,)
PACKAGE_DEFS += $(call buildpackage,perl-DateTimeX-Easy,)
PACKAGE_DEFS += $(call buildpackage,perl-DBD-Mock,)
PACKAGE_DEFS += $(call buildpackage,perl-DBICx-TestDatabase,)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-Candy,)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-DeploymentHandler,perl-SQL-SplitStatement perl-DBIx-Class-Schema-Loader perl-Text-Brew)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-DynamicDefault,perl-DBICx-TestDatabase perl-Module-Install-ExtraTests)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-Helpers,perl-Test-Roo perl-Text-Brew perl-DBIx-Class-Candy perl-DBIx-Introspector)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-InflateColumn-Authen-Passphrase,)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-InflateColumn-Currency,)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-PassphraseColumn,)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-Schema-Loader,perl-curry perl-Lingua-EN-Inflect-Number perl-Lingua-EN-Inflect-Phrase perl-Lingua-EN-Tagger perl-String-CamelCase perl-String-ToIdentifier-EN)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-Schema-PopulateMore,)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-Storage-TxnEndHook,)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Class-TimeStamp,perl-DBIx-Class-DynamicDefault perl-Time-Warp)
PACKAGE_DEFS += $(call buildpackage,perl-DBIx-Introspector,perl-Test-Roo)
PACKAGE_DEFS += $(call buildpackage,perl-Devel-CallParser,)
PACKAGE_DEFS += $(call buildpackage,perl-Devel-Declare,perl-B-Compiling)
PACKAGE_DEFS += $(call buildpackage,perl-Devel-OverrideGlobalRequire,)
PACKAGE_DEFS += $(call buildpackage,perl-Devel-REPL,)
PACKAGE_DEFS += $(call buildpackage,perl-Digest-MD5-File,)
PACKAGE_DEFS += $(call buildpackage,perl-Directory-Scratch,)
PACKAGE_DEFS += $(call buildpackage,perl-Email-MIME-XPath,perl-Tree-XPathEngine)
PACKAGE_DEFS += $(call buildpackage,perl-Email-Valid,)
PACKAGE_DEFS += $(call buildpackage,perl-EV,)
PACKAGE_DEFS += $(call buildpackage,perl-Exception-Class-TryCatch,)
PACKAGE_DEFS += $(call buildpackage,perl-Exporter-Lite,)
PACKAGE_DEFS += $(call buildpackage,perl-Exporter-Tiny,)
PACKAGE_DEFS += $(call buildpackage,perl-File-MMagic,)
PACKAGE_DEFS += $(call buildpackage,perl-Finance-Currency-Convert-WebserviceX,)
PACKAGE_DEFS += $(call buildpackage,perl-Finance-IIF,)
PACKAGE_DEFS += $(call buildpackage,perl-Finance-OFX,)
PACKAGE_DEFS += $(call buildpackage,perl-Finance-OFX-Parse-Simple,)
PACKAGE_DEFS += $(call buildpackage,perl-Furl,perl-HTTP-CookieJar perl-HTTP-Body perl-Net-IDN-Encode)
PACKAGE_DEFS += $(call buildpackage,perl-Future-Mojo,)
PACKAGE_DEFS += $(call buildpackage,perl-Gazelle,perl-Guard perl-Parallel-Prefork perl-Server-Starter)
PACKAGE_DEFS += $(call buildpackage,perl-Geo-StreetAddress-US,)
PACKAGE_DEFS += $(call buildpackage,perl-Getopt-Usaginator,perl-Package-Pkg)
PACKAGE_DEFS += $(call buildpackage,perl-Gravatar-URL,perl-Test-MockRandom)
PACKAGE_DEFS += $(call buildpackage,perl-Guard,)
PACKAGE_DEFS += $(call buildpackage,perl-Hash-SafeKeys,)
PACKAGE_DEFS += $(call buildpackage,perl-Hash-Util-FieldHash-Compat,perl-Tie-RefHash-Weak)
PACKAGE_DEFS += $(call buildpackage,perl-HTML-Form,)
PACKAGE_DEFS += $(call buildpackage,perl-HTML-FormatText-WithLinks,)
PACKAGE_DEFS += $(call buildpackage,perl-HTML-FormatText-WithLinks-AndTables,perl-HTML-FormatText-WithLinks)
PACKAGE_DEFS += $(call buildpackage,perl-HTML-Lint,)
PACKAGE_DEFS += $(call buildpackage,perl-HTML-Scrubber,)
PACKAGE_DEFS += $(call buildpackage,perl-HTML-Scrubber-StripScripts,perl-HTML-Scrubber)
PACKAGE_DEFS += $(call buildpackage,perl-HTTP-Body,)
PACKAGE_DEFS += $(call buildpackage,perl-HTTP-CookieJar,perl-Mozilla-PublicSuffix)
PACKAGE_DEFS += $(call buildpackage,perl-HTTP-Exception,)
PACKAGE_DEFS += $(call buildpackage,perl-HTTP-Response-Encoding,)
PACKAGE_DEFS += $(call buildpackage,perl-HTTP-Response-Stringable,)
PACKAGE_DEFS += $(call buildpackage,perl-HTTP-Server-Simple,)
PACKAGE_DEFS += $(call buildpackage,perl-IO-AIO,)
PACKAGE_DEFS += $(call buildpackage,perl-IO-Async,)
PACKAGE_DEFS += $(call buildpackage,perl-IO-Interactive,)
PACKAGE_DEFS += $(call buildpackage,perl-IO-Socket-SSL,)
PACKAGE_DEFS += $(call buildpackage,perl-IPC-Signal,)
PACKAGE_DEFS += $(call buildpackage,perl-Kavorka,perl-Parse-Keyword)
PACKAGE_DEFS += $(call buildpackage,perl-libnet,)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-EN-FindNumber,perl-Lingua-EN-Words2Nums)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-EN-Inflect-Number,)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-EN-Inflect-Phrase,perl-Lingua-EN-Inflect-Number perl-Lingua-EN-FindNumber perl-Lingua-EN-Number-IsOrdinal perl-Lingua-EN-Tagger)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-EN-Number-IsOrdinal,perl-Lingua-EN-FindNumber)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-EN-Tagger,perl-Lingua-Stem)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-EN-Words2Nums,)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-PT-Stemmer,)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-Stem,perl-Lingua-PT-Stemmer perl-Lingua-Stem-Fr perl-Lingua-Stem-It perl-Lingua-Stem-Ru perl-Lingua-Stem-Snowball-Da perl-Snowball-Norwegian perl-Snowball-Swedish perl-Text-German)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-Stem-Fr,)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-Stem-It,)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-Stem-Ru,)
PACKAGE_DEFS += $(call buildpackage,perl-Lingua-Stem-Snowball-Da,)
PACKAGE_DEFS += $(call buildpackage,perl-Locale-Codes,)
PACKAGE_DEFS += $(call buildpackage,perl-Locale-Currency-Format,)
PACKAGE_DEFS += $(call buildpackage,perl-Log-Dispatch-Binlog,perl-Test-TempDir)
PACKAGE_DEFS += $(call buildpackage,perl-Log-Dispatch-Config,)
# PACKAGE_DEFS += $(call buildpackage,perl-Log-Dispatch-Config-TestLog,perl-Log-Dispatch-Binlog perl-Log-Dispatch-Config perl-Perl-Commanperl-Log-Dispatch-Binlog perl-Log-Dispatch-Config perl-Perl-Command)
PACKAGE_DEFS += $(call buildpackage,perl-Log-Dispatch-Configurator-Any,perl-Log-Dispatch-Config)
PACKAGE_DEFS += $(call buildpackage,perl-Log-Dispatch-File-Rolling,)
PACKAGE_DEFS += $(call buildpackage,perl-Log-Syslog-Constants,)
PACKAGE_DEFS += $(call buildpackage,perl-Log-Syslog-Fast,perl-Log-Syslog-Constants)
PACKAGE_DEFS += $(call buildpackage,perl-Math-Random-ISAAC,)
PACKAGE_DEFS += $(call buildpackage,perl-Math-Round,)
PACKAGE_DEFS += $(call buildpackage,perl-Message-Stack,perl-MooseX-Aliases perl-MooseX-Storage)
PACKAGE_DEFS += $(call buildpackage,perl-Message-Stack-Parser,perl-Message-Stack)
PACKAGE_DEFS += $(call buildpackage,perl-Method-Signatures-Simple,perl-Devel-Declare)
PACKAGE_DEFS += $(call buildpackage,perl-Method-Signatures-Simple-ParseKeyword,perl-Parse-Keyword)
PACKAGE_DEFS += $(call buildpackage,perl-Module-Install-ExtraTests,)
PACKAGE_DEFS += $(call buildpackage,perl-Module-Util,)
PACKAGE_DEFS += $(call buildpackage,perl-Moo,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Aliases,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-ClassAttribute,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Clone,perl-Data-Visitor perl-Hash-Util-FieldHash-Compat)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Declare,perl-Devel-Declare perl-MooseX-Method-Signatures)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-LazyRequire,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Meta-TypeConstraint-ForceCoercion,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Method-Signatures,perl-Devel-Declare perl-MooseX-LazyRequire perl-MooseX-Meta-TypeConstraint-ForceCoercion perl-MooseX-Types-Structured perl-Parse-Method-Signatures)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-NonMoose,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Params-Validate,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Singleton,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Storage,perl-String-RewritePrefix perl-Test-Deep-JSON perl-Test-Deep-Type)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-StrictConstructor,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Traits,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Types-DateTime,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Types-DateTime-MoreCoercions,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Types-Email,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Types-PortNumber,)
PACKAGE_DEFS += $(call buildpackage,perl-MooseX-Types-Structured,)
PACKAGE_DEFS += $(call buildpackage,perl-MooX-TypeTiny,)
PACKAGE_DEFS += $(call buildpackage,perl-MouseX-Types-Common,)
PACKAGE_DEFS += $(call buildpackage,perl-Mozilla-PublicSuffix,)
PACKAGE_DEFS += $(call buildpackage,perl-Net-Amazon-S3,)
PACKAGE_DEFS += $(call buildpackage,perl-Net-Amazon-Signature-V4,)
PACKAGE_DEFS += $(call buildpackage,perl-Net-APNS-Simple,perl-Protocol-HTTP2 perl-Crypt-JWT)
PACKAGE_DEFS += $(call buildpackage,perl-Net-Dogstatsd,perl-Data-Validate-Type)
PACKAGE_DEFS += $(call buildpackage,perl-Net-Google-CalendarV3,perl-Kavorka perl-WWW-JSON)
PACKAGE_DEFS += $(call buildpackage,perl-Net-HTTPS-Any,)
PACKAGE_DEFS += $(call buildpackage,perl-Net-IDN-Encode,)
PACKAGE_DEFS += $(call buildpackage,perl-Net-OpenSRS,)
PACKAGE_DEFS += $(call buildpackage,perl-Net-Server-SS-PreFork,perl-HTTP-Server-Simple perl-Server-Starter)
PACKAGE_DEFS += $(call buildpackage,perl-Net-Telnet,)
PACKAGE_DEFS += $(call buildpackage,perl-OpenAI-API,perl-IO-Async perl-Moo perl-Test-RequiresInternet perl-Throwable perl-Type-Tiny)
PACKAGE_DEFS += $(call buildpackage,perl-Package-Pkg,)
PACKAGE_DEFS += $(call buildpackage,perl-Parallel-Prefork,perl-Parallel-Scoreboard perl-Proc-Wait3 perl-Signal-Mask)
PACKAGE_DEFS += $(call buildpackage,perl-Parallel-Scoreboard,)
PACKAGE_DEFS += $(call buildpackage,perl-Parse-Keyword,perl-Devel-CallParser)
PACKAGE_DEFS += $(call buildpackage,perl-Parse-Method-Signatures,perl-MooseX-Traits perl-MooseX-Types-Structured)
PACKAGE_DEFS += $(call buildpackage,perl-Path-Router,)
# PACKAGE_DEFS += $(call buildpackage,perl-Paws,perl-ARGV-Struct perl-Config-AWS perl-DataStruct-Flat perl-Furl perl-Future-Mojo perl-MooseX-ClassAttribute perl-Net-Amazon-Signature-V4 perl-Test-Timer perl-URI-Template perl-URL-Encode perl-URL-Encode-XS)
PACKAGE_DEFS += $(call buildpackage,perl-Perl6-Junction,)
PACKAGE_DEFS += $(call buildpackage,perl-Perl-Command,)
# PACKAGE_DEFS += $(call buildpackage,perl-Perl-LanguageServer,)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-App-Path-Router,perl-MooseX-NonMoose perl-Path-Router)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-App-Proxy,)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-Middleware-Cache,)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-Middleware-Deflater,)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-Middleware-Header,)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-Middleware-ProxyMap,perl-Plack-App-Proxy)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-Middleware-Rewrite,)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-Middleware-ServerStatus-Lite,perl-Parallel-Scoreboard perl-Starman)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-Middleware-Session,)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-Session-Store-Redis,perl-Data-MessagePack perl-Plack-Middleware-Session)
PACKAGE_DEFS += $(call buildpackage,perl-Plack-Session-Store-Transparent,perl-Plack-Middleware-Session)
# PACKAGE_DEFS += $(call buildpackage,perl-POE-Component-Supervisor,)    ## Depends on the broken TestLog
# PACKAGE_DEFS += $(call buildpackage,perl-Proc-Supervised-Convenience,) ## Depends on the broken POE::Component::Supervisor
PACKAGE_DEFS += $(call buildpackage,perl-Proc-Wait3,)
PACKAGE_DEFS += $(call buildpackage,perl-Protocol-HTTP2,)
PACKAGE_DEFS += $(call buildpackage,perl-Scalar-String,)
PACKAGE_DEFS += $(call buildpackage,perl-Server-Starter,)
PACKAGE_DEFS += $(call buildpackage,perl-Set-Infinite,)
PACKAGE_DEFS += $(call buildpackage,perl-Signal-Mask,perl-IPC-Signal perl-Thread-SigMask)
PACKAGE_DEFS += $(call buildpackage,perl-Smart-Comments,)
PACKAGE_DEFS += $(call buildpackage,perl-Snowball-Norwegian,)
PACKAGE_DEFS += $(call buildpackage,perl-Snowball-Swedish,)
PACKAGE_DEFS += $(call buildpackage,perl-SQL-SplitStatement,perl-SQL-Tokenizer perl-Test-Script-Run)
PACKAGE_DEFS += $(call buildpackage,perl-SQL-Tokenizer,)
PACKAGE_DEFS += $(call buildpackage,perl-Starman,perl-Net-Server-SS-PreFork perl-Server-Starter)
PACKAGE_DEFS += $(call buildpackage,perl-Statistics-Basic,)
PACKAGE_DEFS += $(call buildpackage,perl-String-Approx,)
PACKAGE_DEFS += $(call buildpackage,perl-String-CamelCase,)
PACKAGE_DEFS += $(call buildpackage,perl-String-RewritePrefix,)
PACKAGE_DEFS += $(call buildpackage,perl-String-ToIdentifier-EN,perl-Lingua-EN-Inflect-Phrase)
PACKAGE_DEFS += $(call buildpackage,perl-String-TtyLength,)
PACKAGE_DEFS += $(call buildpackage,perl-Sys-SigAction,)
PACKAGE_DEFS += $(call buildpackage,perl-Term-ProgressBar-Quiet,)
PACKAGE_DEFS += $(call buildpackage,perl-Term-ProgressBar-Simple,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-Deep-JSON,perl-Exporter-Lite)
PACKAGE_DEFS += $(call buildpackage,perl-Test-Deep-Type,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-Inter,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-Mock-LWP,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-Mock-LWP-Dispatch,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-MockRandom,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-MockTime-HiRes,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-RequiresInternet,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-Roo,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-Script-Run,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-TempDir,perl-Directory-Scratch)
PACKAGE_DEFS += $(call buildpackage,perl-Test-Timer,)
PACKAGE_DEFS += $(call buildpackage,perl-Test-WWW-Mechanize,perl-Carp-Assert-More perl-HTML-Lint perl-HTTP-Server-Simple)
PACKAGE_DEFS += $(call buildpackage,perl-Test-WWW-Mechanize-PSGI,perl-Test-WWW-Mechanize)
PACKAGE_DEFS += $(call buildpackage,perl-Test-WWW-Selenium,perl-Test-Mock-LWP)
PACKAGE_DEFS += $(call buildpackage,perl-Text-Brew,)
PACKAGE_DEFS += $(call buildpackage,perl-Text-Elide,perl-Smart-Comments)
PACKAGE_DEFS += $(call buildpackage,perl-Text-German,)
PACKAGE_DEFS += $(call buildpackage,perl-Text-Original,)
PACKAGE_DEFS += $(call buildpackage,perl-Text-Table-Tiny,perl-String-TtyLength)
PACKAGE_DEFS += $(call buildpackage,perl-Text-vCard,perl-Directory-Scratch perl-Text-vFile-asData)
PACKAGE_DEFS += $(call buildpackage,perl-Text-vFile-asData,perl-Class-Accessor-Chained)
PACKAGE_DEFS += $(call buildpackage,perl-Thread-SigMask,)
PACKAGE_DEFS += $(call buildpackage,perl-Throwable,)
PACKAGE_DEFS += $(call buildpackage,perltidy,)
PACKAGE_DEFS += $(call buildpackage,perl-Tie-RefHash-Weak,)
PACKAGE_DEFS += $(call buildpackage,perl-Tie-ToObject,)
PACKAGE_DEFS += $(call buildpackage,perl-Time-Duration-Parse,)
PACKAGE_DEFS += $(call buildpackage,perl-Time-Warp,)
PACKAGE_DEFS += $(call buildpackage,perl-Tree-XPathEngine,)
PACKAGE_DEFS += $(call buildpackage,perl-Type-Tiny,perl-Class-ISA perl-Data-Constraint perl-Exporter-Tiny perl-MooX-TypeTiny perl-MouseX-Types-Common)
PACKAGE_DEFS += $(call buildpackage,perl-URI-Template,)
PACKAGE_DEFS += $(call buildpackage,perl-URL-Encode,)
PACKAGE_DEFS += $(call buildpackage,perl-URL-Encode-XS,perl-URL-Encode)
PACKAGE_DEFS += $(call buildpackage,perl-Validate-Tiny,)
PACKAGE_DEFS += $(call buildpackage,perl-VM-EC2,)
PACKAGE_DEFS += $(call buildpackage,perl-VM-EC2-Security-CredentialCache,)
PACKAGE_DEFS += $(call buildpackage,perl-WebService-Client,perl-HTTP-Response-Stringable)
PACKAGE_DEFS += $(call buildpackage,perl-WWW-FCM-HTTP,)
PACKAGE_DEFS += $(call buildpackage,perl-WWW-JSON,perl-Test-Mock-LWP-Dispatch)
PACKAGE_DEFS += $(call buildpackage,perl-WWW-Mechanize,)
PACKAGE_DEFS += $(call buildpackage,perl-WWW-Pastebin-PastebinCom-Create,)
PACKAGE_DEFS += $(call buildpackage,perl-XML-Sig,perl-Crypt-OpenSSL-DSA perl-Crypt-OpenSSL-Guess)

define GUARD_CLAUSE

PACKAGES_ARE_COMPILED := yes

endef

PACKAGE_DEFS += $(GUARD_CLAUSE)

resolvedpackages.mk:
	$(eval $(file > resolvedpackages.mk,$(call PACKAGE_DEFS)))

-include resolvedpackages.mk

endif

all: $(ALL_PACKAGES)

all-packages:
	@echo $(ALL_PACKAGES)

clean:
	rm -fr $(REPO)/results .srpms/*.src.rpm

.PHONY: clean all all-packages $(ALL_PACKAGES)
