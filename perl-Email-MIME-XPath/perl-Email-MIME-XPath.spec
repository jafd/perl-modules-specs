Name:           perl-Email-MIME-XPath
Version:        0.005
Release:        1%{?dist}
Summary:        Access MIME documents via XPath queries
License:        GPL+ or Artistic
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Email-MIME-XPath/
Source0:        https://www.cpan.org/authors/id/H/HD/HDP/Email-MIME-XPath-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-interpreter
BuildRequires:  perl-generators
BuildRequires:  coreutils
BuildRequires:  findutils
BuildRequires:  make
BuildRequires:  perl(Email::MIME) >= 1.851
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(Scalar::Util)
BuildRequires:  perl(Sub::Exporter) >= 0.972
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Test::use::ok)
BuildRequires:  perl(Tree::XPathEngine) >= 0.05
Requires:       perl(Email::MIME) >= 1.851
Requires:       perl(Scalar::Util)
Requires:       perl(Sub::Exporter) >= 0.972
Requires:       perl(Test::More)
Requires:       perl(Test::use::ok)
Requires:       perl(Tree::XPathEngine) >= 0.05
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%{?perl_default_filter}

%description
Dealing with MIME messages can be complicated. Frequently you want to
display certain parts of a message, while alluding to (linking,
summarizing, whatever) other parts in a way that makes them easy to get to
later. Sometimes this can go several levels deep, if you're dealing with
forwarded messages, bounces, or reports of some kind.

%prep
%setup -q -n Email-MIME-XPath-%{version}

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
%doc Changes
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Thu Feb 02 2023 yaroslav@fedevych.name 0.005-1
- Specfile autogenerated by cpanspec 1.78.
