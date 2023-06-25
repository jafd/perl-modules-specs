Name:           perl-Hash-SafeKeys
Version:        0.04
Release:        1%{?dist}
Summary:        Get hash contents without resetting each iterator
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Hash-SafeKeys/
Source0:        https://www.cpan.org/authors/id/M/MO/MOB/Hash-SafeKeys-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildRequires:  perl-interpreter
BuildRequires:  perl-generators
BuildRequires:  make
BuildRequires:  perl-devel
BuildRequires:  gcc
BuildRequires:  findutils
BuildRequires:  coreutils
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(Test::More)
Requires:       perl(Test::More)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
Every hash variable in Perl has its own internal iterator, accessed by the
builtin each, keys, and values functions. The iterator is also implicitly
used whenever the hash is evaluated in list context. The iterator is
"reset" whenever keys or values is called on a hash, including the implicit
calls when the hash is evaluated in list context. That makes it dangerous
to do certain hash operations inside a while ... each loop:

%prep
%setup -q -n Hash-SafeKeys-%{version}

%build
%{__perl} Makefile.PL INSTALLDIRS=vendor OPTIMIZE="%{optflags}"
make %{?_smp_mflags}

%install
rm -rf %{buildroot}

make pure_install PERL_INSTALL_ROOT=%{buildroot}

find %{buildroot} -type f -name .packlist -exec rm -f {} \;
find %{buildroot} -type f -name '*.bs' -size 0 -exec rm -f {} \;
find %{buildroot} -depth -type d -exec rmdir {} 2>/dev/null \;

%{_fixperms} %{buildroot}/*

%check
make test

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%doc Changes META.json README
%{perl_vendorarch}/auto/*
%{perl_vendorarch}/Hash*
%{_mandir}/man3/*

%changelog
* Tue Jun 13 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 0.04-1
- Specfile autogenerated by cpanspec 1.78.