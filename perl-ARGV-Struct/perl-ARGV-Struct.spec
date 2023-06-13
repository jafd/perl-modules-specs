Name:           perl-ARGV-Struct
Version:        0.06
Release:        1%{?dist}
Summary:        Parse complex data structures passed in ARGV
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/ARGV-Struct/
Source0:        https://www.cpan.org/authors/id/J/JL/JLMARTIN/ARGV-Struct-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-generators
BuildRequires:  perl-interpreter
BuildRequires:  make
BuildRequires:  findutils
BuildRequires:  coreutils
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(Moo)
BuildRequires:  perl(Test::Exception)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Types::Standard)
Requires:       perl(Moo)
Requires:       perl(Types::Standard)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
Have you ever felt that you need something different than Getopt?

%prep
%setup -q -n ARGV-Struct-%{version}

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
%doc Changes cpanfile dist.ini LICENSE Makefile META.json README.md
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jun 13 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 0.06-1
- Specfile autogenerated by cpanspec 1.78.
