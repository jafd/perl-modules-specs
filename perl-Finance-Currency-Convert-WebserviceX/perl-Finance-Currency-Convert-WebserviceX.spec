Name:           perl-Finance-Currency-Convert-WebserviceX
Version:        0.07001
Release:        1%{?dist}
Summary:        Lightweight currency conversion using WebserviceX.NET
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Finance-Currency-Convert-WebserviceX/
Source0:        https://www.cpan.org/authors/id/C/CL/CLACO/Finance-Currency-Convert-WebserviceX-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter >= 1:5.6.1
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(HTTP::Response)
BuildRequires:  perl(LWP)
BuildRequires:  perl(Memoize)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Module::Install)
Requires:       perl(HTTP::Response)
Requires:       perl(LWP)
Requires:       perl(Memoize)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
This is a lightweight module to do currency conversion using the Currency
Converter web service at http://www.webservicex.net/.

%prep
%setup -q -n Finance-Currency-Convert-WebserviceX-%{version}

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
%doc Changes LICENSE README Todo
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jan 31 2023 yaroslav@fedevych.name 0.07001-1
- Specfile autogenerated by cpanspec 1.78.
