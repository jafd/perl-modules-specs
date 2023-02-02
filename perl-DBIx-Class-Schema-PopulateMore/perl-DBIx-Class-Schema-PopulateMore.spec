Name:           perl-DBIx-Class-Schema-PopulateMore
Version:        0.19
Release:        1%{?dist}
Summary:        Enhanced populate method
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/DBIx-Class-Schema-PopulateMore/
Source0:        https://www.cpan.org/authors/id/J/JJ/JJNAPIORK/DBIx-Class-Schema-PopulateMore-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter >= 1:5.8.5
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(DBD::SQLite)
BuildRequires:  perl(DateTime::Format::SQLite) >= 0.11
BuildRequires:  perl(DateTimeX::Easy) >= 0.089
BuildRequires:  perl(DBIx::Class) >= 0.08127
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(File::Find)
BuildRequires:  perl(List::MoreUtils) >= 0.30
BuildRequires:  perl(Module::Pluggable) >= 3.9
BuildRequires:  perl(Moo) >= 1.004006
BuildRequires:  perl(MooX::HandlesVia) >= 0.001005
BuildRequires:  perl(parent) >= 0.224
BuildRequires:  perl(Path::Class) >= 0.23
BuildRequires:  perl(Scalar::Util) >= 1.35
BuildRequires:  perl(SQL::Translator) >= 0.11020
BuildRequires:  perl(Test::More) >= 0.98
BuildRequires:  perl(Type::Tiny) >= 0.042
BuildRequires:  perl(YAML::Tiny) >= 1.48
Requires:       perl(DateTimeX::Easy) >= 0.089
Requires:       perl(List::MoreUtils) >= 0.30
Requires:       perl(Module::Pluggable) >= 3.9
Requires:       perl(Moo) >= 1.004006
Requires:       perl(MooX::HandlesVia) >= 0.001005
Requires:       perl(parent) >= 0.224
Requires:       perl(Scalar::Util) >= 1.35
Requires:       perl(Type::Tiny) >= 0.042
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
This is a DBIx::Class::Schema component that provides an enhanced version
of the builtin method "populate" in DBIx::Class::Schema. What it does is
make it easier when you are doing a first time setup and need to insert a
bunch of rows, like the first time you deploy a new database, or after you
update it.

%prep
%setup -q -n DBIx-Class-Schema-PopulateMore-%{version}

%build
export PERL_USE_UNSAFE_INC=1
%{__perl} Makefile.PL INSTALLDIRS=vendor
make %{?_smp_mflags}

%install
rm -rf %{buildroot}

export PERL_USE_UNSAFE_INC=1
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
%doc Changes LICENSE README.mkdn
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Thu Feb 02 2023 yaroslav@fedevych.name 0.19-1
- Specfile autogenerated by cpanspec 1.78.
