Name:           perl-Finance-IIF
Version:        0.20.01
Release:        1%{?dist}
Summary:        Parse and create IIF files for QuickBooks
License:        CHECK(GPL+ or Artistic)
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Finance-IIF/
Source0:        https://www.cpan.org/authors/id/P/PL/PLOBBES/Finance-IIF-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(strict)
BuildRequires:  perl(warnings)
BuildRequires:  perl(File::Temp)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Carp)
BuildRequires:  perl(IO::File)
BuildRequires:  perl(ExtUtils::MakeMaker)
Requires:       perl(Carp)
Requires:       perl(strict)
Requires:       perl(warnings)
Requires:       perl(IO::File)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))


%{?perl_default_filter}

%description
Finance::IIF is a module for working with IIF files for QuickBooks in Perl.
This module reads IIF data records from a file passing each successive
record to the caller for processing.

%prep
%setup -q -n Finance-IIF-%{version}

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
* Thu Feb 02 2023 yaroslav@fedevych.name 0.20.01-1
- Specfile autogenerated by cpanspec 1.78.
