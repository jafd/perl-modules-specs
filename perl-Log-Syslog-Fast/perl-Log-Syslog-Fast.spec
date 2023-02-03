Name:           perl-Log-Syslog-Fast
Version:        0.67
Release:        1%{?dist}
Summary:        Perl extension for sending syslog messages over TCP, UDP, or UNIX sockets with minimal CPU overhead
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Log-Syslog-Fast/
Source0:        https://www.cpan.org/authors/id/A/AT/ATHOMASON/Log-Syslog-Fast-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(IO::Socket::IP) >= 0.19
BuildRequires:  perl(Log::Syslog::Constants) >= 1.01
BuildRequires:  perl-interpreter
BuildRequires:  perl-generators
BuildRequires:  perl-devel
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  gcc
BuildRequires:  make
BuildRequires:  perl(Carp)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(File::Temp)
BuildRequires:  perl(IO::Select)
BuildRequires:  perl(Exporter)
BuildRequires:  perl(Test::Builder::Module)
BuildRequires:  perl(Sys::Hostname)
Requires:       perl(Carp)
Requires:       perl(Exporter)
Requires:       perl(Sys::Hostname);
Requires:       perl(IO::Socket::IP) >= 0.19
Requires:       perl(Log::Syslog::Constants) >= 1.01
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
This module sends syslog messages over a network socket. It works like
Sys::Syslog in setlogsock's 'udp', 'tcp', or 'unix' modes, but without the
significant CPU overhead of that module when used for high-volume logging.
Use of this specialized module is only recommended if 1) you must use
network syslog as a messaging transport but 2) need to minimize the time
spent in the logger.

%prep
%setup -q -n Log-Syslog-Fast-%{version}

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
%doc Changes Log-Syslog-Fast.spec META.json README
%{perl_vendorarch}/auto/*
%{perl_vendorarch}/Log*
%{_mandir}/man3/*

%changelog
* Fri Feb 03 2023 yaroslav@fedevych.name 0.67-1
- Specfile autogenerated by cpanspec 1.78.
