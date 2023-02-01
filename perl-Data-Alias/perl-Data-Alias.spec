Name:		perl-Data-Alias
Version:	1.28
Release:	2%{?dist}
Summary:	Comprehensive set of aliasing operations
License:	GPL+ or Artistic
Group:		Development/Libraries
URL:		https://search.cpan.org/dist/Data-Alias/
Source0:	https://cpan.metacpan.org/authors/id/X/XM/XMATH/Data-Alias-%{version}.tar.gz
# Module Build
BuildRequires:	coreutils
BuildRequires:	findutils
BuildRequires:	gcc
BuildRequires:	make
BuildRequires:	perl >= 3:5.8.1
BuildRequires:	perl-devel
BuildRequires:	perl-generators
BuildRequires:	perl(Config)
BuildRequires:	perl(Cwd)
BuildRequires:	perl(ExtUtils::MakeMaker)
BuildRequires:	perl(ExtUtils::Manifest)
BuildRequires:	perl(File::Basename)
BuildRequires:	perl(File::Find)
BuildRequires:	perl(File::Path)
BuildRequires:	perl(File::Spec)
BuildRequires:	perl(FileHandle)
BuildRequires:	perl(FindBin)
BuildRequires:	perl(vars)
BuildRequires:	perl(YAML)
# Module Runtime
BuildRequires:	perl(base)
BuildRequires:	perl(DynaLoader)
BuildRequires:	perl(Exporter)
BuildRequires:	perl(strict)
BuildRequires:	perl(warnings)
# Test Suite
BuildRequires:	perl(Carp)
BuildRequires:	perl(lib)
# Optional Tests
BuildRequires:	perl(Devel::CallParser)
BuildRequires:	perl(Filter::Util::Call)
BuildRequires:	perl(Scalar::Util)
BuildRequires:	perl(Test::Pod) >= 1.00
BuildRequires:	perl(Test::Pod::Coverage)
BuildRequires:	perl(threads)
BuildRequires:	perl(threads::shared)
# Runtime
Requires:	perl(:MODULE_COMPAT_%(eval "`perl -V:version`"; echo $version))

# Don't "provide" private Perl libs
%{?perl_default_filter}

%description
Aliasing is the phenomenon where two different expressions actually refer
to the same thing. Modifying one will modify the other, and if you take a
reference to both, the two values are the same.

%prep
%setup -q -n Data-Alias-%{version}

%build
perl Makefile.PL INSTALLDIRS=vendor OPTIMIZE="%{optflags}"
make %{?_smp_mflags}

%install
make pure_install DESTDIR=%{buildroot}
find %{buildroot} -type f -name .packlist -exec rm -f {} ';'
find %{buildroot} -type f -name '*.bs' -size 0 -exec rm -f {} ';'
%{_fixperms} %{buildroot}

%check
make test

%files
%doc README Changes
%{perl_vendorarch}/auto/Data/
%{perl_vendorarch}/Data/
%{_mandir}/man3/Data::Alias.3*

%changelog
* Thu Feb 04 2016 Fedora Release Engineering <releng@fedoraproject.org> - 1.20-2
- Rebuilt for https://fedoraproject.org/wiki/Fedora_24_Mass_Rebuild

* Thu Oct 22 2015 Paul Howarth <paul@city-fan.org> - 1.20-1
- Update to 1.20
  - Avoid some C undefined behaviour from unsequenced side effects that in
    practice bit when using a newer gcc (4.9 rather than 4.7) with the parser
    token stack change in Perl 5.21.9
  - Add doc note advising users to prefer the core aliasing facility on
    Perl 5.22

* Wed Oct 21 2015 Paul Howarth <paul@city-fan.org> - 1.19-1
- Update to 1.19
  - Update for new stricture on op_last in Perl 5.21.2
  - Update for the parser's PL_expect changes in Perl 5.21.4
  - Update for op_private stricture in Perl 5.21.4
  - Update for sub references directly in stash in Perl 5.21.4
  - Update for IS_PADGV()'s limited visibility in Perl 5.21.4
  - Update for increased specialness of OP_PUSHMARK in Perl 5.21.6
  - Update for distinct PADNAMELIST type in Perl 5.21.7
  - Update for multideref optimisation in Perl 5.21.7, by a disgusting hack
    that depends on a flaw in the optimisation (which may disappear in the
    future) and which disables the optimisation entirely
  - Add MYMETA.json to .gitignore
- Classify buildreqs by usage
- Explicitly BR: perl-devel, needed for EXTERN.h

* Thu Jun 18 2015 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 1.18-6
- Rebuilt for https://fedoraproject.org/wiki/Fedora_23_Mass_Rebuild

* Sat Jun 06 2015 Jitka Plesnikova <jplesnik@redhat.com> - 1.18-5
- Perl 5.22 rebuild

* Wed Aug 27 2014 Jitka Plesnikova <jplesnik@redhat.com> - 1.18-4
- Perl 5.20 rebuild

* Sun Aug 17 2014 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 1.18-3
- Rebuilt for https://fedoraproject.org/wiki/Fedora_21_22_Mass_Rebuild

* Sat Jun 07 2014 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 1.18-2
- Rebuilt for https://fedoraproject.org/wiki/Fedora_21_Mass_Rebuild

* Sat Sep 21 2013 Paul Howarth <paul@city-fan.org> - 1.18-1
- Update to 1.18:
  - Bugfix: store peep chain link reliably under threads
  - Update tests for Perl 5.19.4's removal of the special treatment of aliased
    undef in arrays
  - In documentation, switch to consistent use of British English spellings
  - Documentation typo fix

* Sun Aug  4 2013 Paul Howarth <paul@city-fan.org> - 1.17-1
- Update to 1.17:
  - Bugfix: correct the dtrace-related macro squashing for Perls prior
    to 5.13.8, where the macros had the wrong number of parameters and
    prevented compilation
  - Bugfix: use core's PL_no_localize_ref string constant as data string
    rather than format string
  - Update to handle the new padrange op type in Perl 5.17.6
  - Update to handle the new op allocation mechanism in Perl 5.17.2
  - Clarify and expand documentation around list-like assignments
  - Clarify documentation of deref() regarding lvalueness
  - Remove the bulk of the documentation from the README file

* Sat Aug 03 2013 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 1.16-6
- Rebuilt for https://fedoraproject.org/wiki/Fedora_20_Mass_Rebuild

* Sat Jul 20 2013 Petr Pisar <ppisar@redhat.com> - 1.16-5
- Perl 5.18 rebuild

* Thu Feb 14 2013 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 1.16-4
- Rebuilt for https://fedoraproject.org/wiki/Fedora_19_Mass_Rebuild

* Fri Jul 20 2012 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 1.16-3
- Rebuilt for https://fedoraproject.org/wiki/Fedora_18_Mass_Rebuild

* Tue Jun 12 2012 Petr Pisar <ppisar@redhat.com> - 1.16-2
- Perl 5.16 rebuild

* Wed Apr 25 2012 Paul Howarth <paul@city-fan.org> - 1.16-1
- Update to 1.16
  - Use supported API to put destructor calls on the save stack (the
    unsupported way used before was wrong for 64-bit systems on perl 5.13.1
    and later)
  - Document the behaviour of "alias return" in more detail
  - Convert .cvsignore to .gitignore
- BR: perl(base), perl(Test::Pod) and perl(Test::Pod::Coverage)
- Use search.cpan.org source URL
- Don't use macros for commands
- Don't need to remove empty directories from buildroot
- Make %%files list more explicit
- Use tabs

* Fri Jan 13 2012 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 1.15-4
- Rebuilt for https://fedoraproject.org/wiki/Fedora_17_Mass_Rebuild

* Fri Jun 24 2011 Marcela Mašláňová <mmaslano@redhat.com> - 1.15-3
- Perl mass rebuild

* Fri Jun 24 2011 Marcela Mašláňová <mmaslano@redhat.com> - 1.15-2
- Perl mass rebuild

* Fri Jun 24 2011 Marcela Mašláňová <mmaslano@redhat.com> - 1.15-1
- Update to 1.15, which fixes issues with systemtap

* Mon Jun 20 2011 Marcela Mašláňová <mmaslano@redhat.com> - 1.12-2
- Perl mass rebuild

* Thu Apr 14 2011 Marcela Mašláňová <mmaslano@redhat.com> - 1.12-1
- Specfile autogenerated by cpanspec 1.79 for new release; this package was
  resurrected for 5.12.x

* Mon Dec  7 2009 Stepan Kasal <skasal@redhat.com> - 1.07-6
- Rebuild against perl 5.10.1

* Sat Jul 25 2009 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 1.07-5
- Rebuilt for https://fedoraproject.org/wiki/Fedora_12_Mass_Rebuild

* Thu Feb 26 2009 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 1.07-4
- Rebuilt for https://fedoraproject.org/wiki/Fedora_11_Mass_Rebuild

* Thu Mar 06 2008 Tom "spot" Callaway <tcallawa@redhat.com> - 1.07-3
- Rebuild for new perl

* Mon Feb 18 2008 Fedora Release Engineering <rel-eng@fedoraproject.org> - 1.07-2
- Autorebuild for GCC 4.3

* Mon Nov 05 2007 Chris Weyl <cweyl@alumni.drew.edu> - 1.07-1
- Update to 1.07

* Tue Aug 21 2007 Chris Weyl <cweyl@alumni.drew.edu> - 1.06-2
- Bump

* Fri Aug 10 2007 Chris Weyl <cweyl@alumni.drew.edu> - 1.06-1
- Update to 1.06
- License tag: GPL -> GPL+

* Fri Jun 01 2007 Chris Weyl <cweyl@alumni.drew.edu> - 1.05-1
- Update to 1.05

* Fri May 04 2007 Chris Weyl <cweyl@alumni.drew.edu> - 1.04-1
- Update to 1.04
- Add t/ to %%doc
- Perl splittage BR's added

* Mon Mar 19 2007 Chris Weyl <cweyl@alumni.drew.edu> - 1.03-1
- Update to 1.03

* Mon Feb 19 2007 Chris Weyl <cweyl@alumni.drew.edu> - 1.02-1
- Update to 1.02

* Tue Oct 03 2006 Chris Weyl <cweyl@alumni.drew.edu> - 1.01-1
- Update to 1.01

* Thu Aug 31 2006 Chris Weyl <cweyl@alumni.drew.edu> - 1.0-3
- Bump for mass rebuild

* Thu Aug 17 2006 Chris Weyl <cweyl@alumni.drew.edu> - 1.0-2
- Bump for build & release

* Wed Aug 16 2006 Chris Weyl <cweyl@alumni.drew.edu> - 1.0-1
- Specfile autogenerated by cpanspec 1.68
- Initial spec file for F-E
