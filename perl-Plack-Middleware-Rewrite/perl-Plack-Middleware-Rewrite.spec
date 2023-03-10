Name:           perl-Plack-Middleware-Rewrite
Version:        2.102
Release:        1%{?dist}
Summary:        Mod_rewrite for Plack
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Plack-Middleware-Rewrite/
Source0:        https://www.cpan.org/authors/id/A/AR/ARISTOTLE/Plack-Middleware-Rewrite-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl >= 0:5.006
BuildRequires:  perl-interpreter
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(HTTP::Request::Common)
BuildRequires:  perl(overload)
BuildRequires:  perl(Plack) >= 0.9942
BuildRequires:  perl(Plack::Builder)
BuildRequires:  perl(Plack::Middleware)
BuildRequires:  perl(Plack::Request)
BuildRequires:  perl(Plack::Test)
BuildRequires:  perl(Plack::Util)
BuildRequires:  perl(Plack::Util::Accessor)
BuildRequires:  perl(Test::More)
Requires:       perl(overload)
Requires:       perl(Plack) >= 0.9942
Requires:       perl(Plack::Middleware)
Requires:       perl(Plack::Request)
Requires:       perl(Plack::Util)
Requires:       perl(Plack::Util::Accessor)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
This middleware provides a convenient way to modify requests in flight
in Plack apps. Rewrite rules are simply written in Perl, which means
everything that can be done with mod_rewrite can be done with this
middleware much more intuitively (if in syntactically wordier ways).
Its primary purpose is rewriting paths, but almost anything is possible
very easily.

%prep
%setup -q -n Plack-Middleware-Rewrite-%{version}

%build
export PERL_USE_UNSAFE_INC=1
%{__perl} Makefile.PL INSTALLDIRS=vendor
make %{?_smp_mflags}

%install
export PERL_USE_UNSAFE_INC=1
rm -rf %{buildroot}

make pure_install PERL_INSTALL_ROOT=%{buildroot}

find %{buildroot} -type f -name .packlist -exec rm -f {} \;
find %{buildroot} -depth -type d -exec rmdir {} 2>/dev/null \;

%{_fixperms} %{buildroot}/*

%check
export PERL_USE_UNSAFE_INC=1
make test

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%doc Changes LICENSE META.json README
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Fri Feb 03 2023 yaroslav@fedevych.name 2.102-1
- Specfile autogenerated by cpanspec 1.78.
