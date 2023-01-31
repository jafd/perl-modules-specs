Name:           perl-DBIx-Class-InflateColumn-Currency
Version:        0.02005
Release:        1%{?dist}
Summary:        Auto-create Data::Currency objects from columns
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/DBIx-Class-InflateColumn-Currency/
Source0:        https://www.cpan.org/authors/id/C/CL/CLACO/DBIx-Class-InflateColumn-Currency-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter >= 1:5.8.1
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(Class::Accessor::Grouped) >= 0.03
BuildRequires:  perl(Data::Currency) >= 0.03
BuildRequires:  perl(DBD::SQLite) >= 1.11
BuildRequires:  perl(DBIx::Class) >= 0.07005
BuildRequires:  perl(ExtUtils::MakeMaker)
Requires:       perl(Data::Currency) >= 0.03
Requires:       perl(DBIx::Class) >= 0.07005
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
This module inflates/deflates designated columns into Data::Currency
objects.

%prep
%setup -q -n DBIx-Class-InflateColumn-Currency-%{version}

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
* Tue Jan 31 2023 yaroslav@fedevych.name 0.02005-1
- Specfile autogenerated by cpanspec 1.78.