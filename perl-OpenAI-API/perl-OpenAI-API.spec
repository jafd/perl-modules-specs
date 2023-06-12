Name:           perl-OpenAI-API
Version:        0.37
Release:        1%{?dist}
Summary:        Perl interface to OpenAI API
License:        Artistic 2.0
Group:          Development/Libraries
URL:            http://search.cpan.org/dist/OpenAI-API/
Source0:        http://www.cpan.org/authors/id/N/NF/NFERRAZ/OpenAI-API-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  make
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  perl >= 0:5.010
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(IO::Async) >= 0.802
BuildRequires:  perl(JSON::MaybeXS) >= 1.004002
BuildRequires:  perl(LWP::Protocol::https) >= 6.10
BuildRequires:  perl(LWP::UserAgent) >= 6.47
BuildRequires:  perl(Moo) >= 2.005005
BuildRequires:  perl(namespace::clean) >= 0.27
BuildRequires:  perl(strictures) >= 2.000006
BuildRequires:  perl(Test::Deep)
BuildRequires:  perl(Test::Exception)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Test::RequiresInternet)
BuildRequires:  perl(Throwable) >= 1.001
BuildRequires:  perl(Types::Standard) >= 2.002001
Requires:       perl(IO::Async) >= 0.802
Requires:       perl(JSON::MaybeXS) >= 1.004002
Requires:       perl(LWP::Protocol::https) >= 6.10
Requires:       perl(LWP::UserAgent) >= 6.47
Requires:       perl(Moo) >= 2.005005
Requires:       perl(namespace::clean) >= 0.27
Requires:       perl(strictures) >= 2.000006
Requires:       perl(Throwable) >= 1.001
Requires:       perl(Types::Standard) >= 2.002001
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
OpenAI::API is a Perl module that provides an interface to the OpenAI API,
which allows you to generate text, translate languages, summarize text, and
perform other tasks using the language models developed by OpenAI.

%prep
%setup -q -n OpenAI-API-%{version}

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
%doc Changes META.json README.md
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Mon Jun 12 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 0.37-1
- Specfile autogenerated by cpanspec 1.78.
