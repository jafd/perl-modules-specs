Name:           perl-Validate-Tiny
Version:        1.6
Release:        1%{?dist}
Summary:        Minimalistic data validation
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Validate-Tiny/
Source0:        https://www.cpan.org/authors/id/M/MI/MINIMAL/Validate-Tiny-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(Carp)
BuildRequires:  perl(Exporter)
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(List::MoreUtils)
BuildRequires:  perl(strict)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(warnings)
Requires:       perl(Carp)
Requires:       perl(Exporter)
Requires:       perl(List::MoreUtils)
Requires:       perl(strict)
Requires:       perl(warnings)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
This module provides a simple, light and minimalistic way of validating
user input. Except perl core modules and some test modules it has no other
dependencies, which is why it does not implement any complicated checks and
filters such as email and credit card matching. The basic idea of this
module is to provide the validation functionality, and leave it up to the
user to write their own data filters and checks. If you need a complete
data validation solution that comes with many ready features, I recommend
you to take a look at Data::FormValidator. If your validation logic is not
too complicated or your form is relatively short, this module is a decent
candidate for your project.

%prep
%setup -q -n Validate-Tiny-%{version}

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
%doc Changes dist.ini LICENSE README.md
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Fri Feb 03 2023 yaroslav@fedevych.name 1.6-1
- Specfile autogenerated by cpanspec 1.78.
