Name:           perl-Kavorka
Version:        0.039
Release:        1%{?dist}
Summary:        Function signatures with the lure of the animal
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Kavorka/
Source0:        https://www.cpan.org/authors/id/T/TO/TOBYINK/Kavorka-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  make
BuildRequires:  findutils
BuildRequires:  coreutils
BuildRequires:  perl-interpreter >= 0:5.014
BuildRequires:  perl-generators
BuildRequires:  perl(Exporter::Tiny) >= 0.026
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(match::simple)
BuildRequires:  perl(Module::Runtime)
BuildRequires:  perl(Moo) >= 1.003001
BuildRequires:  perl(namespace::sweep) >= 0.006
BuildRequires:  perl(PadWalker)
BuildRequires:  perl(Parse::Keyword) >= 0.06
BuildRequires:  perl(Return::Type) >= 0.004
BuildRequires:  perl(Sub::Util)
BuildRequires:  perl(Test::Fatal)
BuildRequires:  perl(Test::More) >= 0.96
BuildRequires:  perl(Test::Requires)
BuildRequires:  perl(Type::Parser) >= 0.032
BuildRequires:  perl(Type::Registry) >= 0.032
BuildRequires:  perl(Types::Standard) >= 0.032
BuildRequires:  perl(Type::Tiny::XS) >= 0.010
BuildRequires:  perl(Type::Utils) >= 0.032
Requires:       perl(Exporter::Tiny) >= 0.026
Requires:       perl(match::simple)
Requires:       perl(Module::Runtime)
Requires:       perl(Moo) >= 1.003001
Requires:       perl(namespace::sweep) >= 0.006
Requires:       perl(PadWalker)
Requires:       perl(Parse::Keyword) >= 0.06
Requires:       perl(Return::Type) >= 0.004
Requires:       perl(Sub::Util)
Requires:       perl(Type::Parser) >= 0.032
Requires:       perl(Type::Registry) >= 0.032
Requires:       perl(Types::Standard) >= 0.032
Requires:       perl(Type::Tiny::XS) >= 0.010
Requires:       perl(Type::Utils) >= 0.032
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
Kavorka provides fun and method keywords for declaring functions and
methods. It uses Perl 5.14's keyword API, so should work more reliably than
source filters or Devel::Declare-based modules.

%prep
%setup -q -n Kavorka-%{version}

%build
%{__perl} Makefile.PL INSTALLDIRS=vendor
make %{?_smp_mflags}

%install
rm -rf $RPM_BUILD_ROOT

make pure_install PERL_INSTALL_ROOT=$RPM_BUILD_ROOT

find $RPM_BUILD_ROOT -type f -name .packlist -exec rm -f {} \;
find $RPM_BUILD_ROOT -depth -type d -exec rmdir {} 2>/dev/null \;

%{_fixperms} $RPM_BUILD_ROOT/*

%check
make test

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
%doc Changes COPYRIGHT CREDITS dist.ini doap.ttl LICENSE META.json README TODO
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Mon Jan 30 2023 yaroslav@fedevych.name 0.039-1
- Specfile autogenerated by cpanspec 1.78.
