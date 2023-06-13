Name:           perl-URI-Template
Version:        0.24
Release:        1%{?dist}
Summary:        Object for handling URI templates (RFC 6570)
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/URI-Template/
Source0:        https://www.cpan.org/authors/id/B/BR/BRICAS/URI-Template-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  make
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  perl-generators
BuildRequires:  perl-interpreter
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Unicode::Normalize)
BuildRequires:  perl(URI)
BuildRequires:  perl(URI::Escape)
BuildRequires:  perl(FindBin)
Requires:       perl(Unicode::Normalize)
Requires:       perl(URI)
Requires:       perl(URI::Escape)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))
Requires:       perl(FindBin)

%description
This module provides a wrapper around URI templates as described in RFC
6570: http://tools.ietf.org/html/rfc6570.

%prep
%setup -q -n URI-Template-%{version}

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
%doc Changes README
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jun 13 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 0.24-1
- Specfile autogenerated by cpanspec 1.78.
