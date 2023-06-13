Name:           perl-DataStruct-Flat
Version:        0.01
Release:        1%{?dist}
Summary:        Convert a data structure into a one level list of keys and values
License:        Apache Software License
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/DataStruct-Flat/
Source0:        https://www.cpan.org/authors/id/J/JL/JLMARTIN/DataStruct-Flat-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-generators
BuildRequires:  perl-interpreter
BuildRequires:  make
BuildRequires:  findutils
BuildRequires:  coreutils
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(Moo)
BuildRequires:  perl(Test::More)
Requires:       perl(Moo)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
This module converts a nested Perl data structure into a one level hash of
keys and values apt for human consumption.

%prep
%setup -q -n DataStruct-Flat-%{version}

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
%doc Changes cpanfile dist.ini LICENSE META.json
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jun 13 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 0.01-1
- Specfile autogenerated by cpanspec 1.78.