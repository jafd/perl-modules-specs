Name:           perl-Net-HTTPS-Any
Version:        0.12
Release:        100%{?dist}
Summary:        Simple HTTPS client
License:        CHECK(Distributable)
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Net-HTTPS-Any/
Source0:        https://www.cpan.org/authors/id/I/IV/IVAN/Net-HTTPS-Any-%{version}.tar.gz
Patch0:         Net-HTTPS-Any-0.12.99.patch
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make

BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Tie::IxHash)
BuildRequires:  perl(URI::Escape)
BuildRequires:  perl(Test::Pod) >= 1.22
BuildRequires:  perl(Test::Pod::Coverage) >= 1.08
BuildRequires:  perl(Test::More)
BuildRequires:  perl(LWP::UserAgent)
BuildRequires:  perl(LWP::Protocol::https)
BuildRequires:  perl(HTTP::Headers)
BuildRequires:  perl(HTTP::Request)
BuildRequires:  perl(URI)

Requires:       perl(LWP::UserAgent)
Requires:       perl(LWP::Protocol::https)
Requires:       perl(HTTP::Headers)
Requires:       perl(HTTP::Request)
Requires:       perl(URI)
Requires:       perl(Tie::IxHash)
Requires:       perl(URI::Escape)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
This is a wrapper around LWP providing a simple interface for the
use of Business::OnlinePayment.

%prep
%setup -q -n Net-HTTPS-Any-%{version}
%patch0 -p1

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
%doc Changes META.json README
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jan 31 2023 yaroslav@fedevych.name 0.12-100
- Pass Content-Length to POST requests

* Tue Jan 31 2023 yaroslav@fedevych.name 0.12.99-1
- Forked to use LWP so that the tests pass and all modern servers
  can be talked to.

* Tue Jan 31 2023 yaroslav@fedevych.name 0.12-1
- Specfile autogenerated by cpanspec 1.78.
