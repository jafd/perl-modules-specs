Name:           perl-Text-Elide
Version:        0.0.3
Release:        1%{?dist}
Summary:        Perl module with simple "word" aware string truncating routine
License:        CHECK(GPL+ or Artistic)
Group:          Development/Libraries
URL:            http://search.cpan.org/dist/Text-Elide/
Source0:        http://www.cpan.org/authors/id/A/AW/AWRIGLEY/Text-Elide-v%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(List::Util)
BuildRequires:  perl(Readonly)
BuildRequires:  perl(Smart::Comments)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(version)
Requires:       perl(List::Util)
Requires:       perl(Readonly)
Requires:       perl(Smart::Comments)
Requires:       perl(Test::More)
Requires:       perl(version)
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
This is a simple module that exports a single function - elide - which
takes a string and a length and truncates the string to at most the length
given. It does this is a way which is "word" aware, so that you always end
up with a string that only has complete words, and the elipsis string is
only inserted if there is room for it. A word here simply means non-
whitespace (\S+). The default elipsis string is " ...". The only exception
to the complete word condition is if there is only one word (i.e. no
whitespace).

%prep
%setup -q -n Text-Elide-v%{version}

%build
%{__perl} Makefile.PL INSTALLDIRS=vendor
make %{?_smp_mflags}

%install
rm -rf $RPM_BUILD_ROOT

make pure_install PERL_INSTALL_ROOT=$RPM_BUILD_ROOT

find $RPM_BUILD_ROOT -type f -name .packlist -exec rm -f {} \;
find $RPM_BUILD_ROOT -depth -type d -exec rmdir {} 2>/dev/null \;

%{_fixperms} $RPM_BUILD_ROOT/*

%check
make test

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
%doc Changes README
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Mon Jan 30 2023 yaroslav@fedevych.name 0.0.3-1
- Specfile autogenerated by cpanspec 1.78.
