Name:           perl-CGI-Application-Plugin-RunmodeParseKeyword
Version:        0.14
Release:        1%{?dist}
Summary:        Declare runmodes using Parse::Keyword
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/CGI-Application-Plugin-RunmodeParseKeyword/
Source0:        https://www.cpan.org/authors/id/R/RH/RHESA/CGI-Application-Plugin-RunmodeParseKeyword-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  make
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  perl(CGI) >= 4.21
BuildRequires:  perl(CGI::Application) >= 4.06
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(File::Spec)
BuildRequires:  perl(Parse::Keyword) >= 0.09
BuildRequires:  perl(Sub::Name) >= 0.26
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Attribute::Handlers)
Requires:       perl(CGI) >= 4.21
Requires:       perl(CGI::Application) >= 4.06
Requires:       perl(Parse::Keyword) >= 0.09
Requires:       perl(Sub::Name) >= 0.26
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
This module allows you to declare run modes with a simple keyword. It
provides method signatures similar to Method::Signatures::Simple.

%prep
%setup -q -n CGI-Application-Plugin-RunmodeParseKeyword-%{version}

%build
%{__perl} Makefile.PL INSTALLDIRS=vendor NO_PACKLIST=1
make %{?_smp_mflags}

%install
rm -rf %{buildroot}

make pure_install PERL_INSTALL_ROOT=%{buildroot}

# find %{buildroot} -type f -name .packlist -exec rm -f {} \;
# find %{buildroot} -depth -type d -exec rmdir {} 2>/dev/null \;

%{_fixperms} %{buildroot}/*

%check
make test

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%doc Changes dist.ini LICENSE META.json README
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Mon Jun 12 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 0.14-1
- Specfile autogenerated by cpanspec 1.78.
