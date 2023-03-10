Name:           perl-DBIx-Class-Storage-TxnEndHook
Version:        0.01
Release:        1%{?dist}
Summary:        Transaction hook provider for DBIx::Class
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/DBIx-Class-Storage-TxnEndHook/
Source0:        https://www.cpan.org/authors/id/S/SO/SOH/DBIx-Class-Storage-TxnEndHook-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter >= 0:5.008005
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  perl(DBD::SQLite)
BuildRequires:  perl(DBI)
BuildRequires:  perl(DBIx::Class)
BuildRequires:  perl(Module::Build)
BuildRequires:  perl(Test::Fatal)
BuildRequires:  perl(Test::More) >= 0.98
BuildRequires:  perl(Try::Tiny)
Requires:       perl(DBIx::Class)
Requires:       perl(Try::Tiny)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
DBIx::Class::Storage::TxnEndHook is transaction hook provider for
DBIx::Class. This module is porting from DBIx::TransactionManager::EndHook.

%prep
%setup -q -n DBIx-Class-Storage-TxnEndHook-%{version}

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
%doc Changes cpanfile LICENSE META.json minil.toml README.md
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Thu Feb 02 2023 yaroslav@fedevych.name 0.01-1
- Specfile autogenerated by cpanspec 1.78.
