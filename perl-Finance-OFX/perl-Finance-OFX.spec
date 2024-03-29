Name:           perl-Finance-OFX
Version:        2
Release:        2%{?dist}
Summary:        OFX client implementation
License:        BSD
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Finance-OFX/
Source0:        https://www.cpan.org/modules/by-module/Finance/Finance-OFX-%{version}a.tar.gz
Patch0:         perl-Finance-OFX-read-file-fix.patch
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter >= 0:5.006
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(Data::GUID)
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(HTML::Parser)
BuildRequires:  perl(HTTP::Date)
BuildRequires:  perl(LWP)
BuildRequires:  perl(Test::More)
Requires:       perl(Data::GUID)
Requires:       perl(HTML::Parser)
Requires:       perl(HTTP::Date)
Requires:       perl(LWP)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
Finance::OFX provides several convenience functions for interacting with
OFX servers.

%prep
%setup -q -n Finance-OFX-%{version}
%patch -P 0 -p1

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
%doc Changes META.json README
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jun 27 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 2-2
- Use a non-deprecated form of %patch

* Thu Feb 02 2023 yaroslav@fedevych.name 2-1
- Specfile autogenerated by cpanspec 1.78.
