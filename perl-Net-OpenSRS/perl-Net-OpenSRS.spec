Name:           perl-Net-OpenSRS
Version:        0.06
Release:        1%{?dist}
Summary:        Net::OpenSRS Perl module
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Net-OpenSRS/
Source0:        https://www.cpan.org/authors/id/J/JE/JEF/Net-OpenSRS-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(Date::Calc)
BuildRequires:  perl(Digest::MD5)
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(LWP::UserAgent)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(XML::Simple)
Requires:       perl(Date::Calc)
Requires:       perl(Digest::MD5)
Requires:       perl(LWP::UserAgent)
Requires:       perl(XML::Simple)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
The client library distributed by OpenSRS can be difficult to integrate
into a custom environment, and their web interface becomes quickly tedious
with heavy usage. This is a clean and relatively quick library to perform
the most common API methods described in the OpenSRS API documentation.

%prep
%setup -q -n Net-OpenSRS-%{version}

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
* Fri Feb 03 2023 yaroslav@fedevych.name 0.06-1
- Specfile autogenerated by cpanspec 1.78.