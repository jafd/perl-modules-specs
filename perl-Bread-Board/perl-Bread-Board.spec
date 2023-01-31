Name:           perl-Bread-Board
Version:        0.37
Release:        1%{?dist}
Summary:        Solderless way to wire up your application components
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Bread-Board/
Source0:        https://www.cpan.org/authors/id/Y/YA/YANICK/Bread-Board-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter >= 0:5.006
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(Carp)
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(File::Spec)
BuildRequires:  perl(FindBin)
BuildRequires:  perl(IO::Handle)
BuildRequires:  perl(IPC::Open3)
BuildRequires:  perl(Module::Runtime)
BuildRequires:  perl(Moose)
BuildRequires:  perl(Moose::Exporter) >= 2.1200
BuildRequires:  perl(Moose::Role)
BuildRequires:  perl(Moose::Util)
BuildRequires:  perl(Moose::Util::TypeConstraints)
BuildRequires:  perl(MooseX::Clone) >= 0.05
BuildRequires:  perl(MooseX::Params::Validate) >= 0.14
BuildRequires:  perl(overload)
BuildRequires:  perl(Scalar::Util)
BuildRequires:  perl(strict)
BuildRequires:  perl(Test::Fatal)
BuildRequires:  perl(Test::Moose)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Test::Requires)
BuildRequires:  perl(Try::Tiny)
BuildRequires:  perl(warnings)
Requires:       perl(Carp)
Requires:       perl(Module::Runtime)
Requires:       perl(Moose)
Requires:       perl(Moose::Exporter) >= 2.1200
Requires:       perl(Moose::Role)
Requires:       perl(Moose::Util)
Requires:       perl(Moose::Util::TypeConstraints)
Requires:       perl(MooseX::Clone) >= 0.05
Requires:       perl(MooseX::Params::Validate) >= 0.14
Requires:       perl(overload)
Requires:       perl(Scalar::Util)
Requires:       perl(strict)
Requires:       perl(Try::Tiny)
Requires:       perl(warnings)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
Bread::Board is an inversion of control framework with a focus on
dependency injection and lifecycle management. It's goal is to help you
write more decoupled objects and components by removing the need for you to
manually wire those objects/components together.

%prep
%setup -q -n Bread-Board-%{version}

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
%doc Changes CODE_OF_CONDUCT.md CONTRIBUTORS cpanfile doap.xml LICENSE META.json README.mkdn
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jan 31 2023 yaroslav@fedevych.name 0.37-1
- Specfile autogenerated by cpanspec 1.78.
