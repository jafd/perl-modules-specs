Name:           perl-Data-Currency
Version:        0.0501
Release:        1%{?dist}
Summary:        VERSION
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Data-Currency/
Source0:        https://www.cpan.org/authors/id/D/DI/DICHI/Data-Currency-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter >= 0:5.006001
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(Class::Accessor::Grouped)
BuildRequires:  perl(Class::Inspector)
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(Finance::Currency::Convert::WebserviceX)
BuildRequires:  perl(Locale::Currency)
BuildRequires:  perl(Locale::Currency::Format)
BuildRequires:  perl(Pod::Coverage::TrustPod)
BuildRequires:  perl(Scalar::Util)
BuildRequires:  perl(Test::Exception)
BuildRequires:  perl(Test::MockObject)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Test::Perl::Critic)
Requires:       perl(Class::Accessor::Grouped)
Requires:       perl(Class::Inspector)
Requires:       perl(Finance::Currency::Convert::WebserviceX)
Requires:       perl(Locale::Currency)
Requires:       perl(Locale::Currency::Format)
Requires:       perl(Scalar::Util)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
The Data::Currency module provides basic currency formatting and
conversion:

%prep
%setup -q -n Data-Currency-%{version}

%build
%{__perl} Makefile.PL INSTALLDIRS=vendor
make %{?_smp_mflags}

%install
rm -rf %{buildroot}

make pure_install PERL_INSTALL_ROOT=%{buildroot}

find %{buildroot} -type f -name .packlist -exec rm -f {} \;
find %{buildroot} -depth -type d -exec rmdir {} 2>/dev/null \;

%{_fixperms} %{buildroot}/*

%check
make test

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%doc Changelog dist.ini LICENSE README README.mkdn TODO
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jan 31 2023 yaroslav@fedevych.name 0.0501-1
- Intentionally downgrade

* Tue Jan 31 2023 yaroslav@fedevych.name 0.06000-1
- Specfile autogenerated by cpanspec 1.78.
