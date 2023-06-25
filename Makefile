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
	export OPENSSL_ENABLE_SHA1_SIGNATURES=1; \
	mock -r $(CHROOT) --localrepo=$(REPO) --chain --enable-network "$^"
endef


define buildpackage =

ALL_PACKAGES += $(1)

$$(call srpm_name,$$(call spec_name,$(1))): $$(call spec_name,$(1))
	$$(build_rpm_source)

$$(call rpm_name,$$(call spec_name,$(1))): $$(call srpm_name,$$(call spec_name,$(1)))
	$$(build_rpm_binary)

$$(call stamp_name,$(1)): $$(call rpm_name,$$(call spec_name,$(1)))
	mkdir -p $$$$(dirname "$$@") && \
	touch "$$@"

$(1): $(2) $$(call stamp_name,$(1))


endef

$(eval $(call buildpackage,percona-toolkit,))
$(eval $(call buildpackage,perl-Algorithm-Loops,))
$(eval $(call buildpackage,perl-AnyEvent-AIO,perl-IO-AIO))
$(eval $(call buildpackage,perl-AnyEvent-CacheDNS,))
$(eval $(call buildpackage,perl-App-Nopaste,))
$(eval $(call buildpackage,perl-ARGV-Struct,))
$(eval $(call buildpackage,perl-Astro-Sunrise,))
$(eval $(call buildpackage,perl-Authen-DecHpwd,perl-Data-Integer perl-Scalar-String))
$(eval $(call buildpackage,perl-Authen-Passphrase,perl-Authen-DecHpwd perl-Crypt-MySQL perl-Crypt-UnixCrypt_XS))
$(eval $(call buildpackage,perl-Beanstalk-Client,))
$(eval $(call buildpackage,perl-Bread-Board,perl-MooseX-Clone perl-MooseX-Params-Validate))
$(eval $(call buildpackage,perl-Business-AuthorizeNet-CIM,))
$(eval $(call buildpackage,perl-Business-OnlinePayment,perl-Net-HTTPS-Any))
$(eval $(call buildpackage,perl-Business-OnlinePayment-AuthorizeNet,perl-Business-OnlinePayment perl-Net-HTTPS-Any))
$(eval $(call buildpackage,perl-Business-PayPal-API,))
$(eval $(call buildpackage,perl-Business-PayPal-NVP,))
$(eval $(call buildpackage,perl-Bytes-Random-Secure,perl-Crypt-Random-Seed perl-Math-Random-ISAAC perl-Statistics-Basic))
$(eval $(call buildpackage,perl-Carp-Always,))
$(eval $(call buildpackage,perl-Carp-Assert-More,))
$(eval $(call buildpackage,perl-Carp-Clan-Share,))
$(eval $(call buildpackage,perl-CGI-Application,perl-CGI-PSGI perl-Class-ISA))
$(eval $(call buildpackage,perl-CGI-Application-Dispatch,perl-CGI-Application perl-CGI-PSGI perl-Exception-Class-TryCatch perl-HTTP-Exception))
$(eval $(call buildpackage,perl-CGI-Application-Plugin-AutoRunmode,perl-CGI-Application))
$(eval $(call buildpackage,perl-CGI-Application-Plugin-DBH,perl-CGI-Application perl-DBD-Mock))
$(eval $(call buildpackage,perl-CGI-Application-Plugin-Redirect,perl-CGI-Application))
$(eval $(call buildpackage,perl-CGI-Application-Plugin-RunmodeParseKeyword,perl-CGI-Application perl-Parse-Keyword))
$(eval $(call buildpackage,perl-CGI-PSGI,))
$(eval $(call buildpackage,perl-ClamAV-Client,))
$(eval $(call buildpackage,perl-Class-Accessor-Chained,))
$(eval $(call buildpackage,perl-Class-CSV,))
$(eval $(call buildpackage,perl-Class-ISA,))
$(eval $(call buildpackage,perl-Class-Null,))
$(eval $(call buildpackage,perl-Class-Prototyped,))
$(eval $(call buildpackage,perl-Class-Refresh,perl-Devel-OverrideGlobalRequire))
$(eval $(call buildpackage,perl-Class-ReturnValue,))
$(eval $(call buildpackage,perl-Clipboard,))
$(eval $(call buildpackage,perl-Compiler-Lexer,))
$(eval $(call buildpackage,perl-Config-AWS,))
$(eval $(call buildpackage,perl-Config-JFDI,perl-Carp-Clan-Share perl-Data-Visitor perl-Getopt-Usaginator))
$(eval $(call buildpackage,perl-Config-ZOMG,))
$(eval $(call buildpackage,perl-Coro,perl-Guard perl-EV))
$(eval $(call buildpackage,perl-Crypt-JWT,))
$(eval $(call buildpackage,perl-Crypt-MySQL,))
$(eval $(call buildpackage,perl-Crypt-OpenSSL-Guess,))
$(eval $(call buildpackage,perl-Crypt-PW44,))
$(eval $(call buildpackage,perl-Crypt-Random-Seed,))
$(eval $(call buildpackage,perl-Crypt-UnixCrypt_XS,perl-Algorithm-Loops))
$(eval $(call buildpackage,perl-curry,))
$(eval $(call buildpackage,perl-Data-Alias,perl-Devel-CallParser))
$(eval $(call buildpackage,perl-Data-Constraint,perl-Class-Prototyped))
$(eval $(call buildpackage,perl-Data-Currency,perl-Finance-Currency-Convert-WebserviceX perl-Locale-Currency-Format))
$(eval $(call buildpackage,perl-Data-ICal,perl-Class-ReturnValue perl-Text-vFile-asData))
$(eval $(call buildpackage,perl-Data-ICal-DateTime,perl-Data-ICal))
$(eval $(call buildpackage,perl-Data-Integer,))
$(eval $(call buildpackage,perl-Data-Manager,perl-Data-Verifier perl-Message-Stack perl-Message-Stack-Parser perl-MooseX-Storage))
$(eval $(call buildpackage,perl-Data-MessagePack,))
$(eval $(call buildpackage,perl-Data-Page,perl-Class-Accessor-Chained))
$(eval $(call buildpackage,perl-Data-Password-Meter,))
$(eval $(call buildpackage,perl-Data-Random,))
$(eval $(call buildpackage,perl-Data-Stream-Bulk,perl-Test-TempDir perl-DBD-Mock))
$(eval $(call buildpackage,perl-DataStruct-Flat,))
$(eval $(call buildpackage,perl-Data-Validate-Type,))
$(eval $(call buildpackage,perl-Data-Verifier,perl-MooseX-Storage))
$(eval $(call buildpackage,perl-Data-Visitor,perl-Tie-ToObject))
$(eval $(call buildpackage,perl-DateTime-Event-ICal,))
$(eval $(call buildpackage,perl-DateTime-Event-Recurrence,))
$(eval $(call buildpackage,perl-DateTime-Format-DateManip,))
$(eval $(call buildpackage,perl-DateTime-Format-Flexible,))
$(eval $(call buildpackage,perl-DateTime-Format-HTTP,))
$(eval $(call buildpackage,perl-DateTime-Format-ICal,))
$(eval $(call buildpackage,perl-DateTime-Format-Natural,))
$(eval $(call buildpackage,perl-DateTime-HiRes,))
$(eval $(call buildpackage,perl-DateTime-Set,))
$(eval $(call buildpackage,perl-DateTime-TimeZone,))
$(eval $(call buildpackage,perl-DateTimeX-Easy,))
$(eval $(call buildpackage,perl-DBD-Mock,))
$(eval $(call buildpackage,perl-DBICx-TestDatabase,))
$(eval $(call buildpackage,perl-DBIx-Class-Candy,))
$(eval $(call buildpackage,perl-DBIx-Class-DeploymentHandler,perl-SQL-SplitStatement perl-DBIx-Class-Schema-Loader perl-Text-Brew))
$(eval $(call buildpackage,perl-DBIx-Class-DynamicDefault,))
$(eval $(call buildpackage,perl-DBIx-Class-Helpers,))
$(eval $(call buildpackage,perl-DBIx-Class-InflateColumn-Authen-Passphrase,))
$(eval $(call buildpackage,perl-DBIx-Class-InflateColumn-Currency,))
$(eval $(call buildpackage,perl-DBIx-Class-PassphraseColumn,))
$(eval $(call buildpackage,perl-DBIx-Class-Schema-Loader,))
$(eval $(call buildpackage,perl-DBIx-Class-Schema-PopulateMore,))
$(eval $(call buildpackage,perl-DBIx-Class-Storage-TxnEndHook,))
$(eval $(call buildpackage,perl-DBIx-Class-TimeStamp,))
$(eval $(call buildpackage,perl-DBIx-Introspector,))
$(eval $(call buildpackage,perl-Devel-CallParser,))
$(eval $(call buildpackage,perl-Devel-Declare,))
$(eval $(call buildpackage,perl-Devel-OverrideGlobalRequire,))
$(eval $(call buildpackage,perl-Devel-REPL,))
$(eval $(call buildpackage,perl-Digest-MD5-File,))
$(eval $(call buildpackage,perl-Directory-Scratch,))
$(eval $(call buildpackage,perl-Email-MIME-XPath,))
$(eval $(call buildpackage,perl-Email-Valid,))
$(eval $(call buildpackage,perl-EV,))
$(eval $(call buildpackage,perl-Exception-Class-TryCatch,))
$(eval $(call buildpackage,perl-Exporter-Lite,))
$(eval $(call buildpackage,perl-Exporter-Tiny,))
$(eval $(call buildpackage,perl-File-MMagic,))
$(eval $(call buildpackage,perl-Finance-Currency-Convert-WebserviceX,))
$(eval $(call buildpackage,perl-Finance-IIF,))
$(eval $(call buildpackage,perl-Finance-OFX,))
$(eval $(call buildpackage,perl-Finance-OFX-Parse-Simple,))
$(eval $(call buildpackage,perl-Furl,))
$(eval $(call buildpackage,perl-Future-Mojo,))
$(eval $(call buildpackage,perl-Gazelle,))
$(eval $(call buildpackage,perl-Geo-StreetAddress-US,))
$(eval $(call buildpackage,perl-Getopt-Usaginator,perl-Package-Pkg))
$(eval $(call buildpackage,perl-Gravatar-URL,))
$(eval $(call buildpackage,perl-Guard,))
$(eval $(call buildpackage,perl-Hash-SafeKeys,))
$(eval $(call buildpackage,perl-Hash-Util-FieldHash-Compat,perl-Tie-RefHash-Weak))
$(eval $(call buildpackage,perl-HTML-Form,))
$(eval $(call buildpackage,perl-HTML-FormatText-WithLinks,))
$(eval $(call buildpackage,perl-HTML-FormatText-WithLinks-AndTables,))
$(eval $(call buildpackage,perl-HTML-Lint,))
$(eval $(call buildpackage,perl-HTML-Scrubber,))
$(eval $(call buildpackage,perl-HTML-Scrubber-StripScripts,))
$(eval $(call buildpackage,perl-HTTP-Body,))
$(eval $(call buildpackage,perl-HTTP-CookieJar,))
$(eval $(call buildpackage,perl-HTTP-Exception,))
$(eval $(call buildpackage,perl-HTTP-Response-Encoding,))
$(eval $(call buildpackage,perl-HTTP-Response-Stringable,))
$(eval $(call buildpackage,perl-HTTP-Server-Simple,))
$(eval $(call buildpackage,perl-IO-AIO,))
$(eval $(call buildpackage,perl-IO-Async,))
$(eval $(call buildpackage,perl-IO-Interactive,))
$(eval $(call buildpackage,perl-IO-Socket-SSL,))
$(eval $(call buildpackage,perl-IPC-Signal,))
$(eval $(call buildpackage,perl-Kavorka,))
$(eval $(call buildpackage,perl-libnet,))
$(eval $(call buildpackage,perl-Lingua-EN-FindNumber,))
$(eval $(call buildpackage,perl-Lingua-EN-Inflect-Number,))
$(eval $(call buildpackage,perl-Lingua-EN-Inflect-Phrase,))
$(eval $(call buildpackage,perl-Lingua-EN-Number-IsOrdinal,))
$(eval $(call buildpackage,perl-Lingua-EN-Tagger,))
$(eval $(call buildpackage,perl-Lingua-EN-Words2Nums,))
$(eval $(call buildpackage,perl-Lingua-PT-Stemmer,))
$(eval $(call buildpackage,perl-Lingua-Stem,))
$(eval $(call buildpackage,perl-Lingua-Stem-Fr,))
$(eval $(call buildpackage,perl-Lingua-Stem-It,))
$(eval $(call buildpackage,perl-Lingua-Stem-Ru,))
$(eval $(call buildpackage,perl-Lingua-Stem-Snowball-Da,))
$(eval $(call buildpackage,perl-Locale-Codes,))
$(eval $(call buildpackage,perl-Locale-Currency-Format,))
$(eval $(call buildpackage,perl-Log-Dispatch-Binlog,))
$(eval $(call buildpackage,perl-Log-Dispatch-Config,))
$(eval $(call buildpackage,perl-Log-Dispatch-Config-TestLog,))
$(eval $(call buildpackage,perl-Log-Dispatch-Configurator-Any,))
$(eval $(call buildpackage,perl-Log-Dispatch-File-Rolling,))
$(eval $(call buildpackage,perl-Log-Syslog-Constants,))
$(eval $(call buildpackage,perl-Log-Syslog-Fast,))
$(eval $(call buildpackage,perl-Math-Random-ISAAC,))
$(eval $(call buildpackage,perl-Math-Round,))
$(eval $(call buildpackage,perl-Message-Stack,perl-MooseX-Aliases))
$(eval $(call buildpackage,perl-Message-Stack-Parser,))
$(eval $(call buildpackage,perl-Method-Signatures-Simple,))
$(eval $(call buildpackage,perl-Method-Signatures-Simple-ParseKeyword,))
$(eval $(call buildpackage,perl-Module-Install-ExtraTests,))
$(eval $(call buildpackage,perl-Module-Util,))
$(eval $(call buildpackage,perl-Moo,))
$(eval $(call buildpackage,perl-MooseX-Aliases,))
$(eval $(call buildpackage,perl-MooseX-ClassAttribute,))
$(eval $(call buildpackage,perl-MooseX-Clone,perl-Data-Visitor perl-Hash-Util-FieldHash-Compat))
$(eval $(call buildpackage,perl-MooseX-Declare,))
$(eval $(call buildpackage,perl-MooseX-LazyRequire,))
$(eval $(call buildpackage,perl-MooseX-Meta-TypeConstraint-ForceCoercion,))
$(eval $(call buildpackage,perl-MooseX-Method-Signatures,))
$(eval $(call buildpackage,perl-MooseX-NonMoose,))
$(eval $(call buildpackage,perl-MooseX-Params-Validate,))
$(eval $(call buildpackage,perl-MooseX-Singleton,))
$(eval $(call buildpackage,perl-MooseX-Storage,perl-String-RewritePrefix perl-Test-Deep-JSON perl-Test-Deep-Type))
$(eval $(call buildpackage,perl-MooseX-StrictConstructor,))
$(eval $(call buildpackage,perl-MooseX-Traits,))
$(eval $(call buildpackage,perl-MooseX-Types-DateTime,))
$(eval $(call buildpackage,perl-MooseX-Types-DateTime-MoreCoercions,))
$(eval $(call buildpackage,perl-MooseX-Types-Email,))
$(eval $(call buildpackage,perl-MooseX-Types-PortNumber,))
$(eval $(call buildpackage,perl-MooseX-Types-Structured,))
$(eval $(call buildpackage,perl-MooX-TypeTiny,))
$(eval $(call buildpackage,perl-MouseX-Types-Common,))
$(eval $(call buildpackage,perl-Mozilla-PublicSuffix,))
$(eval $(call buildpackage,perl-Net-Amazon-S3,))
$(eval $(call buildpackage,perl-Net-Amazon-Signature-V4,))
$(eval $(call buildpackage,perl-Net-APNS-Simple,))
$(eval $(call buildpackage,perl-Net-Dogstatsd,))
$(eval $(call buildpackage,perl-Net-Google-CalendarV3,))
$(eval $(call buildpackage,perl-Net-HTTPS-Any,))
$(eval $(call buildpackage,perl-Net-IDN-Encode,))
$(eval $(call buildpackage,perl-Net-OpenSRS,))
$(eval $(call buildpackage,perl-Net-Server-SS-PreFork,))
$(eval $(call buildpackage,perl-Net-Telnet,))
$(eval $(call buildpackage,perl-OpenAI-API,))
$(eval $(call buildpackage,perl-Package-Pkg,))
$(eval $(call buildpackage,perl-Parallel-Prefork,))
$(eval $(call buildpackage,perl-Parallel-Scoreboard,))
$(eval $(call buildpackage,perl-Parse-Keyword,perl-Devel-CallParser))
$(eval $(call buildpackage,perl-Parse-Method-Signatures,))
$(eval $(call buildpackage,perl-Path-Router,))
$(eval $(call buildpackage,perl-Paws,))
$(eval $(call buildpackage,perl-Perl6-Junction,))
$(eval $(call buildpackage,perl-Perl-Command,))
$(eval $(call buildpackage,perl-Perl-LanguageServer,))
$(eval $(call buildpackage,perl-Plack-App-Path-Router,))
$(eval $(call buildpackage,perl-Plack-App-Proxy,))
$(eval $(call buildpackage,perl-Plack-Middleware-Cache,))
$(eval $(call buildpackage,perl-Plack-Middleware-Deflater,))
$(eval $(call buildpackage,perl-Plack-Middleware-Header,))
$(eval $(call buildpackage,perl-Plack-Middleware-ProxyMap,))
$(eval $(call buildpackage,perl-Plack-Middleware-Rewrite,))
$(eval $(call buildpackage,perl-Plack-Middleware-ServerStatus-Lite,))
$(eval $(call buildpackage,perl-Plack-Middleware-Session,))
$(eval $(call buildpackage,perl-Plack-Session-Store-Redis,))
$(eval $(call buildpackage,perl-Plack-Session-Store-Transparent,))
$(eval $(call buildpackage,perl-POE-Component-Supervisor,))
$(eval $(call buildpackage,perl-Proc-Supervised-Convenience,))
$(eval $(call buildpackage,perl-Proc-Wait3,))
$(eval $(call buildpackage,perl-Protocol-HTTP2,))
$(eval $(call buildpackage,perl-Scalar-String,))
$(eval $(call buildpackage,perl-Server-Starter,))
$(eval $(call buildpackage,perl-Set-Infinite,))
$(eval $(call buildpackage,perl-Signal-Mask,))
$(eval $(call buildpackage,perl-Smart-Comments,))
$(eval $(call buildpackage,perl-Snowball-Norwegian,))
$(eval $(call buildpackage,perl-Snowball-Swedish,))
$(eval $(call buildpackage,perl-SQL-SplitStatement,))
$(eval $(call buildpackage,perl-SQL-Tokenizer,))
$(eval $(call buildpackage,perl-Starman,))
$(eval $(call buildpackage,perl-Statistics-Basic,))
$(eval $(call buildpackage,perl-String-Approx,))
$(eval $(call buildpackage,perl-String-CamelCase,))
$(eval $(call buildpackage,perl-String-RewritePrefix,))
$(eval $(call buildpackage,perl-String-ToIdentifier-EN,))
$(eval $(call buildpackage,perl-String-TtyLength,))
$(eval $(call buildpackage,perl-Sys-SigAction,))
$(eval $(call buildpackage,perl-Term-ProgressBar-Quiet,))
$(eval $(call buildpackage,perl-Term-ProgressBar-Simple,))
$(eval $(call buildpackage,perl-Test-Deep-JSON,perl-Exporter-Lite))
$(eval $(call buildpackage,perl-Test-Deep-Type,))
$(eval $(call buildpackage,perl-Test-Inter,))
$(eval $(call buildpackage,perl-Test-Mock-LWP,))
$(eval $(call buildpackage,perl-Test-Mock-LWP-Dispatch,))
$(eval $(call buildpackage,perl-Test-MockRandom,))
$(eval $(call buildpackage,perl-Test-MockTime-HiRes,))
$(eval $(call buildpackage,perl-Test-RequiresInternet,))
$(eval $(call buildpackage,perl-Test-Roo,))
$(eval $(call buildpackage,perl-Test-Script-Run,))
$(eval $(call buildpackage,perl-Test-TempDir,perl-Directory-Scratch))
$(eval $(call buildpackage,perl-Test-Timer,))
$(eval $(call buildpackage,perl-Test-WWW-Mechanize,))
$(eval $(call buildpackage,perl-Test-WWW-Mechanize-PSGI,))
$(eval $(call buildpackage,perl-Test-WWW-Selenium,))
$(eval $(call buildpackage,perl-Text-Brew,))
$(eval $(call buildpackage,perl-Text-Elide,))
$(eval $(call buildpackage,perl-Text-German,))
$(eval $(call buildpackage,perl-Text-Original,))
$(eval $(call buildpackage,perl-Text-Table-Tiny,))
$(eval $(call buildpackage,perl-Text-vCard,))
$(eval $(call buildpackage,perl-Text-vFile-asData,perl-Class-Accessor-Chained))
$(eval $(call buildpackage,perl-Thread-SigMask,))
$(eval $(call buildpackage,perl-Throwable,))
$(eval $(call buildpackage,perltidy,))
$(eval $(call buildpackage,perl-Tie-RefHash-Weak,))
$(eval $(call buildpackage,perl-Tie-ToObject,))
$(eval $(call buildpackage,perl-Time-Duration-Parse,))
$(eval $(call buildpackage,perl-Time-Warp,))
$(eval $(call buildpackage,perl-Tree-XPathEngine,))
$(eval $(call buildpackage,perl-Type-Tiny,))
$(eval $(call buildpackage,perl-URI-Template,))
$(eval $(call buildpackage,perl-URL-Encode,))
$(eval $(call buildpackage,perl-URL-Encode-XS,))
$(eval $(call buildpackage,perl-Validate-Tiny,))
$(eval $(call buildpackage,perl-VM-EC2,))
$(eval $(call buildpackage,perl-VM-EC2-Security-CredentialCache,))
$(eval $(call buildpackage,perl-WebService-Client,))
$(eval $(call buildpackage,perl-WWW-FCM-HTTP,))
$(eval $(call buildpackage,perl-WWW-JSON,))
$(eval $(call buildpackage,perl-WWW-Mechanize,))
$(eval $(call buildpackage,perl-WWW-Pastebin-PastebinCom-Create,))


all: $(ALL_PACKAGES)

clean:
	rm -fr $(REPO)/results .srpms/*.src.rpm

.PHONY: clean all $(patsubst ./%,%,$(shell find . -maxdepth 1 -type d -not -name '.*'))
