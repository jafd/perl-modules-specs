Name:           perl-Paws
Version:        0.44
Release:        1%{?dist}
Summary:        Perl SDK for AWS (Amazon Web Services) APIs
License:        Apache Software License
Group:          Development/Libraries
URL:            https://search.cpan.org/dist/Paws/
Source0:        https://www.cpan.org/authors/id/J/JL/JLMARTIN/Paws-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch
BuildRequires:  perl-generators
BuildRequires:  perl-interpreter
BuildRequires:  make
BuildRequires:  findutils
BuildRequires:  coreutils
BuildRequires:  perl(ARGV::Struct)
BuildRequires:  perl(Browser::Open)
BuildRequires:  perl(Class::Unload)
BuildRequires:  perl(Config::AWS)
BuildRequires:  perl(Data::Compare)
BuildRequires:  perl(DataStruct::Flat)
BuildRequires:  perl(DateTime)
BuildRequires:  perl(DateTime::Format::ISO8601)
BuildRequires:  perl(Digest::SHA)
BuildRequires:  perl(File::HomeDir)
BuildRequires:  perl(File::Slurper)
BuildRequires:  perl(Getopt::Long)
BuildRequires:  perl(HTTP::Tiny)
BuildRequires:  perl(IO::Socket::SSL)
BuildRequires:  perl(JSON::MaybeXS)
BuildRequires:  perl(Module::Build)
BuildRequires:  perl(Module::Find)
BuildRequires:  perl(Moose)
BuildRequires:  perl(MooseX::ClassAttribute)
BuildRequires:  perl(MooseX::Getopt)
BuildRequires:  perl(Net::Amazon::Signature::V4)
BuildRequires:  perl(Path::Class)
BuildRequires:  perl(Path::Tiny) >= 0.017
BuildRequires:  perl(String::CRC32)
BuildRequires:  perl(Test::Exception)
BuildRequires:  perl(Test::More)
BuildRequires:  perl(Test::Timer)
BuildRequires:  perl(Test::Warnings)
BuildRequires:  perl(Throwable::Error)
BuildRequires:  perl(URI)
BuildRequires:  perl(URI::Template) >= 0.23
BuildRequires:  perl(URL::Encode)
BuildRequires:  perl(URL::Encode::XS)
BuildRequires:  perl(XML::Simple) >= 2.21
BuildRequires:  perl(YAML)
Requires:       perl(ARGV::Struct)
Requires:       perl(Browser::Open)
Requires:       perl(Config::AWS)
Requires:       perl(Data::Compare)
Requires:       perl(DataStruct::Flat)
Requires:       perl(DateTime)
Requires:       perl(DateTime::Format::ISO8601)
Requires:       perl(Digest::SHA)
Requires:       perl(File::HomeDir)
Requires:       perl(Getopt::Long)
Requires:       perl(HTTP::Tiny)
Requires:       perl(IO::Socket::SSL)
Requires:       perl(JSON::MaybeXS)
Requires:       perl(Module::Find)
Requires:       perl(Moose)
Requires:       perl(MooseX::ClassAttribute)
Requires:       perl(MooseX::Getopt)
Requires:       perl(Net::Amazon::Signature::V4)
Requires:       perl(Path::Tiny) >= 0.017
Requires:       perl(String::CRC32)
Requires:       perl(Throwable::Error)
Requires:       perl(URI)
Requires:       perl(URI::Template) >= 0.23
Requires:       perl(URL::Encode)
Requires:       perl(URL::Encode::XS)
Requires:       perl(XML::Simple) >= 2.21
Requires:       perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
Paws is an attempt to develop an always up-to-date SDK that covers all
possible AWS services.

%prep
%setup -q -n Paws-%{version}

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
%doc benchmarks Changes cpanfile dist.ini examples LICENSE META.json README.md script
%{perl_vendorlib}/*
%{_mandir}/man3/*

%changelog
* Tue Jun 13 2023 Yaroslav Fedevych <yaroslav@fedevych.name> 0.44-1
- Specfile autogenerated by cpanspec 1.78.
