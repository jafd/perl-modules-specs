Name:           perl-Business-BalancedPayments
Version:        1.0600
Release:        1%{?dist}
Summary:        Balanced Payments API bindings
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Business-BalancedPayments/
Source0:        https://www.cpan.org/authors/id/I/IR/IRONCAMEL/Business-BalancedPayments-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  make
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  perl-generators
BuildRequires:  perl-interpreter >= 0:5.006
BuildRequires:  perl(Carp)
BuildRequires:  perl(Exporter)
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(File::Spec)
BuildRequires:  perl(HTTP::Request::Common)
BuildRequires:  perl(HTTP::Response)
BuildRequires:  perl(IO::Handle)
BuildRequires:  perl(IPC::Open3)
BuildRequires:  perl(JSON)
BuildRequires:  perl(Method::Signatures)
BuildRequires:  perl(Moo)
BuildRequires:  perl(strict)
BuildRequires:  perl(Test::Mock::LWP::Dispatch)
BuildRequires:  perl(Test::Modern)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(warnings)
BuildRequires:  perl(WebService::Client) >= 0.0001
BuildRequires:  perl(blib)
Requires:       perl(Carp)
Requires:       perl(HTTP::Request::Common)
Requires:       perl(JSON)
Requires:       perl(Method::Signatures)
Requires:       perl(Moo)
Requires:       perl(WebService::Client) >= 0.0001
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
This module provides bindings for the Balanced API.

%prep
%setup -q -n Business-BalancedPayments-%{version}

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
%doc CHANGES dist.ini LICENSE README
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jun 13 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 1.0600-1
- Specfile autogenerated by cpanspec 1.78.
