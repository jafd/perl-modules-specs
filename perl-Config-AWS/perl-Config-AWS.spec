Name:           perl-Config-AWS
Version:        0.12
Release:        1%{?dist}
Summary:        Parse AWS config files
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Config-AWS/
Source0:        https://www.cpan.org/authors/id/J/JJ/JJATRIA/Config-AWS-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  make
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  perl-interpreter
BuildRequires:  perl-generators
BuildRequires:  perl(Exporter::Tiny) >= 1
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(File::Spec)
BuildRequires:  perl(Module::Build)
BuildRequires:  perl(Path::Tiny) >= 0.076
BuildRequires:  perl(Ref::Util)
BuildRequires:  perl(Test2::Tools::Spec)
BuildRequires:  perl(Test2::V0)
BuildRequires:  perl(Test::More)
Requires:       perl(Exporter::Tiny) >= 1
Requires:       perl(Path::Tiny) >= 0.076
Requires:       perl(Ref::Util)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
Config::AWS is a small distribution with generic methods to correctly parse
the contents of config files for the AWS CLI client as described in the AWS
documentation.

%prep
%setup -q -n Config-AWS-%{version}

%build
%{__perl} Build.PL --installdirs=vendor
./Build

%install
rm -rf %{buildroot}

./Build install --destdir=%{buildroot} --create_packlist=0
find %{buildroot} -depth -type d -exec rmdir {} 2>/dev/null \;

%{_fixperms} %{buildroot}/*

%check
./Build test

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%doc Changes LICENSE META.json README.md
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jun 13 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 0.12-1
- Specfile autogenerated by cpanspec 1.78.
