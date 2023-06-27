
ALL_PACKAGES += percona-toolkit

.srpms/percona-toolkit-3.5.3-1.el9.src.rpm: percona-toolkit/percona-toolkit.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/percona-toolkit-3.5.3-1.el9/percona-toolkit-3.5.3-1.el9.noarch.rpm : .srpms/percona-toolkit-3.5.3-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/percona-toolkit/percona-toolkit.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/percona-toolkit-3.5.3-1.el9/percona-toolkit-3.5.3-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

percona-toolkit:  .stamps/percona-toolkit/percona-toolkit.spec.built-stamp
 
ALL_PACKAGES += perl-Algorithm-Loops

.srpms/perl-Algorithm-Loops-1.032-17.el9.src.rpm: perl-Algorithm-Loops/perl-Algorithm-Loops.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Algorithm-Loops-1.032-17.el9/perl-Algorithm-Loops-1.032-17.el9.noarch.rpm : .srpms/perl-Algorithm-Loops-1.032-17.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Algorithm-Loops/perl-Algorithm-Loops.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Algorithm-Loops-1.032-17.el9/perl-Algorithm-Loops-1.032-17.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Algorithm-Loops:  .stamps/perl-Algorithm-Loops/perl-Algorithm-Loops.spec.built-stamp
 
ALL_PACKAGES += perl-AnyEvent-AIO

.srpms/perl-AnyEvent-AIO-1.1-38.el9.src.rpm: perl-AnyEvent-AIO/perl-AnyEvent-AIO.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-AnyEvent-AIO-1.1-38.el9/perl-AnyEvent-AIO-1.1-38.el9.noarch.rpm : .srpms/perl-AnyEvent-AIO-1.1-38.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-AnyEvent-AIO/perl-AnyEvent-AIO.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-AnyEvent-AIO-1.1-38.el9/perl-AnyEvent-AIO-1.1-38.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-AnyEvent-AIO: perl-IO-AIO .stamps/perl-AnyEvent-AIO/perl-AnyEvent-AIO.spec.built-stamp
 
ALL_PACKAGES += perl-AnyEvent-CacheDNS

.srpms/perl-AnyEvent-CacheDNS-0.08-25.el9.src.rpm: perl-AnyEvent-CacheDNS/perl-AnyEvent-CacheDNS.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-AnyEvent-CacheDNS-0.08-25.el9/perl-AnyEvent-CacheDNS-0.08-25.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-AnyEvent-CacheDNS-0.08-25.el9/perl-AnyEvent-CacheDNS-tests-0.08-25.el9.noarch.rpm : .srpms/perl-AnyEvent-CacheDNS-0.08-25.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-AnyEvent-CacheDNS/perl-AnyEvent-CacheDNS.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-AnyEvent-CacheDNS-0.08-25.el9/perl-AnyEvent-CacheDNS-0.08-25.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-AnyEvent-CacheDNS-0.08-25.el9/perl-AnyEvent-CacheDNS-tests-0.08-25.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-AnyEvent-CacheDNS:  .stamps/perl-AnyEvent-CacheDNS/perl-AnyEvent-CacheDNS.spec.built-stamp
 
ALL_PACKAGES += perl-App-Nopaste

.srpms/perl-App-Nopaste-1.013-12.el9.src.rpm: perl-App-Nopaste/perl-App-Nopaste.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-App-Nopaste-1.013-12.el9/perl-App-Nopaste-1.013-12.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-App-Nopaste-1.013-12.el9/nopaste-1.013-12.el9.noarch.rpm : .srpms/perl-App-Nopaste-1.013-12.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-App-Nopaste/perl-App-Nopaste.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-App-Nopaste-1.013-12.el9/perl-App-Nopaste-1.013-12.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-App-Nopaste-1.013-12.el9/nopaste-1.013-12.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-App-Nopaste:  .stamps/perl-App-Nopaste/perl-App-Nopaste.spec.built-stamp
 
ALL_PACKAGES += perl-ARGV-Struct

.srpms/perl-ARGV-Struct-0.06-1.el9.src.rpm: perl-ARGV-Struct/perl-ARGV-Struct.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-ARGV-Struct-0.06-1.el9/perl-ARGV-Struct-0.06-1.el9.noarch.rpm : .srpms/perl-ARGV-Struct-0.06-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-ARGV-Struct/perl-ARGV-Struct.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-ARGV-Struct-0.06-1.el9/perl-ARGV-Struct-0.06-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-ARGV-Struct:  .stamps/perl-ARGV-Struct/perl-ARGV-Struct.spec.built-stamp
 
ALL_PACKAGES += perl-Astro-Sunrise

.srpms/perl-Astro-Sunrise-0.99-1.el9.src.rpm: perl-Astro-Sunrise/perl-Astro-Sunrise.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Astro-Sunrise-0.99-1.el9/perl-Astro-Sunrise-0.99-1.el9.noarch.rpm : .srpms/perl-Astro-Sunrise-0.99-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Astro-Sunrise/perl-Astro-Sunrise.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Astro-Sunrise-0.99-1.el9/perl-Astro-Sunrise-0.99-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Astro-Sunrise:  .stamps/perl-Astro-Sunrise/perl-Astro-Sunrise.spec.built-stamp
 
ALL_PACKAGES += perl-Authen-DecHpwd

.srpms/perl-Authen-DecHpwd-2.007-18.el9.src.rpm: perl-Authen-DecHpwd/perl-Authen-DecHpwd.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Authen-DecHpwd-2.007-18.el9/perl-Authen-DecHpwd-2.007-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Authen-DecHpwd-2.007-18.el9/perl-Authen-DecHpwd-debuginfo-2.007-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Authen-DecHpwd-2.007-18.el9/perl-Authen-DecHpwd-debugsource-2.007-18.el9.x86_64.rpm : .srpms/perl-Authen-DecHpwd-2.007-18.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Authen-DecHpwd/perl-Authen-DecHpwd.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Authen-DecHpwd-2.007-18.el9/perl-Authen-DecHpwd-2.007-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Authen-DecHpwd-2.007-18.el9/perl-Authen-DecHpwd-debuginfo-2.007-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Authen-DecHpwd-2.007-18.el9/perl-Authen-DecHpwd-debugsource-2.007-18.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Authen-DecHpwd: perl-Data-Integer perl-Scalar-String .stamps/perl-Authen-DecHpwd/perl-Authen-DecHpwd.spec.built-stamp
 
ALL_PACKAGES += perl-Authen-Passphrase

.srpms/perl-Authen-Passphrase-0.008-17.el9.src.rpm: perl-Authen-Passphrase/perl-Authen-Passphrase.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Authen-Passphrase-0.008-17.el9/perl-Authen-Passphrase-0.008-17.el9.noarch.rpm : .srpms/perl-Authen-Passphrase-0.008-17.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Authen-Passphrase/perl-Authen-Passphrase.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Authen-Passphrase-0.008-17.el9/perl-Authen-Passphrase-0.008-17.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Authen-Passphrase: perl-Authen-DecHpwd perl-Crypt-MySQL perl-Crypt-UnixCrypt_XS .stamps/perl-Authen-Passphrase/perl-Authen-Passphrase.spec.built-stamp
 
ALL_PACKAGES += perl-B-Compiling

.srpms/perl-B-Compiling-0.06-27.el9.src.rpm: perl-B-Compiling/perl-B-Compiling.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-B-Compiling-0.06-27.el9/perl-B-Compiling-0.06-27.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-B-Compiling-0.06-27.el9/perl-B-Compiling-debuginfo-0.06-27.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-B-Compiling-0.06-27.el9/perl-B-Compiling-debugsource-0.06-27.el9.x86_64.rpm : .srpms/perl-B-Compiling-0.06-27.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-B-Compiling/perl-B-Compiling.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-B-Compiling-0.06-27.el9/perl-B-Compiling-0.06-27.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-B-Compiling-0.06-27.el9/perl-B-Compiling-debuginfo-0.06-27.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-B-Compiling-0.06-27.el9/perl-B-Compiling-debugsource-0.06-27.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-B-Compiling:  .stamps/perl-B-Compiling/perl-B-Compiling.spec.built-stamp
 
ALL_PACKAGES += perl-Beanstalk-Client

.srpms/perl-Beanstalk-Client-1.07-29.el9.src.rpm: perl-Beanstalk-Client/perl-Beanstalk-Client.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Beanstalk-Client-1.07-29.el9/perl-Beanstalk-Client-1.07-29.el9.noarch.rpm : .srpms/perl-Beanstalk-Client-1.07-29.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Beanstalk-Client/perl-Beanstalk-Client.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Beanstalk-Client-1.07-29.el9/perl-Beanstalk-Client-1.07-29.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Beanstalk-Client:  .stamps/perl-Beanstalk-Client/perl-Beanstalk-Client.spec.built-stamp
 
ALL_PACKAGES += perl-Bread-Board

.srpms/perl-Bread-Board-0.37-1.el9.src.rpm: perl-Bread-Board/perl-Bread-Board.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Bread-Board-0.37-1.el9/perl-Bread-Board-0.37-1.el9.noarch.rpm : .srpms/perl-Bread-Board-0.37-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Bread-Board/perl-Bread-Board.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Bread-Board-0.37-1.el9/perl-Bread-Board-0.37-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Bread-Board: perl-MooseX-Clone perl-MooseX-Params-Validate .stamps/perl-Bread-Board/perl-Bread-Board.spec.built-stamp
 
ALL_PACKAGES += perl-Business-AuthorizeNet-CIM

.srpms/perl-Business-AuthorizeNet-CIM-0.17-1.el9.src.rpm: perl-Business-AuthorizeNet-CIM/perl-Business-AuthorizeNet-CIM.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Business-AuthorizeNet-CIM-0.17-1.el9/perl-Business-AuthorizeNet-CIM-0.17-1.el9.noarch.rpm : .srpms/perl-Business-AuthorizeNet-CIM-0.17-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Business-AuthorizeNet-CIM/perl-Business-AuthorizeNet-CIM.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Business-AuthorizeNet-CIM-0.17-1.el9/perl-Business-AuthorizeNet-CIM-0.17-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Business-AuthorizeNet-CIM:  .stamps/perl-Business-AuthorizeNet-CIM/perl-Business-AuthorizeNet-CIM.spec.built-stamp
 
ALL_PACKAGES += perl-Business-OnlinePayment

.srpms/perl-Business-OnlinePayment-3.05-1.el9.src.rpm: perl-Business-OnlinePayment/perl-Business-OnlinePayment.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Business-OnlinePayment-3.05-1.el9/perl-Business-OnlinePayment-3.05-1.el9.noarch.rpm : .srpms/perl-Business-OnlinePayment-3.05-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Business-OnlinePayment/perl-Business-OnlinePayment.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Business-OnlinePayment-3.05-1.el9/perl-Business-OnlinePayment-3.05-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Business-OnlinePayment: perl-Net-HTTPS-Any .stamps/perl-Business-OnlinePayment/perl-Business-OnlinePayment.spec.built-stamp
 
ALL_PACKAGES += perl-Business-OnlinePayment-AuthorizeNet

.srpms/perl-Business-OnlinePayment-AuthorizeNet-3.23-1.el9.src.rpm: perl-Business-OnlinePayment-AuthorizeNet/perl-Business-OnlinePayment-AuthorizeNet.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Business-OnlinePayment-AuthorizeNet-3.23-1.el9/perl-Business-OnlinePayment-AuthorizeNet-3.23-1.el9.noarch.rpm : .srpms/perl-Business-OnlinePayment-AuthorizeNet-3.23-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Business-OnlinePayment-AuthorizeNet/perl-Business-OnlinePayment-AuthorizeNet.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Business-OnlinePayment-AuthorizeNet-3.23-1.el9/perl-Business-OnlinePayment-AuthorizeNet-3.23-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Business-OnlinePayment-AuthorizeNet: perl-Business-OnlinePayment perl-Net-HTTPS-Any .stamps/perl-Business-OnlinePayment-AuthorizeNet/perl-Business-OnlinePayment-AuthorizeNet.spec.built-stamp
 
ALL_PACKAGES += perl-Business-PayPal-API

.srpms/perl-Business-PayPal-API-0.77-17.el9.src.rpm: perl-Business-PayPal-API/perl-Business-PayPal-API.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Business-PayPal-API-0.77-17.el9/perl-Business-PayPal-API-0.77-17.el9.noarch.rpm : .srpms/perl-Business-PayPal-API-0.77-17.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Business-PayPal-API/perl-Business-PayPal-API.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Business-PayPal-API-0.77-17.el9/perl-Business-PayPal-API-0.77-17.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Business-PayPal-API:  .stamps/perl-Business-PayPal-API/perl-Business-PayPal-API.spec.built-stamp
 
ALL_PACKAGES += perl-Business-PayPal-NVP

.srpms/perl-Business-PayPal-NVP-1.10-2.el9.src.rpm: perl-Business-PayPal-NVP/perl-Business-PayPal-NVP.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Business-PayPal-NVP-1.10-2.el9/perl-Business-PayPal-NVP-1.10-2.el9.noarch.rpm : .srpms/perl-Business-PayPal-NVP-1.10-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Business-PayPal-NVP/perl-Business-PayPal-NVP.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Business-PayPal-NVP-1.10-2.el9/perl-Business-PayPal-NVP-1.10-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Business-PayPal-NVP:  .stamps/perl-Business-PayPal-NVP/perl-Business-PayPal-NVP.spec.built-stamp
 
ALL_PACKAGES += perl-Bytes-Random-Secure

.srpms/perl-Bytes-Random-Secure-0.29-23.el9.src.rpm: perl-Bytes-Random-Secure/perl-Bytes-Random-Secure.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Bytes-Random-Secure-0.29-23.el9/perl-Bytes-Random-Secure-0.29-23.el9.noarch.rpm : .srpms/perl-Bytes-Random-Secure-0.29-23.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Bytes-Random-Secure/perl-Bytes-Random-Secure.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Bytes-Random-Secure-0.29-23.el9/perl-Bytes-Random-Secure-0.29-23.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Bytes-Random-Secure: perl-Crypt-Random-Seed perl-Math-Random-ISAAC perl-Statistics-Basic .stamps/perl-Bytes-Random-Secure/perl-Bytes-Random-Secure.spec.built-stamp
 
ALL_PACKAGES += perl-Carp-Always

.srpms/perl-Carp-Always-0.16-15.el9.src.rpm: perl-Carp-Always/perl-Carp-Always.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Carp-Always-0.16-15.el9/perl-Carp-Always-0.16-15.el9.noarch.rpm : .srpms/perl-Carp-Always-0.16-15.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Carp-Always/perl-Carp-Always.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Carp-Always-0.16-15.el9/perl-Carp-Always-0.16-15.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Carp-Always:  .stamps/perl-Carp-Always/perl-Carp-Always.spec.built-stamp
 
ALL_PACKAGES += perl-Carp-Assert-More

.srpms/perl-Carp-Assert-More-2.3.0-1.el9.src.rpm: perl-Carp-Assert-More/perl-Carp-Assert-More.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Carp-Assert-More-2.3.0-1.el9/perl-Carp-Assert-More-2.3.0-1.el9.noarch.rpm : .srpms/perl-Carp-Assert-More-2.3.0-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Carp-Assert-More/perl-Carp-Assert-More.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Carp-Assert-More-2.3.0-1.el9/perl-Carp-Assert-More-2.3.0-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Carp-Assert-More:  .stamps/perl-Carp-Assert-More/perl-Carp-Assert-More.spec.built-stamp
 
ALL_PACKAGES += perl-Carp-Clan-Share

.srpms/perl-Carp-Clan-Share-0.013-40.el9.src.rpm: perl-Carp-Clan-Share/perl-Carp-Clan-Share.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Carp-Clan-Share-0.013-40.el9/perl-Carp-Clan-Share-0.013-40.el9.noarch.rpm : .srpms/perl-Carp-Clan-Share-0.013-40.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Carp-Clan-Share/perl-Carp-Clan-Share.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Carp-Clan-Share-0.013-40.el9/perl-Carp-Clan-Share-0.013-40.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Carp-Clan-Share:  .stamps/perl-Carp-Clan-Share/perl-Carp-Clan-Share.spec.built-stamp
 
ALL_PACKAGES += perl-CGI-Application

.srpms/perl-CGI-Application-4.61-16.el9.src.rpm: perl-CGI-Application/perl-CGI-Application.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-4.61-16.el9/perl-CGI-Application-4.61-16.el9.noarch.rpm : .srpms/perl-CGI-Application-4.61-16.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-CGI-Application/perl-CGI-Application.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-4.61-16.el9/perl-CGI-Application-4.61-16.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-CGI-Application: perl-CGI-PSGI perl-Class-ISA .stamps/perl-CGI-Application/perl-CGI-Application.spec.built-stamp
 
ALL_PACKAGES += perl-CGI-Application-Dispatch

.srpms/perl-CGI-Application-Dispatch-3.12-30.el9.src.rpm: perl-CGI-Application-Dispatch/perl-CGI-Application-Dispatch.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Dispatch-3.12-30.el9/perl-CGI-Application-Dispatch-3.12-30.el9.noarch.rpm : .srpms/perl-CGI-Application-Dispatch-3.12-30.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-CGI-Application-Dispatch/perl-CGI-Application-Dispatch.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Dispatch-3.12-30.el9/perl-CGI-Application-Dispatch-3.12-30.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-CGI-Application-Dispatch: perl-CGI-Application perl-CGI-PSGI perl-Exception-Class-TryCatch perl-HTTP-Exception .stamps/perl-CGI-Application-Dispatch/perl-CGI-Application-Dispatch.spec.built-stamp
 
ALL_PACKAGES += perl-CGI-Application-Plugin-AutoRunmode

.srpms/perl-CGI-Application-Plugin-AutoRunmode-0.18-34.el9.src.rpm: perl-CGI-Application-Plugin-AutoRunmode/perl-CGI-Application-Plugin-AutoRunmode.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Plugin-AutoRunmode-0.18-34.el9/perl-CGI-Application-Plugin-AutoRunmode-0.18-34.el9.noarch.rpm : .srpms/perl-CGI-Application-Plugin-AutoRunmode-0.18-34.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-CGI-Application-Plugin-AutoRunmode/perl-CGI-Application-Plugin-AutoRunmode.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Plugin-AutoRunmode-0.18-34.el9/perl-CGI-Application-Plugin-AutoRunmode-0.18-34.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-CGI-Application-Plugin-AutoRunmode: perl-CGI-Application .stamps/perl-CGI-Application-Plugin-AutoRunmode/perl-CGI-Application-Plugin-AutoRunmode.spec.built-stamp
 
ALL_PACKAGES += perl-CGI-Application-Plugin-DBH

.srpms/perl-CGI-Application-Plugin-DBH-4.04-26.el9.src.rpm: perl-CGI-Application-Plugin-DBH/perl-CGI-Application-Plugin-DBH.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Plugin-DBH-4.04-26.el9/perl-CGI-Application-Plugin-DBH-4.04-26.el9.noarch.rpm : .srpms/perl-CGI-Application-Plugin-DBH-4.04-26.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-CGI-Application-Plugin-DBH/perl-CGI-Application-Plugin-DBH.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Plugin-DBH-4.04-26.el9/perl-CGI-Application-Plugin-DBH-4.04-26.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-CGI-Application-Plugin-DBH: perl-CGI-Application perl-DBD-Mock .stamps/perl-CGI-Application-Plugin-DBH/perl-CGI-Application-Plugin-DBH.spec.built-stamp
 
ALL_PACKAGES += perl-CGI-Application-Plugin-Redirect

.srpms/perl-CGI-Application-Plugin-Redirect-1.00-38.el9.src.rpm: perl-CGI-Application-Plugin-Redirect/perl-CGI-Application-Plugin-Redirect.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Plugin-Redirect-1.00-38.el9/perl-CGI-Application-Plugin-Redirect-1.00-38.el9.noarch.rpm : .srpms/perl-CGI-Application-Plugin-Redirect-1.00-38.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-CGI-Application-Plugin-Redirect/perl-CGI-Application-Plugin-Redirect.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Plugin-Redirect-1.00-38.el9/perl-CGI-Application-Plugin-Redirect-1.00-38.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-CGI-Application-Plugin-Redirect: perl-CGI-Application .stamps/perl-CGI-Application-Plugin-Redirect/perl-CGI-Application-Plugin-Redirect.spec.built-stamp
 
ALL_PACKAGES += perl-CGI-Application-Plugin-RunmodeParseKeyword

.srpms/perl-CGI-Application-Plugin-RunmodeParseKeyword-0.14-1.el9.src.rpm: perl-CGI-Application-Plugin-RunmodeParseKeyword/perl-CGI-Application-Plugin-RunmodeParseKeyword.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Plugin-RunmodeParseKeyword-0.14-1.el9/perl-CGI-Application-Plugin-RunmodeParseKeyword-0.14-1.el9.noarch.rpm : .srpms/perl-CGI-Application-Plugin-RunmodeParseKeyword-0.14-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-CGI-Application-Plugin-RunmodeParseKeyword/perl-CGI-Application-Plugin-RunmodeParseKeyword.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-CGI-Application-Plugin-RunmodeParseKeyword-0.14-1.el9/perl-CGI-Application-Plugin-RunmodeParseKeyword-0.14-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-CGI-Application-Plugin-RunmodeParseKeyword: perl-CGI-Application perl-Parse-Keyword .stamps/perl-CGI-Application-Plugin-RunmodeParseKeyword/perl-CGI-Application-Plugin-RunmodeParseKeyword.spec.built-stamp
 
ALL_PACKAGES += perl-CGI-PSGI

.srpms/perl-CGI-PSGI-0.15-34.el9.src.rpm: perl-CGI-PSGI/perl-CGI-PSGI.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-CGI-PSGI-0.15-34.el9/perl-CGI-PSGI-0.15-34.el9.noarch.rpm : .srpms/perl-CGI-PSGI-0.15-34.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-CGI-PSGI/perl-CGI-PSGI.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-CGI-PSGI-0.15-34.el9/perl-CGI-PSGI-0.15-34.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-CGI-PSGI:  .stamps/perl-CGI-PSGI/perl-CGI-PSGI.spec.built-stamp
 
ALL_PACKAGES += perl-ClamAV-Client

.srpms/perl-ClamAV-Client-0.11-30.el9.src.rpm: perl-ClamAV-Client/perl-ClamAV-Client.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-ClamAV-Client-0.11-30.el9/perl-ClamAV-Client-0.11-30.el9.noarch.rpm : .srpms/perl-ClamAV-Client-0.11-30.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-ClamAV-Client/perl-ClamAV-Client.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-ClamAV-Client-0.11-30.el9/perl-ClamAV-Client-0.11-30.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-ClamAV-Client:  .stamps/perl-ClamAV-Client/perl-ClamAV-Client.spec.built-stamp
 
ALL_PACKAGES += perl-Class-Accessor-Chained

.srpms/perl-Class-Accessor-Chained-0.01-48.el9.src.rpm: perl-Class-Accessor-Chained/perl-Class-Accessor-Chained.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Class-Accessor-Chained-0.01-48.el9/perl-Class-Accessor-Chained-0.01-48.el9.noarch.rpm : .srpms/perl-Class-Accessor-Chained-0.01-48.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Class-Accessor-Chained/perl-Class-Accessor-Chained.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Class-Accessor-Chained-0.01-48.el9/perl-Class-Accessor-Chained-0.01-48.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Class-Accessor-Chained:  .stamps/perl-Class-Accessor-Chained/perl-Class-Accessor-Chained.spec.built-stamp
 
ALL_PACKAGES += perl-Class-CSV

.srpms/perl-Class-CSV-1.03-42.el9.src.rpm: perl-Class-CSV/perl-Class-CSV.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Class-CSV-1.03-42.el9/perl-Class-CSV-1.03-42.el9.noarch.rpm : .srpms/perl-Class-CSV-1.03-42.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Class-CSV/perl-Class-CSV.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Class-CSV-1.03-42.el9/perl-Class-CSV-1.03-42.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Class-CSV:  .stamps/perl-Class-CSV/perl-Class-CSV.spec.built-stamp
 
ALL_PACKAGES += perl-Class-ISA

.srpms/perl-Class-ISA-0.36-1038.el9.src.rpm: perl-Class-ISA/perl-Class-ISA.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Class-ISA-0.36-1038.el9/perl-Class-ISA-0.36-1038.el9.noarch.rpm : .srpms/perl-Class-ISA-0.36-1038.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Class-ISA/perl-Class-ISA.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Class-ISA-0.36-1038.el9/perl-Class-ISA-0.36-1038.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Class-ISA:  .stamps/perl-Class-ISA/perl-Class-ISA.spec.built-stamp
 
ALL_PACKAGES += perl-Class-Null

.srpms/perl-Class-Null-2.110730-1.el9.src.rpm: perl-Class-Null/perl-Class-Null.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Class-Null-2.110730-1.el9/perl-Class-Null-2.110730-1.el9.noarch.rpm : .srpms/perl-Class-Null-2.110730-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Class-Null/perl-Class-Null.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Class-Null-2.110730-1.el9/perl-Class-Null-2.110730-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Class-Null:  .stamps/perl-Class-Null/perl-Class-Null.spec.built-stamp
 
ALL_PACKAGES += perl-Class-Prototyped

.srpms/perl-Class-Prototyped-1.13-27.el9.src.rpm: perl-Class-Prototyped/perl-Class-Prototyped.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Class-Prototyped-1.13-27.el9/perl-Class-Prototyped-1.13-27.el9.noarch.rpm : .srpms/perl-Class-Prototyped-1.13-27.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Class-Prototyped/perl-Class-Prototyped.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Class-Prototyped-1.13-27.el9/perl-Class-Prototyped-1.13-27.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Class-Prototyped:  .stamps/perl-Class-Prototyped/perl-Class-Prototyped.spec.built-stamp
 
ALL_PACKAGES += perl-Class-Refresh

.srpms/perl-Class-Refresh-0.07-20.el9.src.rpm: perl-Class-Refresh/perl-Class-Refresh.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Class-Refresh-0.07-20.el9/perl-Class-Refresh-0.07-20.el9.noarch.rpm : .srpms/perl-Class-Refresh-0.07-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Class-Refresh/perl-Class-Refresh.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Class-Refresh-0.07-20.el9/perl-Class-Refresh-0.07-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Class-Refresh: perl-Devel-OverrideGlobalRequire .stamps/perl-Class-Refresh/perl-Class-Refresh.spec.built-stamp
 
ALL_PACKAGES += perl-Class-ReturnValue

.srpms/perl-Class-ReturnValue-0.55-43.el9.src.rpm: perl-Class-ReturnValue/perl-Class-ReturnValue.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Class-ReturnValue-0.55-43.el9/perl-Class-ReturnValue-0.55-43.el9.noarch.rpm : .srpms/perl-Class-ReturnValue-0.55-43.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Class-ReturnValue/perl-Class-ReturnValue.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Class-ReturnValue-0.55-43.el9/perl-Class-ReturnValue-0.55-43.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Class-ReturnValue:  .stamps/perl-Class-ReturnValue/perl-Class-ReturnValue.spec.built-stamp
 
ALL_PACKAGES += perl-Clipboard

.srpms/perl-Clipboard-0.28-7.el9.src.rpm: perl-Clipboard/perl-Clipboard.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Clipboard-0.28-7.el9/perl-Clipboard-0.28-7.el9.noarch.rpm : .srpms/perl-Clipboard-0.28-7.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Clipboard/perl-Clipboard.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Clipboard-0.28-7.el9/perl-Clipboard-0.28-7.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Clipboard:  .stamps/perl-Clipboard/perl-Clipboard.spec.built-stamp
 
ALL_PACKAGES += perl-Compiler-Lexer

.srpms/perl-Compiler-Lexer-0.23-2.el9.src.rpm: perl-Compiler-Lexer/perl-Compiler-Lexer.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Compiler-Lexer-0.23-2.el9/perl-Compiler-Lexer-0.23-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Compiler-Lexer-0.23-2.el9/perl-Compiler-Lexer-debuginfo-0.23-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Compiler-Lexer-0.23-2.el9/perl-Compiler-Lexer-debugsource-0.23-2.el9.x86_64.rpm : .srpms/perl-Compiler-Lexer-0.23-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Compiler-Lexer/perl-Compiler-Lexer.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Compiler-Lexer-0.23-2.el9/perl-Compiler-Lexer-0.23-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Compiler-Lexer-0.23-2.el9/perl-Compiler-Lexer-debuginfo-0.23-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Compiler-Lexer-0.23-2.el9/perl-Compiler-Lexer-debugsource-0.23-2.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Compiler-Lexer:  .stamps/perl-Compiler-Lexer/perl-Compiler-Lexer.spec.built-stamp
 
ALL_PACKAGES += perl-Config-AWS

.srpms/perl-Config-AWS-0.12-1.el9.src.rpm: perl-Config-AWS/perl-Config-AWS.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Config-AWS-0.12-1.el9/perl-Config-AWS-0.12-1.el9.noarch.rpm : .srpms/perl-Config-AWS-0.12-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Config-AWS/perl-Config-AWS.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Config-AWS-0.12-1.el9/perl-Config-AWS-0.12-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Config-AWS:  .stamps/perl-Config-AWS/perl-Config-AWS.spec.built-stamp
 
ALL_PACKAGES += perl-Config-JFDI

.srpms/perl-Config-JFDI-0.065-34.el9.src.rpm: perl-Config-JFDI/perl-Config-JFDI.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Config-JFDI-0.065-34.el9/perl-Config-JFDI-0.065-34.el9.noarch.rpm : .srpms/perl-Config-JFDI-0.065-34.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Config-JFDI/perl-Config-JFDI.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Config-JFDI-0.065-34.el9/perl-Config-JFDI-0.065-34.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Config-JFDI: perl-Carp-Clan-Share perl-Data-Visitor perl-Getopt-Usaginator .stamps/perl-Config-JFDI/perl-Config-JFDI.spec.built-stamp
 
ALL_PACKAGES += perl-Config-ZOMG

.srpms/perl-Config-ZOMG-1.000000-19.el9.src.rpm: perl-Config-ZOMG/perl-Config-ZOMG.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Config-ZOMG-1.000000-19.el9/perl-Config-ZOMG-1.000000-19.el9.noarch.rpm : .srpms/perl-Config-ZOMG-1.000000-19.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Config-ZOMG/perl-Config-ZOMG.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Config-ZOMG-1.000000-19.el9/perl-Config-ZOMG-1.000000-19.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Config-ZOMG:  .stamps/perl-Config-ZOMG/perl-Config-ZOMG.spec.built-stamp
 
ALL_PACKAGES += perl-Crypt-JWT

.srpms/perl-Crypt-JWT-0.034-1.el9.src.rpm: perl-Crypt-JWT/perl-Crypt-JWT.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Crypt-JWT-0.034-1.el9/perl-Crypt-JWT-0.034-1.el9.noarch.rpm : .srpms/perl-Crypt-JWT-0.034-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Crypt-JWT/perl-Crypt-JWT.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-JWT-0.034-1.el9/perl-Crypt-JWT-0.034-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Crypt-JWT:  .stamps/perl-Crypt-JWT/perl-Crypt-JWT.spec.built-stamp
 
ALL_PACKAGES += perl-Crypt-MySQL

.srpms/perl-Crypt-MySQL-0.04-18.el9.src.rpm: perl-Crypt-MySQL/perl-Crypt-MySQL.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Crypt-MySQL-0.04-18.el9/perl-Crypt-MySQL-0.04-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-MySQL-0.04-18.el9/perl-Crypt-MySQL-debuginfo-0.04-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-MySQL-0.04-18.el9/perl-Crypt-MySQL-debugsource-0.04-18.el9.x86_64.rpm : .srpms/perl-Crypt-MySQL-0.04-18.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Crypt-MySQL/perl-Crypt-MySQL.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-MySQL-0.04-18.el9/perl-Crypt-MySQL-0.04-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-MySQL-0.04-18.el9/perl-Crypt-MySQL-debuginfo-0.04-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-MySQL-0.04-18.el9/perl-Crypt-MySQL-debugsource-0.04-18.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Crypt-MySQL:  .stamps/perl-Crypt-MySQL/perl-Crypt-MySQL.spec.built-stamp
 
ALL_PACKAGES += perl-Crypt-OpenSSL-DSA

.srpms/perl-Crypt-OpenSSL-DSA-0.20-22.el9.src.rpm: perl-Crypt-OpenSSL-DSA/perl-Crypt-OpenSSL-DSA.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-DSA-0.20-22.el9/perl-Crypt-OpenSSL-DSA-0.20-22.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-DSA-0.20-22.el9/perl-Crypt-OpenSSL-DSA-debuginfo-0.20-22.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-DSA-0.20-22.el9/perl-Crypt-OpenSSL-DSA-debugsource-0.20-22.el9.x86_64.rpm : .srpms/perl-Crypt-OpenSSL-DSA-0.20-22.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Crypt-OpenSSL-DSA/perl-Crypt-OpenSSL-DSA.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-DSA-0.20-22.el9/perl-Crypt-OpenSSL-DSA-0.20-22.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-DSA-0.20-22.el9/perl-Crypt-OpenSSL-DSA-debuginfo-0.20-22.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-DSA-0.20-22.el9/perl-Crypt-OpenSSL-DSA-debugsource-0.20-22.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Crypt-OpenSSL-DSA:  .stamps/perl-Crypt-OpenSSL-DSA/perl-Crypt-OpenSSL-DSA.spec.built-stamp
 
ALL_PACKAGES += perl-Crypt-OpenSSL-Guess

.srpms/perl-Crypt-OpenSSL-Guess-0.15-4.el9.src.rpm: perl-Crypt-OpenSSL-Guess/perl-Crypt-OpenSSL-Guess.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-Guess-0.15-4.el9/perl-Crypt-OpenSSL-Guess-0.15-4.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-Guess-0.15-4.el9/perl-Crypt-OpenSSL-Guess-tests-0.15-4.el9.noarch.rpm : .srpms/perl-Crypt-OpenSSL-Guess-0.15-4.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Crypt-OpenSSL-Guess/perl-Crypt-OpenSSL-Guess.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-Guess-0.15-4.el9/perl-Crypt-OpenSSL-Guess-0.15-4.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-OpenSSL-Guess-0.15-4.el9/perl-Crypt-OpenSSL-Guess-tests-0.15-4.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Crypt-OpenSSL-Guess:  .stamps/perl-Crypt-OpenSSL-Guess/perl-Crypt-OpenSSL-Guess.spec.built-stamp
 
ALL_PACKAGES += perl-Crypt-PW44

.srpms/perl-Crypt-PW44-0.14-1.el9.src.rpm: perl-Crypt-PW44/perl-Crypt-PW44.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Crypt-PW44-0.14-1.el9/perl-Crypt-PW44-0.14-1.el9.noarch.rpm : .srpms/perl-Crypt-PW44-0.14-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Crypt-PW44/perl-Crypt-PW44.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-PW44-0.14-1.el9/perl-Crypt-PW44-0.14-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Crypt-PW44:  .stamps/perl-Crypt-PW44/perl-Crypt-PW44.spec.built-stamp
 
ALL_PACKAGES += perl-Crypt-Random-Seed

.srpms/perl-Crypt-Random-Seed-0.03-25.el9.src.rpm: perl-Crypt-Random-Seed/perl-Crypt-Random-Seed.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Crypt-Random-Seed-0.03-25.el9/perl-Crypt-Random-Seed-0.03-25.el9.noarch.rpm : .srpms/perl-Crypt-Random-Seed-0.03-25.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Crypt-Random-Seed/perl-Crypt-Random-Seed.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-Random-Seed-0.03-25.el9/perl-Crypt-Random-Seed-0.03-25.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Crypt-Random-Seed:  .stamps/perl-Crypt-Random-Seed/perl-Crypt-Random-Seed.spec.built-stamp
 
ALL_PACKAGES += perl-Crypt-UnixCrypt_XS

.srpms/perl-Crypt-UnixCrypt_XS-0.11-17.el9.src.rpm: perl-Crypt-UnixCrypt_XS/perl-Crypt-UnixCrypt_XS.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Crypt-UnixCrypt_XS-0.11-17.el9/perl-Crypt-UnixCrypt_XS-0.11-17.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-UnixCrypt_XS-0.11-17.el9/perl-Crypt-UnixCrypt_XS-debuginfo-0.11-17.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-UnixCrypt_XS-0.11-17.el9/perl-Crypt-UnixCrypt_XS-debugsource-0.11-17.el9.x86_64.rpm : .srpms/perl-Crypt-UnixCrypt_XS-0.11-17.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Crypt-UnixCrypt_XS/perl-Crypt-UnixCrypt_XS.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-UnixCrypt_XS-0.11-17.el9/perl-Crypt-UnixCrypt_XS-0.11-17.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-UnixCrypt_XS-0.11-17.el9/perl-Crypt-UnixCrypt_XS-debuginfo-0.11-17.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Crypt-UnixCrypt_XS-0.11-17.el9/perl-Crypt-UnixCrypt_XS-debugsource-0.11-17.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Crypt-UnixCrypt_XS: perl-Algorithm-Loops .stamps/perl-Crypt-UnixCrypt_XS/perl-Crypt-UnixCrypt_XS.spec.built-stamp
 
ALL_PACKAGES += perl-curry

.srpms/perl-curry-2.000001-5.el9.src.rpm: perl-curry/perl-curry.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-curry-2.000001-5.el9/perl-curry-2.000001-5.el9.noarch.rpm : .srpms/perl-curry-2.000001-5.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-curry/perl-curry.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-curry-2.000001-5.el9/perl-curry-2.000001-5.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-curry:  .stamps/perl-curry/perl-curry.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Alias

.srpms/perl-Data-Alias-1.28-2.el9.src.rpm: perl-Data-Alias/perl-Data-Alias.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Alias-1.28-2.el9/perl-Data-Alias-1.28-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-Alias-1.28-2.el9/perl-Data-Alias-debuginfo-1.28-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-Alias-1.28-2.el9/perl-Data-Alias-debugsource-1.28-2.el9.x86_64.rpm : .srpms/perl-Data-Alias-1.28-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Alias/perl-Data-Alias.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Alias-1.28-2.el9/perl-Data-Alias-1.28-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-Alias-1.28-2.el9/perl-Data-Alias-debuginfo-1.28-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-Alias-1.28-2.el9/perl-Data-Alias-debugsource-1.28-2.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Alias: perl-Devel-CallParser .stamps/perl-Data-Alias/perl-Data-Alias.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Constraint

.srpms/perl-Data-Constraint-1.203-4.el9.src.rpm: perl-Data-Constraint/perl-Data-Constraint.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Constraint-1.203-4.el9/perl-Data-Constraint-1.203-4.el9.noarch.rpm : .srpms/perl-Data-Constraint-1.203-4.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Constraint/perl-Data-Constraint.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Constraint-1.203-4.el9/perl-Data-Constraint-1.203-4.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Constraint: perl-Class-Prototyped .stamps/perl-Data-Constraint/perl-Data-Constraint.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Currency

.srpms/perl-Data-Currency-0.04002-1.el9.src.rpm: perl-Data-Currency/perl-Data-Currency.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Currency-0.04002-1.el9/perl-Data-Currency-0.04002-1.el9.noarch.rpm : .srpms/perl-Data-Currency-0.04002-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Currency/perl-Data-Currency.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Currency-0.04002-1.el9/perl-Data-Currency-0.04002-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Currency: perl-Finance-Currency-Convert-WebserviceX perl-Locale-Currency-Format .stamps/perl-Data-Currency/perl-Data-Currency.spec.built-stamp
 
ALL_PACKAGES += perl-Data-ICal

.srpms/perl-Data-ICal-0.24-12.el9.src.rpm: perl-Data-ICal/perl-Data-ICal.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-ICal-0.24-12.el9/perl-Data-ICal-0.24-12.el9.noarch.rpm : .srpms/perl-Data-ICal-0.24-12.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-ICal/perl-Data-ICal.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-ICal-0.24-12.el9/perl-Data-ICal-0.24-12.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-ICal: perl-Class-ReturnValue perl-Text-vFile-asData .stamps/perl-Data-ICal/perl-Data-ICal.spec.built-stamp
 
ALL_PACKAGES += perl-Data-ICal-DateTime

.srpms/perl-Data-ICal-DateTime-0.82-14.el9.src.rpm: perl-Data-ICal-DateTime/perl-Data-ICal-DateTime.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-ICal-DateTime-0.82-14.el9/perl-Data-ICal-DateTime-0.82-14.el9.noarch.rpm : .srpms/perl-Data-ICal-DateTime-0.82-14.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-ICal-DateTime/perl-Data-ICal-DateTime.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-ICal-DateTime-0.82-14.el9/perl-Data-ICal-DateTime-0.82-14.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-ICal-DateTime: perl-Data-ICal .stamps/perl-Data-ICal-DateTime/perl-Data-ICal-DateTime.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Integer

.srpms/perl-Data-Integer-0.006-1.el9.src.rpm: perl-Data-Integer/perl-Data-Integer.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Integer-0.006-1.el9/perl-Data-Integer-0.006-1.el9.noarch.rpm : .srpms/perl-Data-Integer-0.006-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Integer/perl-Data-Integer.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Integer-0.006-1.el9/perl-Data-Integer-0.006-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Integer:  .stamps/perl-Data-Integer/perl-Data-Integer.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Manager

.srpms/perl-Data-Manager-0.10-1.el9.src.rpm: perl-Data-Manager/perl-Data-Manager.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Manager-0.10-1.el9/perl-Data-Manager-0.10-1.el9.noarch.rpm : .srpms/perl-Data-Manager-0.10-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Manager/perl-Data-Manager.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Manager-0.10-1.el9/perl-Data-Manager-0.10-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Manager: perl-Data-Verifier perl-Message-Stack perl-Message-Stack-Parser perl-MooseX-Storage .stamps/perl-Data-Manager/perl-Data-Manager.spec.built-stamp
 
ALL_PACKAGES += perl-Data-MessagePack

.srpms/perl-Data-MessagePack-1.02-4.el9.src.rpm: perl-Data-MessagePack/perl-Data-MessagePack.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-MessagePack-1.02-4.el9/perl-Data-MessagePack-1.02-4.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-MessagePack-1.02-4.el9/perl-Data-MessagePack-tests-1.02-4.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-MessagePack-1.02-4.el9/perl-Data-MessagePack-debuginfo-1.02-4.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-MessagePack-1.02-4.el9/perl-Data-MessagePack-debugsource-1.02-4.el9.x86_64.rpm : .srpms/perl-Data-MessagePack-1.02-4.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-MessagePack/perl-Data-MessagePack.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-MessagePack-1.02-4.el9/perl-Data-MessagePack-1.02-4.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-MessagePack-1.02-4.el9/perl-Data-MessagePack-tests-1.02-4.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-MessagePack-1.02-4.el9/perl-Data-MessagePack-debuginfo-1.02-4.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Data-MessagePack-1.02-4.el9/perl-Data-MessagePack-debugsource-1.02-4.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-MessagePack:  .stamps/perl-Data-MessagePack/perl-Data-MessagePack.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Page

.srpms/perl-Data-Page-2.03-12.el9.src.rpm: perl-Data-Page/perl-Data-Page.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Page-2.03-12.el9/perl-Data-Page-2.03-12.el9.noarch.rpm : .srpms/perl-Data-Page-2.03-12.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Page/perl-Data-Page.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Page-2.03-12.el9/perl-Data-Page-2.03-12.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Page: perl-Class-Accessor-Chained .stamps/perl-Data-Page/perl-Data-Page.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Password-Meter

.srpms/perl-Data-Password-Meter-0.10-1.el9.src.rpm: perl-Data-Password-Meter/perl-Data-Password-Meter.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Password-Meter-0.10-1.el9/perl-Data-Password-Meter-0.10-1.el9.noarch.rpm : .srpms/perl-Data-Password-Meter-0.10-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Password-Meter/perl-Data-Password-Meter.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Password-Meter-0.10-1.el9/perl-Data-Password-Meter-0.10-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Password-Meter:  .stamps/perl-Data-Password-Meter/perl-Data-Password-Meter.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Random

.srpms/perl-Data-Random-0.13-16.el9.src.rpm: perl-Data-Random/perl-Data-Random.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Random-0.13-16.el9/perl-Data-Random-0.13-16.el9.noarch.rpm : .srpms/perl-Data-Random-0.13-16.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Random/perl-Data-Random.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Random-0.13-16.el9/perl-Data-Random-0.13-16.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Random:  .stamps/perl-Data-Random/perl-Data-Random.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Stream-Bulk

.srpms/perl-Data-Stream-Bulk-0.11-30.el9.src.rpm: perl-Data-Stream-Bulk/perl-Data-Stream-Bulk.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Stream-Bulk-0.11-30.el9/perl-Data-Stream-Bulk-0.11-30.el9.noarch.rpm : .srpms/perl-Data-Stream-Bulk-0.11-30.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Stream-Bulk/perl-Data-Stream-Bulk.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Stream-Bulk-0.11-30.el9/perl-Data-Stream-Bulk-0.11-30.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Stream-Bulk: perl-Test-TempDir perl-DBD-Mock .stamps/perl-Data-Stream-Bulk/perl-Data-Stream-Bulk.spec.built-stamp
 
ALL_PACKAGES += perl-DataStruct-Flat

.srpms/perl-DataStruct-Flat-0.01-1.el9.src.rpm: perl-DataStruct-Flat/perl-DataStruct-Flat.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DataStruct-Flat-0.01-1.el9/perl-DataStruct-Flat-0.01-1.el9.noarch.rpm : .srpms/perl-DataStruct-Flat-0.01-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DataStruct-Flat/perl-DataStruct-Flat.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DataStruct-Flat-0.01-1.el9/perl-DataStruct-Flat-0.01-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DataStruct-Flat:  .stamps/perl-DataStruct-Flat/perl-DataStruct-Flat.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Validate-Type

.srpms/perl-Data-Validate-Type-1.6.0-20.el9.src.rpm: perl-Data-Validate-Type/perl-Data-Validate-Type.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Validate-Type-1.6.0-20.el9/perl-Data-Validate-Type-1.6.0-20.el9.noarch.rpm : .srpms/perl-Data-Validate-Type-1.6.0-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Validate-Type/perl-Data-Validate-Type.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Validate-Type-1.6.0-20.el9/perl-Data-Validate-Type-1.6.0-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Validate-Type:  .stamps/perl-Data-Validate-Type/perl-Data-Validate-Type.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Verifier

.srpms/perl-Data-Verifier-0.63-1.el9.src.rpm: perl-Data-Verifier/perl-Data-Verifier.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Verifier-0.63-1.el9/perl-Data-Verifier-0.63-1.el9.noarch.rpm : .srpms/perl-Data-Verifier-0.63-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Verifier/perl-Data-Verifier.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Verifier-0.63-1.el9/perl-Data-Verifier-0.63-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Verifier: perl-MooseX-Storage .stamps/perl-Data-Verifier/perl-Data-Verifier.spec.built-stamp
 
ALL_PACKAGES += perl-Data-Visitor

.srpms/perl-Data-Visitor-0.32-1.el9.src.rpm: perl-Data-Visitor/perl-Data-Visitor.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Data-Visitor-0.32-1.el9/perl-Data-Visitor-0.32-1.el9.noarch.rpm : .srpms/perl-Data-Visitor-0.32-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Data-Visitor/perl-Data-Visitor.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Data-Visitor-0.32-1.el9/perl-Data-Visitor-0.32-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Data-Visitor: perl-Tie-ToObject .stamps/perl-Data-Visitor/perl-Data-Visitor.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-Event-ICal

.srpms/perl-DateTime-Event-ICal-0.13-22.el9.src.rpm: perl-DateTime-Event-ICal/perl-DateTime-Event-ICal.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Event-ICal-0.13-22.el9/perl-DateTime-Event-ICal-0.13-22.el9.noarch.rpm : .srpms/perl-DateTime-Event-ICal-0.13-22.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-Event-ICal/perl-DateTime-Event-ICal.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Event-ICal-0.13-22.el9/perl-DateTime-Event-ICal-0.13-22.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-Event-ICal:  .stamps/perl-DateTime-Event-ICal/perl-DateTime-Event-ICal.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-Event-Recurrence

.srpms/perl-DateTime-Event-Recurrence-0.19-19.el9.src.rpm: perl-DateTime-Event-Recurrence/perl-DateTime-Event-Recurrence.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Event-Recurrence-0.19-19.el9/perl-DateTime-Event-Recurrence-0.19-19.el9.noarch.rpm : .srpms/perl-DateTime-Event-Recurrence-0.19-19.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-Event-Recurrence/perl-DateTime-Event-Recurrence.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Event-Recurrence-0.19-19.el9/perl-DateTime-Event-Recurrence-0.19-19.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-Event-Recurrence:  .stamps/perl-DateTime-Event-Recurrence/perl-DateTime-Event-Recurrence.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-Format-DateManip

.srpms/perl-DateTime-Format-DateManip-0.04-41.el9.src.rpm: perl-DateTime-Format-DateManip/perl-DateTime-Format-DateManip.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-DateManip-0.04-41.el9/perl-DateTime-Format-DateManip-0.04-41.el9.noarch.rpm : .srpms/perl-DateTime-Format-DateManip-0.04-41.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-Format-DateManip/perl-DateTime-Format-DateManip.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-DateManip-0.04-41.el9/perl-DateTime-Format-DateManip-0.04-41.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-Format-DateManip:  .stamps/perl-DateTime-Format-DateManip/perl-DateTime-Format-DateManip.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-Format-Flexible

.srpms/perl-DateTime-Format-Flexible-0.34-7.el9.src.rpm: perl-DateTime-Format-Flexible/perl-DateTime-Format-Flexible.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Flexible-0.34-7.el9/perl-DateTime-Format-Flexible-0.34-7.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Flexible-0.34-7.el9/perl-DateTime-Format-Flexible-tests-0.34-7.el9.noarch.rpm : .srpms/perl-DateTime-Format-Flexible-0.34-7.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-Format-Flexible/perl-DateTime-Format-Flexible.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Flexible-0.34-7.el9/perl-DateTime-Format-Flexible-0.34-7.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Flexible-0.34-7.el9/perl-DateTime-Format-Flexible-tests-0.34-7.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-Format-Flexible:  .stamps/perl-DateTime-Format-Flexible/perl-DateTime-Format-Flexible.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-Format-HTTP

.srpms/perl-DateTime-Format-HTTP-0.42-25.el9.src.rpm: perl-DateTime-Format-HTTP/perl-DateTime-Format-HTTP.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-HTTP-0.42-25.el9/perl-DateTime-Format-HTTP-0.42-25.el9.noarch.rpm : .srpms/perl-DateTime-Format-HTTP-0.42-25.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-Format-HTTP/perl-DateTime-Format-HTTP.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-HTTP-0.42-25.el9/perl-DateTime-Format-HTTP-0.42-25.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-Format-HTTP:  .stamps/perl-DateTime-Format-HTTP/perl-DateTime-Format-HTTP.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-Format-ICal

.srpms/perl-DateTime-Format-ICal-0.09-41.el9.src.rpm: perl-DateTime-Format-ICal/perl-DateTime-Format-ICal.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-ICal-0.09-41.el9/perl-DateTime-Format-ICal-0.09-41.el9.noarch.rpm : .srpms/perl-DateTime-Format-ICal-0.09-41.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-Format-ICal/perl-DateTime-Format-ICal.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-ICal-0.09-41.el9/perl-DateTime-Format-ICal-0.09-41.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-Format-ICal:  .stamps/perl-DateTime-Format-ICal/perl-DateTime-Format-ICal.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-Format-Natural

.srpms/perl-DateTime-Format-Natural-1.17-1.el9.src.rpm: perl-DateTime-Format-Natural/perl-DateTime-Format-Natural.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Natural-1.17-1.el9/perl-DateTime-Format-Natural-1.17-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Natural-1.17-1.el9/perl-DateTime-Format-Natural-Test-1.17-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Natural-1.17-1.el9/perl-DateTime-Format-Natural-tests-1.17-1.el9.noarch.rpm : .srpms/perl-DateTime-Format-Natural-1.17-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-Format-Natural/perl-DateTime-Format-Natural.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Natural-1.17-1.el9/perl-DateTime-Format-Natural-1.17-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Natural-1.17-1.el9/perl-DateTime-Format-Natural-Test-1.17-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Format-Natural-1.17-1.el9/perl-DateTime-Format-Natural-tests-1.17-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-Format-Natural:  .stamps/perl-DateTime-Format-Natural/perl-DateTime-Format-Natural.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-HiRes

.srpms/perl-DateTime-HiRes-0.04-3.el9.src.rpm: perl-DateTime-HiRes/perl-DateTime-HiRes.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-HiRes-0.04-3.el9/perl-DateTime-HiRes-0.04-3.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-HiRes-0.04-3.el9/perl-DateTime-HiRes-tests-0.04-3.el9.noarch.rpm : .srpms/perl-DateTime-HiRes-0.04-3.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-HiRes/perl-DateTime-HiRes.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-HiRes-0.04-3.el9/perl-DateTime-HiRes-0.04-3.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-HiRes-0.04-3.el9/perl-DateTime-HiRes-tests-0.04-3.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-HiRes:  .stamps/perl-DateTime-HiRes/perl-DateTime-HiRes.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-Set

.srpms/perl-DateTime-Set-0.3900-20.el9.src.rpm: perl-DateTime-Set/perl-DateTime-Set.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Set-0.3900-20.el9/perl-DateTime-Set-0.3900-20.el9.noarch.rpm : .srpms/perl-DateTime-Set-0.3900-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-Set/perl-DateTime-Set.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-Set-0.3900-20.el9/perl-DateTime-Set-0.3900-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-Set:  .stamps/perl-DateTime-Set/perl-DateTime-Set.spec.built-stamp
 
ALL_PACKAGES += perl-DateTime-TimeZone

.srpms/perl-DateTime-TimeZone-2.60-1.el9.src.rpm: perl-DateTime-TimeZone/perl-DateTime-TimeZone.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTime-TimeZone-2.60-1.el9/perl-DateTime-TimeZone-2.60-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-TimeZone-2.60-1.el9/perl-DateTime-TimeZone-tests-2.60-1.el9.noarch.rpm : .srpms/perl-DateTime-TimeZone-2.60-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTime-TimeZone/perl-DateTime-TimeZone.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-TimeZone-2.60-1.el9/perl-DateTime-TimeZone-2.60-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTime-TimeZone-2.60-1.el9/perl-DateTime-TimeZone-tests-2.60-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTime-TimeZone:  .stamps/perl-DateTime-TimeZone/perl-DateTime-TimeZone.spec.built-stamp
 
ALL_PACKAGES += perl-DateTimeX-Easy

.srpms/perl-DateTimeX-Easy-0.091-2.el9.src.rpm: perl-DateTimeX-Easy/perl-DateTimeX-Easy.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DateTimeX-Easy-0.091-2.el9/perl-DateTimeX-Easy-0.091-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTimeX-Easy-0.091-2.el9/perl-DateTimeX-Easy-tests-0.091-2.el9.noarch.rpm : .srpms/perl-DateTimeX-Easy-0.091-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DateTimeX-Easy/perl-DateTimeX-Easy.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DateTimeX-Easy-0.091-2.el9/perl-DateTimeX-Easy-0.091-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DateTimeX-Easy-0.091-2.el9/perl-DateTimeX-Easy-tests-0.091-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DateTimeX-Easy:  .stamps/perl-DateTimeX-Easy/perl-DateTimeX-Easy.spec.built-stamp
 
ALL_PACKAGES += perl-DBD-Mock

.srpms/perl-DBD-Mock-1.59-7.el9.src.rpm: perl-DBD-Mock/perl-DBD-Mock.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBD-Mock-1.59-7.el9/perl-DBD-Mock-1.59-7.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DBD-Mock-1.59-7.el9/perl-DBD-Mock-tests-1.59-7.el9.noarch.rpm : .srpms/perl-DBD-Mock-1.59-7.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBD-Mock/perl-DBD-Mock.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBD-Mock-1.59-7.el9/perl-DBD-Mock-1.59-7.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DBD-Mock-1.59-7.el9/perl-DBD-Mock-tests-1.59-7.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBD-Mock:  .stamps/perl-DBD-Mock/perl-DBD-Mock.spec.built-stamp
 
ALL_PACKAGES += perl-DBICx-TestDatabase

.srpms/perl-DBICx-TestDatabase-0.05-26.el9.src.rpm: perl-DBICx-TestDatabase/perl-DBICx-TestDatabase.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBICx-TestDatabase-0.05-26.el9/perl-DBICx-TestDatabase-0.05-26.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DBICx-TestDatabase-0.05-26.el9/perl-DBICx-TestDatabase-tests-0.05-26.el9.noarch.rpm : .srpms/perl-DBICx-TestDatabase-0.05-26.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBICx-TestDatabase/perl-DBICx-TestDatabase.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBICx-TestDatabase-0.05-26.el9/perl-DBICx-TestDatabase-0.05-26.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DBICx-TestDatabase-0.05-26.el9/perl-DBICx-TestDatabase-tests-0.05-26.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBICx-TestDatabase:  .stamps/perl-DBICx-TestDatabase/perl-DBICx-TestDatabase.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-Candy

.srpms/perl-DBIx-Class-Candy-0.005003-12.el9.src.rpm: perl-DBIx-Class-Candy/perl-DBIx-Class-Candy.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Candy-0.005003-12.el9/perl-DBIx-Class-Candy-0.005003-12.el9.noarch.rpm : .srpms/perl-DBIx-Class-Candy-0.005003-12.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-Candy/perl-DBIx-Class-Candy.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Candy-0.005003-12.el9/perl-DBIx-Class-Candy-0.005003-12.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-Candy:  .stamps/perl-DBIx-Class-Candy/perl-DBIx-Class-Candy.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-DeploymentHandler

.srpms/perl-DBIx-Class-DeploymentHandler-0.002233-11.el9.src.rpm: perl-DBIx-Class-DeploymentHandler/perl-DBIx-Class-DeploymentHandler.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-DeploymentHandler-0.002233-11.el9/perl-DBIx-Class-DeploymentHandler-0.002233-11.el9.noarch.rpm : .srpms/perl-DBIx-Class-DeploymentHandler-0.002233-11.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-DeploymentHandler/perl-DBIx-Class-DeploymentHandler.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-DeploymentHandler-0.002233-11.el9/perl-DBIx-Class-DeploymentHandler-0.002233-11.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-DeploymentHandler: perl-SQL-SplitStatement perl-DBIx-Class-Schema-Loader perl-Text-Brew .stamps/perl-DBIx-Class-DeploymentHandler/perl-DBIx-Class-DeploymentHandler.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-DynamicDefault

.srpms/perl-DBIx-Class-DynamicDefault-0.04-33.el9.src.rpm: perl-DBIx-Class-DynamicDefault/perl-DBIx-Class-DynamicDefault.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-DynamicDefault-0.04-33.el9/perl-DBIx-Class-DynamicDefault-0.04-33.el9.noarch.rpm : .srpms/perl-DBIx-Class-DynamicDefault-0.04-33.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-DynamicDefault/perl-DBIx-Class-DynamicDefault.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-DynamicDefault-0.04-33.el9/perl-DBIx-Class-DynamicDefault-0.04-33.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-DynamicDefault: perl-DBICx-TestDatabase perl-Module-Install-ExtraTests .stamps/perl-DBIx-Class-DynamicDefault/perl-DBIx-Class-DynamicDefault.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-Helpers

.srpms/perl-DBIx-Class-Helpers-2.036000-10.el9.src.rpm: perl-DBIx-Class-Helpers/perl-DBIx-Class-Helpers.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Helpers-2.036000-10.el9/perl-DBIx-Class-Helpers-2.036000-10.el9.noarch.rpm : .srpms/perl-DBIx-Class-Helpers-2.036000-10.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-Helpers/perl-DBIx-Class-Helpers.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Helpers-2.036000-10.el9/perl-DBIx-Class-Helpers-2.036000-10.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-Helpers: perl-Test-Roo perl-Text-Brew perl-DBIx-Class-Candy perl-DBIx-Introspector .stamps/perl-DBIx-Class-Helpers/perl-DBIx-Class-Helpers.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-InflateColumn-Authen-Passphrase

.srpms/perl-DBIx-Class-InflateColumn-Authen-Passphrase-0.03-1.el9.src.rpm: perl-DBIx-Class-InflateColumn-Authen-Passphrase/perl-DBIx-Class-InflateColumn-Authen-Passphrase.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-InflateColumn-Authen-Passphrase-0.03-1.el9/perl-DBIx-Class-InflateColumn-Authen-Passphrase-0.03-1.el9.noarch.rpm : .srpms/perl-DBIx-Class-InflateColumn-Authen-Passphrase-0.03-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-InflateColumn-Authen-Passphrase/perl-DBIx-Class-InflateColumn-Authen-Passphrase.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-InflateColumn-Authen-Passphrase-0.03-1.el9/perl-DBIx-Class-InflateColumn-Authen-Passphrase-0.03-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-InflateColumn-Authen-Passphrase:  .stamps/perl-DBIx-Class-InflateColumn-Authen-Passphrase/perl-DBIx-Class-InflateColumn-Authen-Passphrase.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-InflateColumn-Currency

.srpms/perl-DBIx-Class-InflateColumn-Currency-0.02005-1.el9.src.rpm: perl-DBIx-Class-InflateColumn-Currency/perl-DBIx-Class-InflateColumn-Currency.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-InflateColumn-Currency-0.02005-1.el9/perl-DBIx-Class-InflateColumn-Currency-0.02005-1.el9.noarch.rpm : .srpms/perl-DBIx-Class-InflateColumn-Currency-0.02005-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-InflateColumn-Currency/perl-DBIx-Class-InflateColumn-Currency.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-InflateColumn-Currency-0.02005-1.el9/perl-DBIx-Class-InflateColumn-Currency-0.02005-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-InflateColumn-Currency:  .stamps/perl-DBIx-Class-InflateColumn-Currency/perl-DBIx-Class-InflateColumn-Currency.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-PassphraseColumn

.srpms/perl-DBIx-Class-PassphraseColumn-0.05-1.el9.src.rpm: perl-DBIx-Class-PassphraseColumn/perl-DBIx-Class-PassphraseColumn.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-PassphraseColumn-0.05-1.el9/perl-DBIx-Class-PassphraseColumn-0.05-1.el9.noarch.rpm : .srpms/perl-DBIx-Class-PassphraseColumn-0.05-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-PassphraseColumn/perl-DBIx-Class-PassphraseColumn.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-PassphraseColumn-0.05-1.el9/perl-DBIx-Class-PassphraseColumn-0.05-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-PassphraseColumn:  .stamps/perl-DBIx-Class-PassphraseColumn/perl-DBIx-Class-PassphraseColumn.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-Schema-Loader

.srpms/perl-DBIx-Class-Schema-Loader-0.07051-2.el9.src.rpm: perl-DBIx-Class-Schema-Loader/perl-DBIx-Class-Schema-Loader.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Schema-Loader-0.07051-2.el9/perl-DBIx-Class-Schema-Loader-0.07051-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Schema-Loader-0.07051-2.el9/perl-DBIx-Class-Schema-Loader-tests-0.07051-2.el9.noarch.rpm : .srpms/perl-DBIx-Class-Schema-Loader-0.07051-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-Schema-Loader/perl-DBIx-Class-Schema-Loader.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Schema-Loader-0.07051-2.el9/perl-DBIx-Class-Schema-Loader-0.07051-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Schema-Loader-0.07051-2.el9/perl-DBIx-Class-Schema-Loader-tests-0.07051-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-Schema-Loader: perl-curry perl-Lingua-EN-Inflect-Number perl-Lingua-EN-Inflect-Phrase perl-Lingua-EN-Tagger perl-String-CamelCase perl-String-ToIdentifier-EN .stamps/perl-DBIx-Class-Schema-Loader/perl-DBIx-Class-Schema-Loader.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-Schema-PopulateMore

.srpms/perl-DBIx-Class-Schema-PopulateMore-0.19-3.el9.src.rpm: perl-DBIx-Class-Schema-PopulateMore/perl-DBIx-Class-Schema-PopulateMore.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Schema-PopulateMore-0.19-3.el9/perl-DBIx-Class-Schema-PopulateMore-0.19-3.el9.noarch.rpm : .srpms/perl-DBIx-Class-Schema-PopulateMore-0.19-3.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-Schema-PopulateMore/perl-DBIx-Class-Schema-PopulateMore.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Schema-PopulateMore-0.19-3.el9/perl-DBIx-Class-Schema-PopulateMore-0.19-3.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-Schema-PopulateMore:  .stamps/perl-DBIx-Class-Schema-PopulateMore/perl-DBIx-Class-Schema-PopulateMore.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-Storage-TxnEndHook

.srpms/perl-DBIx-Class-Storage-TxnEndHook-0.01-1.el9.src.rpm: perl-DBIx-Class-Storage-TxnEndHook/perl-DBIx-Class-Storage-TxnEndHook.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Storage-TxnEndHook-0.01-1.el9/perl-DBIx-Class-Storage-TxnEndHook-0.01-1.el9.noarch.rpm : .srpms/perl-DBIx-Class-Storage-TxnEndHook-0.01-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-Storage-TxnEndHook/perl-DBIx-Class-Storage-TxnEndHook.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-Storage-TxnEndHook-0.01-1.el9/perl-DBIx-Class-Storage-TxnEndHook-0.01-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-Storage-TxnEndHook:  .stamps/perl-DBIx-Class-Storage-TxnEndHook/perl-DBIx-Class-Storage-TxnEndHook.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Class-TimeStamp

.srpms/perl-DBIx-Class-TimeStamp-0.14-36.el9.src.rpm: perl-DBIx-Class-TimeStamp/perl-DBIx-Class-TimeStamp.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-TimeStamp-0.14-36.el9/perl-DBIx-Class-TimeStamp-0.14-36.el9.noarch.rpm : .srpms/perl-DBIx-Class-TimeStamp-0.14-36.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Class-TimeStamp/perl-DBIx-Class-TimeStamp.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Class-TimeStamp-0.14-36.el9/perl-DBIx-Class-TimeStamp-0.14-36.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Class-TimeStamp: perl-DBIx-Class-DynamicDefault perl-Time-Warp .stamps/perl-DBIx-Class-TimeStamp/perl-DBIx-Class-TimeStamp.spec.built-stamp
 
ALL_PACKAGES += perl-DBIx-Introspector

.srpms/perl-DBIx-Introspector-0.001005-12.el9.src.rpm: perl-DBIx-Introspector/perl-DBIx-Introspector.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Introspector-0.001005-12.el9/perl-DBIx-Introspector-0.001005-12.el9.noarch.rpm : .srpms/perl-DBIx-Introspector-0.001005-12.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-DBIx-Introspector/perl-DBIx-Introspector.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-DBIx-Introspector-0.001005-12.el9/perl-DBIx-Introspector-0.001005-12.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-DBIx-Introspector: perl-Test-Roo .stamps/perl-DBIx-Introspector/perl-DBIx-Introspector.spec.built-stamp
 
ALL_PACKAGES += perl-Devel-CallParser

.srpms/perl-Devel-CallParser-0.002-31.el9.src.rpm: perl-Devel-CallParser/perl-Devel-CallParser.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Devel-CallParser-0.002-31.el9/perl-Devel-CallParser-0.002-31.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-CallParser-0.002-31.el9/perl-Devel-CallParser-debuginfo-0.002-31.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-CallParser-0.002-31.el9/perl-Devel-CallParser-debugsource-0.002-31.el9.x86_64.rpm : .srpms/perl-Devel-CallParser-0.002-31.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Devel-CallParser/perl-Devel-CallParser.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Devel-CallParser-0.002-31.el9/perl-Devel-CallParser-0.002-31.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-CallParser-0.002-31.el9/perl-Devel-CallParser-debuginfo-0.002-31.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-CallParser-0.002-31.el9/perl-Devel-CallParser-debugsource-0.002-31.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Devel-CallParser:  .stamps/perl-Devel-CallParser/perl-Devel-CallParser.spec.built-stamp
 
ALL_PACKAGES += perl-Devel-Declare

.srpms/perl-Devel-Declare-0.006022-13.el9.src.rpm: perl-Devel-Declare/perl-Devel-Declare.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Devel-Declare-0.006022-13.el9/perl-Devel-Declare-0.006022-13.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-Declare-0.006022-13.el9/perl-Devel-Declare-debuginfo-0.006022-13.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-Declare-0.006022-13.el9/perl-Devel-Declare-debugsource-0.006022-13.el9.x86_64.rpm : .srpms/perl-Devel-Declare-0.006022-13.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Devel-Declare/perl-Devel-Declare.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Devel-Declare-0.006022-13.el9/perl-Devel-Declare-0.006022-13.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-Declare-0.006022-13.el9/perl-Devel-Declare-debuginfo-0.006022-13.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-Declare-0.006022-13.el9/perl-Devel-Declare-debugsource-0.006022-13.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Devel-Declare: perl-B-Compiling .stamps/perl-Devel-Declare/perl-Devel-Declare.spec.built-stamp
 
ALL_PACKAGES += perl-Devel-OverrideGlobalRequire

.srpms/perl-Devel-OverrideGlobalRequire-0.001-20.el9.src.rpm: perl-Devel-OverrideGlobalRequire/perl-Devel-OverrideGlobalRequire.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Devel-OverrideGlobalRequire-0.001-20.el9/perl-Devel-OverrideGlobalRequire-0.001-20.el9.noarch.rpm : .srpms/perl-Devel-OverrideGlobalRequire-0.001-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Devel-OverrideGlobalRequire/perl-Devel-OverrideGlobalRequire.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Devel-OverrideGlobalRequire-0.001-20.el9/perl-Devel-OverrideGlobalRequire-0.001-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Devel-OverrideGlobalRequire:  .stamps/perl-Devel-OverrideGlobalRequire/perl-Devel-OverrideGlobalRequire.spec.built-stamp
 
ALL_PACKAGES += perl-Devel-REPL

.srpms/perl-Devel-REPL-1.003029-5.el9.src.rpm: perl-Devel-REPL/perl-Devel-REPL.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-Completion-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-CompletionDriver-INC-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-CompletionDriver-Keywords-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-DDC-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-DDS-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-Interrupt-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-LexEnv-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-MultiLine-PPI-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-Nopaste-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-PPI-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-Refresh-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-tests-1.003029-5.el9.noarch.rpm : .srpms/perl-Devel-REPL-1.003029-5.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Devel-REPL/perl-Devel-REPL.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-Completion-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-CompletionDriver-INC-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-CompletionDriver-Keywords-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-DDC-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-DDS-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-Interrupt-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-LexEnv-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-MultiLine-PPI-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-Nopaste-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-PPI-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-Plugin-Refresh-1.003029-5.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Devel-REPL-1.003029-5.el9/perl-Devel-REPL-tests-1.003029-5.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Devel-REPL:  .stamps/perl-Devel-REPL/perl-Devel-REPL.spec.built-stamp
 
ALL_PACKAGES += perl-Digest-MD5-File

.srpms/perl-Digest-MD5-File-0.08-32.el9.src.rpm: perl-Digest-MD5-File/perl-Digest-MD5-File.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Digest-MD5-File-0.08-32.el9/perl-Digest-MD5-File-0.08-32.el9.noarch.rpm : .srpms/perl-Digest-MD5-File-0.08-32.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Digest-MD5-File/perl-Digest-MD5-File.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Digest-MD5-File-0.08-32.el9/perl-Digest-MD5-File-0.08-32.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Digest-MD5-File:  .stamps/perl-Digest-MD5-File/perl-Digest-MD5-File.spec.built-stamp
 
ALL_PACKAGES += perl-Directory-Scratch

.srpms/perl-Directory-Scratch-0.18-24.el9.src.rpm: perl-Directory-Scratch/perl-Directory-Scratch.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Directory-Scratch-0.18-24.el9/perl-Directory-Scratch-0.18-24.el9.noarch.rpm : .srpms/perl-Directory-Scratch-0.18-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Directory-Scratch/perl-Directory-Scratch.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Directory-Scratch-0.18-24.el9/perl-Directory-Scratch-0.18-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Directory-Scratch:  .stamps/perl-Directory-Scratch/perl-Directory-Scratch.spec.built-stamp
 
ALL_PACKAGES += perl-Email-MIME-XPath

.srpms/perl-Email-MIME-XPath-0.005-1.el9.src.rpm: perl-Email-MIME-XPath/perl-Email-MIME-XPath.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Email-MIME-XPath-0.005-1.el9/perl-Email-MIME-XPath-0.005-1.el9.noarch.rpm : .srpms/perl-Email-MIME-XPath-0.005-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Email-MIME-XPath/perl-Email-MIME-XPath.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Email-MIME-XPath-0.005-1.el9/perl-Email-MIME-XPath-0.005-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Email-MIME-XPath: perl-Tree-XPathEngine .stamps/perl-Email-MIME-XPath/perl-Email-MIME-XPath.spec.built-stamp
 
ALL_PACKAGES += perl-Email-Valid

.srpms/perl-Email-Valid-1.203-1.el9.src.rpm: perl-Email-Valid/perl-Email-Valid.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Email-Valid-1.203-1.el9/perl-Email-Valid-1.203-1.el9.noarch.rpm : .srpms/perl-Email-Valid-1.203-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Email-Valid/perl-Email-Valid.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Email-Valid-1.203-1.el9/perl-Email-Valid-1.203-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Email-Valid:  .stamps/perl-Email-Valid/perl-Email-Valid.spec.built-stamp
 
ALL_PACKAGES += perl-EV

.srpms/perl-EV-4.33-11.el9.src.rpm: perl-EV/perl-EV.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-EV-4.33-11.el9/perl-EV-4.33-11.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-EV-4.33-11.el9/perl-EV-debuginfo-4.33-11.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-EV-4.33-11.el9/perl-EV-debugsource-4.33-11.el9.x86_64.rpm : .srpms/perl-EV-4.33-11.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-EV/perl-EV.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-EV-4.33-11.el9/perl-EV-4.33-11.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-EV-4.33-11.el9/perl-EV-debuginfo-4.33-11.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-EV-4.33-11.el9/perl-EV-debugsource-4.33-11.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-EV:  .stamps/perl-EV/perl-EV.spec.built-stamp
 
ALL_PACKAGES += perl-Exception-Class-TryCatch

.srpms/perl-Exception-Class-TryCatch-1.13-26.el9.src.rpm: perl-Exception-Class-TryCatch/perl-Exception-Class-TryCatch.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Exception-Class-TryCatch-1.13-26.el9/perl-Exception-Class-TryCatch-1.13-26.el9.noarch.rpm : .srpms/perl-Exception-Class-TryCatch-1.13-26.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Exception-Class-TryCatch/perl-Exception-Class-TryCatch.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Exception-Class-TryCatch-1.13-26.el9/perl-Exception-Class-TryCatch-1.13-26.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Exception-Class-TryCatch:  .stamps/perl-Exception-Class-TryCatch/perl-Exception-Class-TryCatch.spec.built-stamp
 
ALL_PACKAGES += perl-Exporter-Lite

.srpms/perl-Exporter-Lite-0.09-2.el9.src.rpm: perl-Exporter-Lite/perl-Exporter-Lite.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Exporter-Lite-0.09-2.el9/perl-Exporter-Lite-0.09-2.el9.noarch.rpm : .srpms/perl-Exporter-Lite-0.09-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Exporter-Lite/perl-Exporter-Lite.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Exporter-Lite-0.09-2.el9/perl-Exporter-Lite-0.09-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Exporter-Lite:  .stamps/perl-Exporter-Lite/perl-Exporter-Lite.spec.built-stamp
 
ALL_PACKAGES += perl-Exporter-Tiny

.srpms/perl-Exporter-Tiny-1.006002-1.el9.src.rpm: perl-Exporter-Tiny/perl-Exporter-Tiny.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Exporter-Tiny-1.006002-1.el9/perl-Exporter-Tiny-1.006002-1.el9.noarch.rpm : .srpms/perl-Exporter-Tiny-1.006002-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Exporter-Tiny/perl-Exporter-Tiny.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Exporter-Tiny-1.006002-1.el9/perl-Exporter-Tiny-1.006002-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Exporter-Tiny:  .stamps/perl-Exporter-Tiny/perl-Exporter-Tiny.spec.built-stamp
 
ALL_PACKAGES += perl-File-MMagic

.srpms/perl-File-MMagic-1.30-30.el9.src.rpm: perl-File-MMagic/perl-File-MMagic.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-File-MMagic-1.30-30.el9/perl-File-MMagic-1.30-30.el9.noarch.rpm : .srpms/perl-File-MMagic-1.30-30.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-File-MMagic/perl-File-MMagic.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-File-MMagic-1.30-30.el9/perl-File-MMagic-1.30-30.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-File-MMagic:  .stamps/perl-File-MMagic/perl-File-MMagic.spec.built-stamp
 
ALL_PACKAGES += perl-Finance-Currency-Convert-WebserviceX

.srpms/perl-Finance-Currency-Convert-WebserviceX-0.07001-1.el9.src.rpm: perl-Finance-Currency-Convert-WebserviceX/perl-Finance-Currency-Convert-WebserviceX.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Finance-Currency-Convert-WebserviceX-0.07001-1.el9/perl-Finance-Currency-Convert-WebserviceX-0.07001-1.el9.noarch.rpm : .srpms/perl-Finance-Currency-Convert-WebserviceX-0.07001-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Finance-Currency-Convert-WebserviceX/perl-Finance-Currency-Convert-WebserviceX.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Finance-Currency-Convert-WebserviceX-0.07001-1.el9/perl-Finance-Currency-Convert-WebserviceX-0.07001-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Finance-Currency-Convert-WebserviceX:  .stamps/perl-Finance-Currency-Convert-WebserviceX/perl-Finance-Currency-Convert-WebserviceX.spec.built-stamp
 
ALL_PACKAGES += perl-Finance-IIF

.srpms/perl-Finance-IIF-0.20.01-1.el9.src.rpm: perl-Finance-IIF/perl-Finance-IIF.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Finance-IIF-0.20.01-1.el9/perl-Finance-IIF-0.20.01-1.el9.noarch.rpm : .srpms/perl-Finance-IIF-0.20.01-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Finance-IIF/perl-Finance-IIF.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Finance-IIF-0.20.01-1.el9/perl-Finance-IIF-0.20.01-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Finance-IIF:  .stamps/perl-Finance-IIF/perl-Finance-IIF.spec.built-stamp
 
ALL_PACKAGES += perl-Finance-OFX

.srpms/perl-Finance-OFX-2-1.el9.src.rpm: perl-Finance-OFX/perl-Finance-OFX.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Finance-OFX-2-1.el9/perl-Finance-OFX-2-1.el9.noarch.rpm : .srpms/perl-Finance-OFX-2-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Finance-OFX/perl-Finance-OFX.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Finance-OFX-2-1.el9/perl-Finance-OFX-2-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Finance-OFX:  .stamps/perl-Finance-OFX/perl-Finance-OFX.spec.built-stamp
 
ALL_PACKAGES += perl-Finance-OFX-Parse-Simple

.srpms/perl-Finance-OFX-Parse-Simple-0.07-1.el9.src.rpm: perl-Finance-OFX-Parse-Simple/perl-Finance-OFX-Parse-Simple.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Finance-OFX-Parse-Simple-0.07-1.el9/perl-Finance-OFX-Parse-Simple-0.07-1.el9.noarch.rpm : .srpms/perl-Finance-OFX-Parse-Simple-0.07-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Finance-OFX-Parse-Simple/perl-Finance-OFX-Parse-Simple.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Finance-OFX-Parse-Simple-0.07-1.el9/perl-Finance-OFX-Parse-Simple-0.07-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Finance-OFX-Parse-Simple:  .stamps/perl-Finance-OFX-Parse-Simple/perl-Finance-OFX-Parse-Simple.spec.built-stamp
 
ALL_PACKAGES += perl-Furl

.srpms/perl-Furl-3.14-1.el9.src.rpm: perl-Furl/perl-Furl.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Furl-3.14-1.el9/perl-Furl-3.14-1.el9.noarch.rpm : .srpms/perl-Furl-3.14-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Furl/perl-Furl.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Furl-3.14-1.el9/perl-Furl-3.14-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Furl: perl-HTTP-CookieJar perl-HTTP-Body perl-Net-IDN-Encode .stamps/perl-Furl/perl-Furl.spec.built-stamp
 
ALL_PACKAGES += perl-Future-Mojo

.srpms/perl-Future-Mojo-1.002-1.el9.src.rpm: perl-Future-Mojo/perl-Future-Mojo.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Future-Mojo-1.002-1.el9/perl-Future-Mojo-1.002-1.el9.noarch.rpm : .srpms/perl-Future-Mojo-1.002-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Future-Mojo/perl-Future-Mojo.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Future-Mojo-1.002-1.el9/perl-Future-Mojo-1.002-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Future-Mojo:  .stamps/perl-Future-Mojo/perl-Future-Mojo.spec.built-stamp
 
ALL_PACKAGES += perl-Gazelle

.srpms/perl-Gazelle-0.49-2.el9.src.rpm: perl-Gazelle/perl-Gazelle.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Gazelle-0.49-2.el9/perl-Gazelle-0.49-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Gazelle-0.49-2.el9/perl-Gazelle-debuginfo-0.49-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Gazelle-0.49-2.el9/perl-Gazelle-debugsource-0.49-2.el9.x86_64.rpm : .srpms/perl-Gazelle-0.49-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Gazelle/perl-Gazelle.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Gazelle-0.49-2.el9/perl-Gazelle-0.49-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Gazelle-0.49-2.el9/perl-Gazelle-debuginfo-0.49-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Gazelle-0.49-2.el9/perl-Gazelle-debugsource-0.49-2.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Gazelle: perl-Guard perl-Parallel-Prefork perl-Server-Starter .stamps/perl-Gazelle/perl-Gazelle.spec.built-stamp
 
ALL_PACKAGES += perl-Geo-StreetAddress-US

.srpms/perl-Geo-StreetAddress-US-1.04-1.el9.src.rpm: perl-Geo-StreetAddress-US/perl-Geo-StreetAddress-US.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Geo-StreetAddress-US-1.04-1.el9/perl-Geo-StreetAddress-US-1.04-1.el9.noarch.rpm : .srpms/perl-Geo-StreetAddress-US-1.04-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Geo-StreetAddress-US/perl-Geo-StreetAddress-US.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Geo-StreetAddress-US-1.04-1.el9/perl-Geo-StreetAddress-US-1.04-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Geo-StreetAddress-US:  .stamps/perl-Geo-StreetAddress-US/perl-Geo-StreetAddress-US.spec.built-stamp
 
ALL_PACKAGES += perl-Getopt-Usaginator

.srpms/perl-Getopt-Usaginator-0.0012-35.el9.src.rpm: perl-Getopt-Usaginator/perl-Getopt-Usaginator.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Getopt-Usaginator-0.0012-35.el9/perl-Getopt-Usaginator-0.0012-35.el9.noarch.rpm : .srpms/perl-Getopt-Usaginator-0.0012-35.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Getopt-Usaginator/perl-Getopt-Usaginator.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Getopt-Usaginator-0.0012-35.el9/perl-Getopt-Usaginator-0.0012-35.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Getopt-Usaginator: perl-Package-Pkg .stamps/perl-Getopt-Usaginator/perl-Getopt-Usaginator.spec.built-stamp
 
ALL_PACKAGES += perl-Gravatar-URL

.srpms/perl-Gravatar-URL-1.07-20.el9.src.rpm: perl-Gravatar-URL/perl-Gravatar-URL.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Gravatar-URL-1.07-20.el9/perl-Gravatar-URL-1.07-20.el9.noarch.rpm : .srpms/perl-Gravatar-URL-1.07-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Gravatar-URL/perl-Gravatar-URL.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Gravatar-URL-1.07-20.el9/perl-Gravatar-URL-1.07-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Gravatar-URL: perl-Test-MockRandom .stamps/perl-Gravatar-URL/perl-Gravatar-URL.spec.built-stamp
 
ALL_PACKAGES += perl-Guard

.srpms/perl-Guard-1.023-26.el9.src.rpm: perl-Guard/perl-Guard.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Guard-1.023-26.el9/perl-Guard-1.023-26.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Guard-1.023-26.el9/perl-Guard-debuginfo-1.023-26.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Guard-1.023-26.el9/perl-Guard-debugsource-1.023-26.el9.x86_64.rpm : .srpms/perl-Guard-1.023-26.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Guard/perl-Guard.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Guard-1.023-26.el9/perl-Guard-1.023-26.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Guard-1.023-26.el9/perl-Guard-debuginfo-1.023-26.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Guard-1.023-26.el9/perl-Guard-debugsource-1.023-26.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Guard:  .stamps/perl-Guard/perl-Guard.spec.built-stamp
 
ALL_PACKAGES += perl-Hash-SafeKeys

.srpms/perl-Hash-SafeKeys-0.04-1.el9.src.rpm: perl-Hash-SafeKeys/perl-Hash-SafeKeys.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Hash-SafeKeys-0.04-1.el9/perl-Hash-SafeKeys-0.04-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Hash-SafeKeys-0.04-1.el9/perl-Hash-SafeKeys-debuginfo-0.04-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Hash-SafeKeys-0.04-1.el9/perl-Hash-SafeKeys-debugsource-0.04-1.el9.x86_64.rpm : .srpms/perl-Hash-SafeKeys-0.04-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Hash-SafeKeys/perl-Hash-SafeKeys.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Hash-SafeKeys-0.04-1.el9/perl-Hash-SafeKeys-0.04-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Hash-SafeKeys-0.04-1.el9/perl-Hash-SafeKeys-debuginfo-0.04-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Hash-SafeKeys-0.04-1.el9/perl-Hash-SafeKeys-debugsource-0.04-1.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Hash-SafeKeys:  .stamps/perl-Hash-SafeKeys/perl-Hash-SafeKeys.spec.built-stamp
 
ALL_PACKAGES += perl-Hash-Util-FieldHash-Compat

.srpms/perl-Hash-Util-FieldHash-Compat-0.11-22.el9.src.rpm: perl-Hash-Util-FieldHash-Compat/perl-Hash-Util-FieldHash-Compat.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Hash-Util-FieldHash-Compat-0.11-22.el9/perl-Hash-Util-FieldHash-Compat-0.11-22.el9.noarch.rpm : .srpms/perl-Hash-Util-FieldHash-Compat-0.11-22.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Hash-Util-FieldHash-Compat/perl-Hash-Util-FieldHash-Compat.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Hash-Util-FieldHash-Compat-0.11-22.el9/perl-Hash-Util-FieldHash-Compat-0.11-22.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Hash-Util-FieldHash-Compat: perl-Tie-RefHash-Weak .stamps/perl-Hash-Util-FieldHash-Compat/perl-Hash-Util-FieldHash-Compat.spec.built-stamp
 
ALL_PACKAGES += perl-HTML-Form

.srpms/perl-HTML-Form-6.11-2.el9.src.rpm: perl-HTML-Form/perl-HTML-Form.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTML-Form-6.11-2.el9/perl-HTML-Form-6.11-2.el9.noarch.rpm : .srpms/perl-HTML-Form-6.11-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTML-Form/perl-HTML-Form.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTML-Form-6.11-2.el9/perl-HTML-Form-6.11-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTML-Form:  .stamps/perl-HTML-Form/perl-HTML-Form.spec.built-stamp
 
ALL_PACKAGES += perl-HTML-FormatText-WithLinks

.srpms/perl-HTML-FormatText-WithLinks-0.15-24.el9.src.rpm: perl-HTML-FormatText-WithLinks/perl-HTML-FormatText-WithLinks.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTML-FormatText-WithLinks-0.15-24.el9/perl-HTML-FormatText-WithLinks-0.15-24.el9.noarch.rpm : .srpms/perl-HTML-FormatText-WithLinks-0.15-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTML-FormatText-WithLinks/perl-HTML-FormatText-WithLinks.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTML-FormatText-WithLinks-0.15-24.el9/perl-HTML-FormatText-WithLinks-0.15-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTML-FormatText-WithLinks:  .stamps/perl-HTML-FormatText-WithLinks/perl-HTML-FormatText-WithLinks.spec.built-stamp
 
ALL_PACKAGES += perl-HTML-FormatText-WithLinks-AndTables

.srpms/perl-HTML-FormatText-WithLinks-AndTables-0.07-21.el9.src.rpm: perl-HTML-FormatText-WithLinks-AndTables/perl-HTML-FormatText-WithLinks-AndTables.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTML-FormatText-WithLinks-AndTables-0.07-21.el9/perl-HTML-FormatText-WithLinks-AndTables-0.07-21.el9.noarch.rpm : .srpms/perl-HTML-FormatText-WithLinks-AndTables-0.07-21.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTML-FormatText-WithLinks-AndTables/perl-HTML-FormatText-WithLinks-AndTables.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTML-FormatText-WithLinks-AndTables-0.07-21.el9/perl-HTML-FormatText-WithLinks-AndTables-0.07-21.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTML-FormatText-WithLinks-AndTables: perl-HTML-FormatText-WithLinks .stamps/perl-HTML-FormatText-WithLinks-AndTables/perl-HTML-FormatText-WithLinks-AndTables.spec.built-stamp
 
ALL_PACKAGES += perl-HTML-Lint

.srpms/perl-HTML-Lint-2.32-15.el9.src.rpm: perl-HTML-Lint/perl-HTML-Lint.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTML-Lint-2.32-15.el9/perl-HTML-Lint-2.32-15.el9.noarch.rpm : .srpms/perl-HTML-Lint-2.32-15.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTML-Lint/perl-HTML-Lint.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTML-Lint-2.32-15.el9/perl-HTML-Lint-2.32-15.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTML-Lint:  .stamps/perl-HTML-Lint/perl-HTML-Lint.spec.built-stamp
 
ALL_PACKAGES += perl-HTML-Scrubber

.srpms/perl-HTML-Scrubber-0.19-12.el9.src.rpm: perl-HTML-Scrubber/perl-HTML-Scrubber.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTML-Scrubber-0.19-12.el9/perl-HTML-Scrubber-0.19-12.el9.noarch.rpm : .srpms/perl-HTML-Scrubber-0.19-12.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTML-Scrubber/perl-HTML-Scrubber.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTML-Scrubber-0.19-12.el9/perl-HTML-Scrubber-0.19-12.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTML-Scrubber:  .stamps/perl-HTML-Scrubber/perl-HTML-Scrubber.spec.built-stamp
 
ALL_PACKAGES += perl-HTML-Scrubber-StripScripts

.srpms/perl-HTML-Scrubber-StripScripts-0.02-1.el9.src.rpm: perl-HTML-Scrubber-StripScripts/perl-HTML-Scrubber-StripScripts.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTML-Scrubber-StripScripts-0.02-1.el9/perl-HTML-Scrubber-StripScripts-0.02-1.el9.noarch.rpm : .srpms/perl-HTML-Scrubber-StripScripts-0.02-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTML-Scrubber-StripScripts/perl-HTML-Scrubber-StripScripts.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTML-Scrubber-StripScripts-0.02-1.el9/perl-HTML-Scrubber-StripScripts-0.02-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTML-Scrubber-StripScripts: perl-HTML-Scrubber .stamps/perl-HTML-Scrubber-StripScripts/perl-HTML-Scrubber-StripScripts.spec.built-stamp
 
ALL_PACKAGES += perl-HTTP-Body

.srpms/perl-HTTP-Body-1.22-25.el9.src.rpm: perl-HTTP-Body/perl-HTTP-Body.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Body-1.22-25.el9/perl-HTTP-Body-1.22-25.el9.noarch.rpm : .srpms/perl-HTTP-Body-1.22-25.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTTP-Body/perl-HTTP-Body.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Body-1.22-25.el9/perl-HTTP-Body-1.22-25.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTTP-Body:  .stamps/perl-HTTP-Body/perl-HTTP-Body.spec.built-stamp
 
ALL_PACKAGES += perl-HTTP-CookieJar

.srpms/perl-HTTP-CookieJar-0.014-2.el9.src.rpm: perl-HTTP-CookieJar/perl-HTTP-CookieJar.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTTP-CookieJar-0.014-2.el9/perl-HTTP-CookieJar-0.014-2.el9.noarch.rpm : .srpms/perl-HTTP-CookieJar-0.014-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTTP-CookieJar/perl-HTTP-CookieJar.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTTP-CookieJar-0.014-2.el9/perl-HTTP-CookieJar-0.014-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTTP-CookieJar: perl-Mozilla-PublicSuffix .stamps/perl-HTTP-CookieJar/perl-HTTP-CookieJar.spec.built-stamp
 
ALL_PACKAGES += perl-HTTP-Exception

.srpms/perl-HTTP-Exception-0.04007-14.el9.src.rpm: perl-HTTP-Exception/perl-HTTP-Exception.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Exception-0.04007-14.el9/perl-HTTP-Exception-0.04007-14.el9.noarch.rpm : .srpms/perl-HTTP-Exception-0.04007-14.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTTP-Exception/perl-HTTP-Exception.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Exception-0.04007-14.el9/perl-HTTP-Exception-0.04007-14.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTTP-Exception:  .stamps/perl-HTTP-Exception/perl-HTTP-Exception.spec.built-stamp
 
ALL_PACKAGES += perl-HTTP-Response-Encoding

.srpms/perl-HTTP-Response-Encoding-0.06-40.el9.src.rpm: perl-HTTP-Response-Encoding/perl-HTTP-Response-Encoding.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Response-Encoding-0.06-40.el9/perl-HTTP-Response-Encoding-0.06-40.el9.noarch.rpm : .srpms/perl-HTTP-Response-Encoding-0.06-40.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTTP-Response-Encoding/perl-HTTP-Response-Encoding.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Response-Encoding-0.06-40.el9/perl-HTTP-Response-Encoding-0.06-40.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTTP-Response-Encoding:  .stamps/perl-HTTP-Response-Encoding/perl-HTTP-Response-Encoding.spec.built-stamp
 
ALL_PACKAGES += perl-HTTP-Response-Stringable

.srpms/perl-HTTP-Response-Stringable-0.0002-1.el9.src.rpm: perl-HTTP-Response-Stringable/perl-HTTP-Response-Stringable.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Response-Stringable-0.0002-1.el9/perl-HTTP-Response-Stringable-0.0002-1.el9.noarch.rpm : .srpms/perl-HTTP-Response-Stringable-0.0002-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTTP-Response-Stringable/perl-HTTP-Response-Stringable.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Response-Stringable-0.0002-1.el9/perl-HTTP-Response-Stringable-0.0002-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTTP-Response-Stringable:  .stamps/perl-HTTP-Response-Stringable/perl-HTTP-Response-Stringable.spec.built-stamp
 
ALL_PACKAGES += perl-HTTP-Server-Simple

.srpms/perl-HTTP-Server-Simple-0.52-20.el9.src.rpm: perl-HTTP-Server-Simple/perl-HTTP-Server-Simple.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Server-Simple-0.52-20.el9/perl-HTTP-Server-Simple-0.52-20.el9.noarch.rpm : .srpms/perl-HTTP-Server-Simple-0.52-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-HTTP-Server-Simple/perl-HTTP-Server-Simple.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-HTTP-Server-Simple-0.52-20.el9/perl-HTTP-Server-Simple-0.52-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-HTTP-Server-Simple:  .stamps/perl-HTTP-Server-Simple/perl-HTTP-Server-Simple.spec.built-stamp
 
ALL_PACKAGES += perl-IO-AIO

.srpms/perl-IO-AIO-4.80-1.el9.src.rpm: perl-IO-AIO/perl-IO-AIO.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-IO-AIO-4.80-1.el9/perl-IO-AIO-4.80-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-IO-AIO-4.80-1.el9/treescan-4.80-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-IO-AIO-4.80-1.el9/perl-IO-AIO-debuginfo-4.80-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-IO-AIO-4.80-1.el9/perl-IO-AIO-debugsource-4.80-1.el9.x86_64.rpm : .srpms/perl-IO-AIO-4.80-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-IO-AIO/perl-IO-AIO.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-IO-AIO-4.80-1.el9/perl-IO-AIO-4.80-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-IO-AIO-4.80-1.el9/treescan-4.80-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-IO-AIO-4.80-1.el9/perl-IO-AIO-debuginfo-4.80-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-IO-AIO-4.80-1.el9/perl-IO-AIO-debugsource-4.80-1.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-IO-AIO:  .stamps/perl-IO-AIO/perl-IO-AIO.spec.built-stamp
 
ALL_PACKAGES += perl-IO-Async

.srpms/perl-IO-Async-0.802-3.el9.src.rpm: perl-IO-Async/perl-IO-Async.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-IO-Async-0.802-3.el9/perl-IO-Async-0.802-3.el9.noarch.rpm : .srpms/perl-IO-Async-0.802-3.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-IO-Async/perl-IO-Async.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-IO-Async-0.802-3.el9/perl-IO-Async-0.802-3.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-IO-Async:  .stamps/perl-IO-Async/perl-IO-Async.spec.built-stamp
 
ALL_PACKAGES += perl-IO-Interactive

.srpms/perl-IO-Interactive-1.023-8.el9.src.rpm: perl-IO-Interactive/perl-IO-Interactive.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-IO-Interactive-1.023-8.el9/perl-IO-Interactive-1.023-8.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-IO-Interactive-1.023-8.el9/perl-IO-Interactive-tests-1.023-8.el9.noarch.rpm : .srpms/perl-IO-Interactive-1.023-8.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-IO-Interactive/perl-IO-Interactive.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-IO-Interactive-1.023-8.el9/perl-IO-Interactive-1.023-8.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-IO-Interactive-1.023-8.el9/perl-IO-Interactive-tests-1.023-8.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-IO-Interactive:  .stamps/perl-IO-Interactive/perl-IO-Interactive.spec.built-stamp
 
ALL_PACKAGES += perl-IO-Socket-SSL

.srpms/perl-IO-Socket-SSL-2.083-1.el9.src.rpm: perl-IO-Socket-SSL/perl-IO-Socket-SSL.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-IO-Socket-SSL-2.083-1.el9/perl-IO-Socket-SSL-2.083-1.el9.noarch.rpm : .srpms/perl-IO-Socket-SSL-2.083-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-IO-Socket-SSL/perl-IO-Socket-SSL.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-IO-Socket-SSL-2.083-1.el9/perl-IO-Socket-SSL-2.083-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-IO-Socket-SSL:  .stamps/perl-IO-Socket-SSL/perl-IO-Socket-SSL.spec.built-stamp
 
ALL_PACKAGES += perl-IPC-Signal

.srpms/perl-IPC-Signal-1.00-37.el9.src.rpm: perl-IPC-Signal/perl-IPC-Signal.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-IPC-Signal-1.00-37.el9/perl-IPC-Signal-1.00-37.el9.noarch.rpm : .srpms/perl-IPC-Signal-1.00-37.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-IPC-Signal/perl-IPC-Signal.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-IPC-Signal-1.00-37.el9/perl-IPC-Signal-1.00-37.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-IPC-Signal:  .stamps/perl-IPC-Signal/perl-IPC-Signal.spec.built-stamp
 
ALL_PACKAGES += perl-Kavorka

.srpms/perl-Kavorka-0.039-1.el9.src.rpm: perl-Kavorka/perl-Kavorka.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Kavorka-0.039-1.el9/perl-Kavorka-0.039-1.el9.noarch.rpm : .srpms/perl-Kavorka-0.039-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Kavorka/perl-Kavorka.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Kavorka-0.039-1.el9/perl-Kavorka-0.039-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Kavorka: perl-Parse-Keyword .stamps/perl-Kavorka/perl-Kavorka.spec.built-stamp
 
ALL_PACKAGES += perl-libnet

.srpms/perl-libnet-3.15-1.el9.src.rpm: perl-libnet/perl-libnet.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-libnet-3.15-1.el9/perl-libnet-3.15-1.el9.noarch.rpm : .srpms/perl-libnet-3.15-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-libnet/perl-libnet.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-libnet-3.15-1.el9/perl-libnet-3.15-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-libnet:  .stamps/perl-libnet/perl-libnet.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-EN-FindNumber

.srpms/perl-Lingua-EN-FindNumber-1.32-22.el9.src.rpm: perl-Lingua-EN-FindNumber/perl-Lingua-EN-FindNumber.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-FindNumber-1.32-22.el9/perl-Lingua-EN-FindNumber-1.32-22.el9.noarch.rpm : .srpms/perl-Lingua-EN-FindNumber-1.32-22.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-EN-FindNumber/perl-Lingua-EN-FindNumber.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-FindNumber-1.32-22.el9/perl-Lingua-EN-FindNumber-1.32-22.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-EN-FindNumber: perl-Lingua-EN-Words2Nums .stamps/perl-Lingua-EN-FindNumber/perl-Lingua-EN-FindNumber.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-EN-Inflect-Number

.srpms/perl-Lingua-EN-Inflect-Number-1.12-23.el9.src.rpm: perl-Lingua-EN-Inflect-Number/perl-Lingua-EN-Inflect-Number.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Inflect-Number-1.12-23.el9/perl-Lingua-EN-Inflect-Number-1.12-23.el9.noarch.rpm : .srpms/perl-Lingua-EN-Inflect-Number-1.12-23.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-EN-Inflect-Number/perl-Lingua-EN-Inflect-Number.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Inflect-Number-1.12-23.el9/perl-Lingua-EN-Inflect-Number-1.12-23.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-EN-Inflect-Number:  .stamps/perl-Lingua-EN-Inflect-Number/perl-Lingua-EN-Inflect-Number.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-EN-Inflect-Phrase

.srpms/perl-Lingua-EN-Inflect-Phrase-0.20-17.el9.src.rpm: perl-Lingua-EN-Inflect-Phrase/perl-Lingua-EN-Inflect-Phrase.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Inflect-Phrase-0.20-17.el9/perl-Lingua-EN-Inflect-Phrase-0.20-17.el9.noarch.rpm : .srpms/perl-Lingua-EN-Inflect-Phrase-0.20-17.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-EN-Inflect-Phrase/perl-Lingua-EN-Inflect-Phrase.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Inflect-Phrase-0.20-17.el9/perl-Lingua-EN-Inflect-Phrase-0.20-17.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-EN-Inflect-Phrase: perl-Lingua-EN-Inflect-Number perl-Lingua-EN-FindNumber perl-Lingua-EN-Number-IsOrdinal perl-Lingua-EN-Tagger .stamps/perl-Lingua-EN-Inflect-Phrase/perl-Lingua-EN-Inflect-Phrase.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-EN-Number-IsOrdinal

.srpms/perl-Lingua-EN-Number-IsOrdinal-0.05-24.el9.src.rpm: perl-Lingua-EN-Number-IsOrdinal/perl-Lingua-EN-Number-IsOrdinal.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Number-IsOrdinal-0.05-24.el9/perl-Lingua-EN-Number-IsOrdinal-0.05-24.el9.noarch.rpm : .srpms/perl-Lingua-EN-Number-IsOrdinal-0.05-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-EN-Number-IsOrdinal/perl-Lingua-EN-Number-IsOrdinal.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Number-IsOrdinal-0.05-24.el9/perl-Lingua-EN-Number-IsOrdinal-0.05-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-EN-Number-IsOrdinal: perl-Lingua-EN-FindNumber .stamps/perl-Lingua-EN-Number-IsOrdinal/perl-Lingua-EN-Number-IsOrdinal.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-EN-Tagger

.srpms/perl-Lingua-EN-Tagger-0.31-12.el9.src.rpm: perl-Lingua-EN-Tagger/perl-Lingua-EN-Tagger.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Tagger-0.31-12.el9/perl-Lingua-EN-Tagger-0.31-12.el9.x86_64.rpm : .srpms/perl-Lingua-EN-Tagger-0.31-12.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-EN-Tagger/perl-Lingua-EN-Tagger.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Tagger-0.31-12.el9/perl-Lingua-EN-Tagger-0.31-12.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-EN-Tagger: perl-Lingua-Stem .stamps/perl-Lingua-EN-Tagger/perl-Lingua-EN-Tagger.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-EN-Words2Nums

.srpms/perl-Lingua-EN-Words2Nums-0.18-24.el9.src.rpm: perl-Lingua-EN-Words2Nums/perl-Lingua-EN-Words2Nums.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Words2Nums-0.18-24.el9/perl-Lingua-EN-Words2Nums-0.18-24.el9.noarch.rpm : .srpms/perl-Lingua-EN-Words2Nums-0.18-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-EN-Words2Nums/perl-Lingua-EN-Words2Nums.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-EN-Words2Nums-0.18-24.el9/perl-Lingua-EN-Words2Nums-0.18-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-EN-Words2Nums:  .stamps/perl-Lingua-EN-Words2Nums/perl-Lingua-EN-Words2Nums.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-PT-Stemmer

.srpms/perl-Lingua-PT-Stemmer-0.02-21.el9.src.rpm: perl-Lingua-PT-Stemmer/perl-Lingua-PT-Stemmer.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-PT-Stemmer-0.02-21.el9/perl-Lingua-PT-Stemmer-0.02-21.el9.noarch.rpm : .srpms/perl-Lingua-PT-Stemmer-0.02-21.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-PT-Stemmer/perl-Lingua-PT-Stemmer.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-PT-Stemmer-0.02-21.el9/perl-Lingua-PT-Stemmer-0.02-21.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-PT-Stemmer:  .stamps/perl-Lingua-PT-Stemmer/perl-Lingua-PT-Stemmer.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-Stem

.srpms/perl-Lingua-Stem-2.31-8.el9.src.rpm: perl-Lingua-Stem/perl-Lingua-Stem.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-2.31-8.el9/perl-Lingua-Stem-2.31-8.el9.noarch.rpm : .srpms/perl-Lingua-Stem-2.31-8.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-Stem/perl-Lingua-Stem.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-2.31-8.el9/perl-Lingua-Stem-2.31-8.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-Stem: perl-Lingua-PT-Stemmer perl-Lingua-Stem-Fr perl-Lingua-Stem-It perl-Lingua-Stem-Ru perl-Lingua-Stem-Snowball-Da perl-Snowball-Norwegian perl-Snowball-Swedish perl-Text-German .stamps/perl-Lingua-Stem/perl-Lingua-Stem.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-Stem-Fr

.srpms/perl-Lingua-Stem-Fr-0.02-37.el9.src.rpm: perl-Lingua-Stem-Fr/perl-Lingua-Stem-Fr.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-Fr-0.02-37.el9/perl-Lingua-Stem-Fr-0.02-37.el9.noarch.rpm : .srpms/perl-Lingua-Stem-Fr-0.02-37.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-Stem-Fr/perl-Lingua-Stem-Fr.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-Fr-0.02-37.el9/perl-Lingua-Stem-Fr-0.02-37.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-Stem-Fr:  .stamps/perl-Lingua-Stem-Fr/perl-Lingua-Stem-Fr.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-Stem-It

.srpms/perl-Lingua-Stem-It-0.02-37.el9.src.rpm: perl-Lingua-Stem-It/perl-Lingua-Stem-It.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-It-0.02-37.el9/perl-Lingua-Stem-It-0.02-37.el9.noarch.rpm : .srpms/perl-Lingua-Stem-It-0.02-37.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-Stem-It/perl-Lingua-Stem-It.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-It-0.02-37.el9/perl-Lingua-Stem-It-0.02-37.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-Stem-It:  .stamps/perl-Lingua-Stem-It/perl-Lingua-Stem-It.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-Stem-Ru

.srpms/perl-Lingua-Stem-Ru-0.04-21.el9.src.rpm: perl-Lingua-Stem-Ru/perl-Lingua-Stem-Ru.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-Ru-0.04-21.el9/perl-Lingua-Stem-Ru-0.04-21.el9.noarch.rpm : .srpms/perl-Lingua-Stem-Ru-0.04-21.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-Stem-Ru/perl-Lingua-Stem-Ru.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-Ru-0.04-21.el9/perl-Lingua-Stem-Ru-0.04-21.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-Stem-Ru:  .stamps/perl-Lingua-Stem-Ru/perl-Lingua-Stem-Ru.spec.built-stamp
 
ALL_PACKAGES += perl-Lingua-Stem-Snowball-Da

.srpms/perl-Lingua-Stem-Snowball-Da-1.01-37.el9.src.rpm: perl-Lingua-Stem-Snowball-Da/perl-Lingua-Stem-Snowball-Da.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-Snowball-Da-1.01-37.el9/perl-Lingua-Stem-Snowball-Da-1.01-37.el9.noarch.rpm : .srpms/perl-Lingua-Stem-Snowball-Da-1.01-37.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Lingua-Stem-Snowball-Da/perl-Lingua-Stem-Snowball-Da.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Lingua-Stem-Snowball-Da-1.01-37.el9/perl-Lingua-Stem-Snowball-Da-1.01-37.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Lingua-Stem-Snowball-Da:  .stamps/perl-Lingua-Stem-Snowball-Da/perl-Lingua-Stem-Snowball-Da.spec.built-stamp
 
ALL_PACKAGES += perl-Locale-Codes

.srpms/perl-Locale-Codes-3.74-1.el9.src.rpm: perl-Locale-Codes/perl-Locale-Codes.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Locale-Codes-3.74-1.el9/perl-Locale-Codes-3.74-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Locale-Codes-3.74-1.el9/perl-Locale-Codes-tests-3.74-1.el9.noarch.rpm : .srpms/perl-Locale-Codes-3.74-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Locale-Codes/perl-Locale-Codes.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Locale-Codes-3.74-1.el9/perl-Locale-Codes-3.74-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Locale-Codes-3.74-1.el9/perl-Locale-Codes-tests-3.74-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Locale-Codes:  .stamps/perl-Locale-Codes/perl-Locale-Codes.spec.built-stamp
 
ALL_PACKAGES += perl-Locale-Currency-Format

.srpms/perl-Locale-Currency-Format-1.35-22.el9.src.rpm: perl-Locale-Currency-Format/perl-Locale-Currency-Format.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Locale-Currency-Format-1.35-22.el9/perl-Locale-Currency-Format-1.35-22.el9.noarch.rpm : .srpms/perl-Locale-Currency-Format-1.35-22.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Locale-Currency-Format/perl-Locale-Currency-Format.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Locale-Currency-Format-1.35-22.el9/perl-Locale-Currency-Format-1.35-22.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Locale-Currency-Format:  .stamps/perl-Locale-Currency-Format/perl-Locale-Currency-Format.spec.built-stamp
 
ALL_PACKAGES += perl-Log-Dispatch-Binlog

.srpms/perl-Log-Dispatch-Binlog-0.02-1.el9.src.rpm: perl-Log-Dispatch-Binlog/perl-Log-Dispatch-Binlog.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Log-Dispatch-Binlog-0.02-1.el9/perl-Log-Dispatch-Binlog-0.02-1.el9.noarch.rpm : .srpms/perl-Log-Dispatch-Binlog-0.02-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Log-Dispatch-Binlog/perl-Log-Dispatch-Binlog.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Log-Dispatch-Binlog-0.02-1.el9/perl-Log-Dispatch-Binlog-0.02-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Log-Dispatch-Binlog: perl-Test-TempDir .stamps/perl-Log-Dispatch-Binlog/perl-Log-Dispatch-Binlog.spec.built-stamp
 
ALL_PACKAGES += perl-Log-Dispatch-Config

.srpms/perl-Log-Dispatch-Config-1.04-32.el9.src.rpm: perl-Log-Dispatch-Config/perl-Log-Dispatch-Config.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Log-Dispatch-Config-1.04-32.el9/perl-Log-Dispatch-Config-1.04-32.el9.noarch.rpm : .srpms/perl-Log-Dispatch-Config-1.04-32.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Log-Dispatch-Config/perl-Log-Dispatch-Config.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Log-Dispatch-Config-1.04-32.el9/perl-Log-Dispatch-Config-1.04-32.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Log-Dispatch-Config:  .stamps/perl-Log-Dispatch-Config/perl-Log-Dispatch-Config.spec.built-stamp
 
ALL_PACKAGES += perl-Log-Dispatch-Configurator-Any

.srpms/perl-Log-Dispatch-Configurator-Any-1.122640-28.el9.src.rpm: perl-Log-Dispatch-Configurator-Any/perl-Log-Dispatch-Configurator-Any.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Log-Dispatch-Configurator-Any-1.122640-28.el9/perl-Log-Dispatch-Configurator-Any-1.122640-28.el9.noarch.rpm : .srpms/perl-Log-Dispatch-Configurator-Any-1.122640-28.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Log-Dispatch-Configurator-Any/perl-Log-Dispatch-Configurator-Any.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Log-Dispatch-Configurator-Any-1.122640-28.el9/perl-Log-Dispatch-Configurator-Any-1.122640-28.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Log-Dispatch-Configurator-Any: perl-Log-Dispatch-Config .stamps/perl-Log-Dispatch-Configurator-Any/perl-Log-Dispatch-Configurator-Any.spec.built-stamp
 
ALL_PACKAGES += perl-Log-Dispatch-File-Rolling

.srpms/perl-Log-Dispatch-File-Rolling-1.09-1.el9.src.rpm: perl-Log-Dispatch-File-Rolling/perl-Log-Dispatch-File-Rolling.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Log-Dispatch-File-Rolling-1.09-1.el9/perl-Log-Dispatch-File-Rolling-1.09-1.el9.noarch.rpm : .srpms/perl-Log-Dispatch-File-Rolling-1.09-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Log-Dispatch-File-Rolling/perl-Log-Dispatch-File-Rolling.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Log-Dispatch-File-Rolling-1.09-1.el9/perl-Log-Dispatch-File-Rolling-1.09-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Log-Dispatch-File-Rolling:  .stamps/perl-Log-Dispatch-File-Rolling/perl-Log-Dispatch-File-Rolling.spec.built-stamp
 
ALL_PACKAGES += perl-Log-Syslog-Constants

.srpms/perl-Log-Syslog-Constants-1.02-1.el9.src.rpm: perl-Log-Syslog-Constants/perl-Log-Syslog-Constants.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Log-Syslog-Constants-1.02-1.el9/perl-Log-Syslog-Constants-1.02-1.el9.noarch.rpm : .srpms/perl-Log-Syslog-Constants-1.02-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Log-Syslog-Constants/perl-Log-Syslog-Constants.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Log-Syslog-Constants-1.02-1.el9/perl-Log-Syslog-Constants-1.02-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Log-Syslog-Constants:  .stamps/perl-Log-Syslog-Constants/perl-Log-Syslog-Constants.spec.built-stamp
 
ALL_PACKAGES += perl-Log-Syslog-Fast

.srpms/perl-Log-Syslog-Fast-0.67-1.el9.src.rpm: perl-Log-Syslog-Fast/perl-Log-Syslog-Fast.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Log-Syslog-Fast-0.67-1.el9/perl-Log-Syslog-Fast-0.67-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Log-Syslog-Fast-0.67-1.el9/perl-Log-Syslog-Fast-debuginfo-0.67-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Log-Syslog-Fast-0.67-1.el9/perl-Log-Syslog-Fast-debugsource-0.67-1.el9.x86_64.rpm : .srpms/perl-Log-Syslog-Fast-0.67-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Log-Syslog-Fast/perl-Log-Syslog-Fast.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Log-Syslog-Fast-0.67-1.el9/perl-Log-Syslog-Fast-0.67-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Log-Syslog-Fast-0.67-1.el9/perl-Log-Syslog-Fast-debuginfo-0.67-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Log-Syslog-Fast-0.67-1.el9/perl-Log-Syslog-Fast-debugsource-0.67-1.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Log-Syslog-Fast: perl-Log-Syslog-Constants .stamps/perl-Log-Syslog-Fast/perl-Log-Syslog-Fast.spec.built-stamp
 
ALL_PACKAGES += perl-Math-Random-ISAAC

.srpms/perl-Math-Random-ISAAC-1.004-36.el9.src.rpm: perl-Math-Random-ISAAC/perl-Math-Random-ISAAC.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Math-Random-ISAAC-1.004-36.el9/perl-Math-Random-ISAAC-1.004-36.el9.noarch.rpm : .srpms/perl-Math-Random-ISAAC-1.004-36.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Math-Random-ISAAC/perl-Math-Random-ISAAC.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Math-Random-ISAAC-1.004-36.el9/perl-Math-Random-ISAAC-1.004-36.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Math-Random-ISAAC:  .stamps/perl-Math-Random-ISAAC/perl-Math-Random-ISAAC.spec.built-stamp
 
ALL_PACKAGES += perl-Math-Round

.srpms/perl-Math-Round-0.07-25.el9.src.rpm: perl-Math-Round/perl-Math-Round.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Math-Round-0.07-25.el9/perl-Math-Round-0.07-25.el9.noarch.rpm : .srpms/perl-Math-Round-0.07-25.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Math-Round/perl-Math-Round.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Math-Round-0.07-25.el9/perl-Math-Round-0.07-25.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Math-Round:  .stamps/perl-Math-Round/perl-Math-Round.spec.built-stamp
 
ALL_PACKAGES += perl-Message-Stack

.srpms/perl-Message-Stack-0.22-1.el9.src.rpm: perl-Message-Stack/perl-Message-Stack.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Message-Stack-0.22-1.el9/perl-Message-Stack-0.22-1.el9.noarch.rpm : .srpms/perl-Message-Stack-0.22-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Message-Stack/perl-Message-Stack.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Message-Stack-0.22-1.el9/perl-Message-Stack-0.22-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Message-Stack: perl-MooseX-Aliases perl-MooseX-Storage .stamps/perl-Message-Stack/perl-Message-Stack.spec.built-stamp
 
ALL_PACKAGES += perl-Message-Stack-Parser

.srpms/perl-Message-Stack-Parser-0.06-1.el9.src.rpm: perl-Message-Stack-Parser/perl-Message-Stack-Parser.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Message-Stack-Parser-0.06-1.el9/perl-Message-Stack-Parser-0.06-1.el9.noarch.rpm : .srpms/perl-Message-Stack-Parser-0.06-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Message-Stack-Parser/perl-Message-Stack-Parser.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Message-Stack-Parser-0.06-1.el9/perl-Message-Stack-Parser-0.06-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Message-Stack-Parser: perl-Message-Stack .stamps/perl-Message-Stack-Parser/perl-Message-Stack-Parser.spec.built-stamp
 
ALL_PACKAGES += perl-Method-Signatures-Simple

.srpms/perl-Method-Signatures-Simple-1.07-24.el9.src.rpm: perl-Method-Signatures-Simple/perl-Method-Signatures-Simple.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Method-Signatures-Simple-1.07-24.el9/perl-Method-Signatures-Simple-1.07-24.el9.noarch.rpm : .srpms/perl-Method-Signatures-Simple-1.07-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Method-Signatures-Simple/perl-Method-Signatures-Simple.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Method-Signatures-Simple-1.07-24.el9/perl-Method-Signatures-Simple-1.07-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Method-Signatures-Simple: perl-Devel-Declare .stamps/perl-Method-Signatures-Simple/perl-Method-Signatures-Simple.spec.built-stamp
 
ALL_PACKAGES += perl-Method-Signatures-Simple-ParseKeyword

.srpms/perl-Method-Signatures-Simple-ParseKeyword-1.12-1.el9.src.rpm: perl-Method-Signatures-Simple-ParseKeyword/perl-Method-Signatures-Simple-ParseKeyword.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Method-Signatures-Simple-ParseKeyword-1.12-1.el9/perl-Method-Signatures-Simple-ParseKeyword-1.12-1.el9.noarch.rpm : .srpms/perl-Method-Signatures-Simple-ParseKeyword-1.12-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Method-Signatures-Simple-ParseKeyword/perl-Method-Signatures-Simple-ParseKeyword.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Method-Signatures-Simple-ParseKeyword-1.12-1.el9/perl-Method-Signatures-Simple-ParseKeyword-1.12-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Method-Signatures-Simple-ParseKeyword: perl-Parse-Keyword .stamps/perl-Method-Signatures-Simple-ParseKeyword/perl-Method-Signatures-Simple-ParseKeyword.spec.built-stamp
 
ALL_PACKAGES += perl-Module-Install-ExtraTests

.srpms/perl-Module-Install-ExtraTests-0.008-30.el9.src.rpm: perl-Module-Install-ExtraTests/perl-Module-Install-ExtraTests.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Module-Install-ExtraTests-0.008-30.el9/perl-Module-Install-ExtraTests-0.008-30.el9.noarch.rpm : .srpms/perl-Module-Install-ExtraTests-0.008-30.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Module-Install-ExtraTests/perl-Module-Install-ExtraTests.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Module-Install-ExtraTests-0.008-30.el9/perl-Module-Install-ExtraTests-0.008-30.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Module-Install-ExtraTests:  .stamps/perl-Module-Install-ExtraTests/perl-Module-Install-ExtraTests.spec.built-stamp
 
ALL_PACKAGES += perl-Module-Util

.srpms/perl-Module-Util-1.09-31.el9.src.rpm: perl-Module-Util/perl-Module-Util.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Module-Util-1.09-31.el9/perl-Module-Util-1.09-31.el9.noarch.rpm : .srpms/perl-Module-Util-1.09-31.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Module-Util/perl-Module-Util.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Module-Util-1.09-31.el9/perl-Module-Util-1.09-31.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Module-Util:  .stamps/perl-Module-Util/perl-Module-Util.spec.built-stamp
 
ALL_PACKAGES += perl-Moo

.srpms/perl-Moo-2.005005-3.el9.src.rpm: perl-Moo/perl-Moo.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Moo-2.005005-3.el9/perl-Moo-2.005005-3.el9.noarch.rpm : .srpms/perl-Moo-2.005005-3.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Moo/perl-Moo.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Moo-2.005005-3.el9/perl-Moo-2.005005-3.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Moo:  .stamps/perl-Moo/perl-Moo.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Aliases

.srpms/perl-MooseX-Aliases-0.11-27.el9.src.rpm: perl-MooseX-Aliases/perl-MooseX-Aliases.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Aliases-0.11-27.el9/perl-MooseX-Aliases-0.11-27.el9.noarch.rpm : .srpms/perl-MooseX-Aliases-0.11-27.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Aliases/perl-MooseX-Aliases.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Aliases-0.11-27.el9/perl-MooseX-Aliases-0.11-27.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Aliases:  .stamps/perl-MooseX-Aliases/perl-MooseX-Aliases.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-ClassAttribute

.srpms/perl-MooseX-ClassAttribute-0.29-20.el9.src.rpm: perl-MooseX-ClassAttribute/perl-MooseX-ClassAttribute.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-ClassAttribute-0.29-20.el9/perl-MooseX-ClassAttribute-0.29-20.el9.noarch.rpm : .srpms/perl-MooseX-ClassAttribute-0.29-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-ClassAttribute/perl-MooseX-ClassAttribute.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-ClassAttribute-0.29-20.el9/perl-MooseX-ClassAttribute-0.29-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-ClassAttribute:  .stamps/perl-MooseX-ClassAttribute/perl-MooseX-ClassAttribute.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Clone

.srpms/perl-MooseX-Clone-0.06-25.el9.src.rpm: perl-MooseX-Clone/perl-MooseX-Clone.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Clone-0.06-25.el9/perl-MooseX-Clone-0.06-25.el9.noarch.rpm : .srpms/perl-MooseX-Clone-0.06-25.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Clone/perl-MooseX-Clone.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Clone-0.06-25.el9/perl-MooseX-Clone-0.06-25.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Clone: perl-Data-Visitor perl-Hash-Util-FieldHash-Compat .stamps/perl-MooseX-Clone/perl-MooseX-Clone.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Declare

.srpms/perl-MooseX-Declare-0.43-23.el9.src.rpm: perl-MooseX-Declare/perl-MooseX-Declare.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Declare-0.43-23.el9/perl-MooseX-Declare-0.43-23.el9.noarch.rpm : .srpms/perl-MooseX-Declare-0.43-23.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Declare/perl-MooseX-Declare.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Declare-0.43-23.el9/perl-MooseX-Declare-0.43-23.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Declare: perl-Devel-Declare perl-MooseX-Method-Signatures .stamps/perl-MooseX-Declare/perl-MooseX-Declare.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-LazyRequire

.srpms/perl-MooseX-LazyRequire-0.11-24.el9.src.rpm: perl-MooseX-LazyRequire/perl-MooseX-LazyRequire.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-LazyRequire-0.11-24.el9/perl-MooseX-LazyRequire-0.11-24.el9.noarch.rpm : .srpms/perl-MooseX-LazyRequire-0.11-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-LazyRequire/perl-MooseX-LazyRequire.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-LazyRequire-0.11-24.el9/perl-MooseX-LazyRequire-0.11-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-LazyRequire:  .stamps/perl-MooseX-LazyRequire/perl-MooseX-LazyRequire.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Meta-TypeConstraint-ForceCoercion

.srpms/perl-MooseX-Meta-TypeConstraint-ForceCoercion-0.01-36.el9.src.rpm: perl-MooseX-Meta-TypeConstraint-ForceCoercion/perl-MooseX-Meta-TypeConstraint-ForceCoercion.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Meta-TypeConstraint-ForceCoercion-0.01-36.el9/perl-MooseX-Meta-TypeConstraint-ForceCoercion-0.01-36.el9.noarch.rpm : .srpms/perl-MooseX-Meta-TypeConstraint-ForceCoercion-0.01-36.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Meta-TypeConstraint-ForceCoercion/perl-MooseX-Meta-TypeConstraint-ForceCoercion.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Meta-TypeConstraint-ForceCoercion-0.01-36.el9/perl-MooseX-Meta-TypeConstraint-ForceCoercion-0.01-36.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Meta-TypeConstraint-ForceCoercion:  .stamps/perl-MooseX-Meta-TypeConstraint-ForceCoercion/perl-MooseX-Meta-TypeConstraint-ForceCoercion.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Method-Signatures

.srpms/perl-MooseX-Method-Signatures-0.49-22.el9.src.rpm: perl-MooseX-Method-Signatures/perl-MooseX-Method-Signatures.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Method-Signatures-0.49-22.el9/perl-MooseX-Method-Signatures-0.49-22.el9.noarch.rpm : .srpms/perl-MooseX-Method-Signatures-0.49-22.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Method-Signatures/perl-MooseX-Method-Signatures.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Method-Signatures-0.49-22.el9/perl-MooseX-Method-Signatures-0.49-22.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Method-Signatures: perl-Devel-Declare perl-MooseX-LazyRequire perl-MooseX-Meta-TypeConstraint-ForceCoercion perl-MooseX-Types-Structured perl-Parse-Method-Signatures .stamps/perl-MooseX-Method-Signatures/perl-MooseX-Method-Signatures.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-NonMoose

.srpms/perl-MooseX-NonMoose-0.26-26.el9.src.rpm: perl-MooseX-NonMoose/perl-MooseX-NonMoose.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-NonMoose-0.26-26.el9/perl-MooseX-NonMoose-0.26-26.el9.noarch.rpm : .srpms/perl-MooseX-NonMoose-0.26-26.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-NonMoose/perl-MooseX-NonMoose.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-NonMoose-0.26-26.el9/perl-MooseX-NonMoose-0.26-26.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-NonMoose:  .stamps/perl-MooseX-NonMoose/perl-MooseX-NonMoose.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Params-Validate

.srpms/perl-MooseX-Params-Validate-0.21-25.el9.src.rpm: perl-MooseX-Params-Validate/perl-MooseX-Params-Validate.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Params-Validate-0.21-25.el9/perl-MooseX-Params-Validate-0.21-25.el9.noarch.rpm : .srpms/perl-MooseX-Params-Validate-0.21-25.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Params-Validate/perl-MooseX-Params-Validate.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Params-Validate-0.21-25.el9/perl-MooseX-Params-Validate-0.21-25.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Params-Validate:  .stamps/perl-MooseX-Params-Validate/perl-MooseX-Params-Validate.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Singleton

.srpms/perl-MooseX-Singleton-0.30-20.el9.src.rpm: perl-MooseX-Singleton/perl-MooseX-Singleton.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Singleton-0.30-20.el9/perl-MooseX-Singleton-0.30-20.el9.noarch.rpm : .srpms/perl-MooseX-Singleton-0.30-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Singleton/perl-MooseX-Singleton.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Singleton-0.30-20.el9/perl-MooseX-Singleton-0.30-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Singleton:  .stamps/perl-MooseX-Singleton/perl-MooseX-Singleton.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Storage

.srpms/perl-MooseX-Storage-0.53-10.el9.src.rpm: perl-MooseX-Storage/perl-MooseX-Storage.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Storage-0.53-10.el9/perl-MooseX-Storage-0.53-10.el9.noarch.rpm : .srpms/perl-MooseX-Storage-0.53-10.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Storage/perl-MooseX-Storage.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Storage-0.53-10.el9/perl-MooseX-Storage-0.53-10.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Storage: perl-String-RewritePrefix perl-Test-Deep-JSON perl-Test-Deep-Type .stamps/perl-MooseX-Storage/perl-MooseX-Storage.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-StrictConstructor

.srpms/perl-MooseX-StrictConstructor-0.21-20.el9.src.rpm: perl-MooseX-StrictConstructor/perl-MooseX-StrictConstructor.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-StrictConstructor-0.21-20.el9/perl-MooseX-StrictConstructor-0.21-20.el9.noarch.rpm : .srpms/perl-MooseX-StrictConstructor-0.21-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-StrictConstructor/perl-MooseX-StrictConstructor.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-StrictConstructor-0.21-20.el9/perl-MooseX-StrictConstructor-0.21-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-StrictConstructor:  .stamps/perl-MooseX-StrictConstructor/perl-MooseX-StrictConstructor.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Traits

.srpms/perl-MooseX-Traits-0.13-22.el9.src.rpm: perl-MooseX-Traits/perl-MooseX-Traits.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Traits-0.13-22.el9/perl-MooseX-Traits-0.13-22.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Traits-0.13-22.el9/perl-MooseX-Traits-tests-0.13-22.el9.noarch.rpm : .srpms/perl-MooseX-Traits-0.13-22.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Traits/perl-MooseX-Traits.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Traits-0.13-22.el9/perl-MooseX-Traits-0.13-22.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Traits-0.13-22.el9/perl-MooseX-Traits-tests-0.13-22.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Traits:  .stamps/perl-MooseX-Traits/perl-MooseX-Traits.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Types-DateTime

.srpms/perl-MooseX-Types-DateTime-0.13-24.el9.src.rpm: perl-MooseX-Types-DateTime/perl-MooseX-Types-DateTime.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-DateTime-0.13-24.el9/perl-MooseX-Types-DateTime-0.13-24.el9.noarch.rpm : .srpms/perl-MooseX-Types-DateTime-0.13-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Types-DateTime/perl-MooseX-Types-DateTime.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-DateTime-0.13-24.el9/perl-MooseX-Types-DateTime-0.13-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Types-DateTime:  .stamps/perl-MooseX-Types-DateTime/perl-MooseX-Types-DateTime.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Types-DateTime-MoreCoercions

.srpms/perl-MooseX-Types-DateTime-MoreCoercions-0.15-23.el9.src.rpm: perl-MooseX-Types-DateTime-MoreCoercions/perl-MooseX-Types-DateTime-MoreCoercions.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-DateTime-MoreCoercions-0.15-23.el9/perl-MooseX-Types-DateTime-MoreCoercions-0.15-23.el9.noarch.rpm : .srpms/perl-MooseX-Types-DateTime-MoreCoercions-0.15-23.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Types-DateTime-MoreCoercions/perl-MooseX-Types-DateTime-MoreCoercions.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-DateTime-MoreCoercions-0.15-23.el9/perl-MooseX-Types-DateTime-MoreCoercions-0.15-23.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Types-DateTime-MoreCoercions:  .stamps/perl-MooseX-Types-DateTime-MoreCoercions/perl-MooseX-Types-DateTime-MoreCoercions.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Types-Email

.srpms/perl-MooseX-Types-Email-0.008-1.el9.src.rpm: perl-MooseX-Types-Email/perl-MooseX-Types-Email.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-Email-0.008-1.el9/perl-MooseX-Types-Email-0.008-1.el9.noarch.rpm : .srpms/perl-MooseX-Types-Email-0.008-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Types-Email/perl-MooseX-Types-Email.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-Email-0.008-1.el9/perl-MooseX-Types-Email-0.008-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Types-Email:  .stamps/perl-MooseX-Types-Email/perl-MooseX-Types-Email.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Types-PortNumber

.srpms/perl-MooseX-Types-PortNumber-0.03-1.el9.src.rpm: perl-MooseX-Types-PortNumber/perl-MooseX-Types-PortNumber.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-PortNumber-0.03-1.el9/perl-MooseX-Types-PortNumber-0.03-1.el9.noarch.rpm : .srpms/perl-MooseX-Types-PortNumber-0.03-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Types-PortNumber/perl-MooseX-Types-PortNumber.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-PortNumber-0.03-1.el9/perl-MooseX-Types-PortNumber-0.03-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Types-PortNumber:  .stamps/perl-MooseX-Types-PortNumber/perl-MooseX-Types-PortNumber.spec.built-stamp
 
ALL_PACKAGES += perl-MooseX-Types-Structured

.srpms/perl-MooseX-Types-Structured-0.36-19.el9.src.rpm: perl-MooseX-Types-Structured/perl-MooseX-Types-Structured.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-Structured-0.36-19.el9/perl-MooseX-Types-Structured-0.36-19.el9.noarch.rpm : .srpms/perl-MooseX-Types-Structured-0.36-19.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooseX-Types-Structured/perl-MooseX-Types-Structured.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooseX-Types-Structured-0.36-19.el9/perl-MooseX-Types-Structured-0.36-19.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooseX-Types-Structured:  .stamps/perl-MooseX-Types-Structured/perl-MooseX-Types-Structured.spec.built-stamp
 
ALL_PACKAGES += perl-MooX-TypeTiny

.srpms/perl-MooX-TypeTiny-0.002003-6.el9.src.rpm: perl-MooX-TypeTiny/perl-MooX-TypeTiny.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MooX-TypeTiny-0.002003-6.el9/perl-MooX-TypeTiny-0.002003-6.el9.noarch.rpm : .srpms/perl-MooX-TypeTiny-0.002003-6.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MooX-TypeTiny/perl-MooX-TypeTiny.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MooX-TypeTiny-0.002003-6.el9/perl-MooX-TypeTiny-0.002003-6.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MooX-TypeTiny:  .stamps/perl-MooX-TypeTiny/perl-MooX-TypeTiny.spec.built-stamp
 
ALL_PACKAGES += perl-MouseX-Types-Common

.srpms/perl-MouseX-Types-Common-0.001000-5.el9.src.rpm: perl-MouseX-Types-Common/perl-MouseX-Types-Common.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-MouseX-Types-Common-0.001000-5.el9/perl-MouseX-Types-Common-0.001000-5.el9.noarch.rpm : .srpms/perl-MouseX-Types-Common-0.001000-5.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-MouseX-Types-Common/perl-MouseX-Types-Common.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-MouseX-Types-Common-0.001000-5.el9/perl-MouseX-Types-Common-0.001000-5.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-MouseX-Types-Common:  .stamps/perl-MouseX-Types-Common/perl-MouseX-Types-Common.spec.built-stamp
 
ALL_PACKAGES += perl-Mozilla-PublicSuffix

.srpms/perl-Mozilla-PublicSuffix-1.0.6-4.el9.src.rpm: perl-Mozilla-PublicSuffix/perl-Mozilla-PublicSuffix.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Mozilla-PublicSuffix-1.0.6-4.el9/perl-Mozilla-PublicSuffix-1.0.6-4.el9.noarch.rpm : .srpms/perl-Mozilla-PublicSuffix-1.0.6-4.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Mozilla-PublicSuffix/perl-Mozilla-PublicSuffix.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Mozilla-PublicSuffix-1.0.6-4.el9/perl-Mozilla-PublicSuffix-1.0.6-4.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Mozilla-PublicSuffix:  .stamps/perl-Mozilla-PublicSuffix/perl-Mozilla-PublicSuffix.spec.built-stamp
 
ALL_PACKAGES += perl-Net-Amazon-S3

.srpms/perl-Net-Amazon-S3-0.991-4.el9.src.rpm: perl-Net-Amazon-S3/perl-Net-Amazon-S3.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-Amazon-S3-0.991-4.el9/perl-Net-Amazon-S3-0.991-4.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Net-Amazon-S3-0.991-4.el9/perl-Shared-Examples-Net-Amazon-S3-0.991-4.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Net-Amazon-S3-0.991-4.el9/perl-Net-Amazon-S3-tests-0.991-4.el9.noarch.rpm : .srpms/perl-Net-Amazon-S3-0.991-4.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-Amazon-S3/perl-Net-Amazon-S3.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-Amazon-S3-0.991-4.el9/perl-Net-Amazon-S3-0.991-4.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Net-Amazon-S3-0.991-4.el9/perl-Shared-Examples-Net-Amazon-S3-0.991-4.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Net-Amazon-S3-0.991-4.el9/perl-Net-Amazon-S3-tests-0.991-4.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-Amazon-S3:  .stamps/perl-Net-Amazon-S3/perl-Net-Amazon-S3.spec.built-stamp
 
ALL_PACKAGES += perl-Net-Amazon-Signature-V4

.srpms/perl-Net-Amazon-Signature-V4-0.21-1.el9.src.rpm: perl-Net-Amazon-Signature-V4/perl-Net-Amazon-Signature-V4.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-Amazon-Signature-V4-0.21-1.el9/perl-Net-Amazon-Signature-V4-0.21-1.el9.noarch.rpm : .srpms/perl-Net-Amazon-Signature-V4-0.21-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-Amazon-Signature-V4/perl-Net-Amazon-Signature-V4.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-Amazon-Signature-V4-0.21-1.el9/perl-Net-Amazon-Signature-V4-0.21-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-Amazon-Signature-V4:  .stamps/perl-Net-Amazon-Signature-V4/perl-Net-Amazon-Signature-V4.spec.built-stamp
 
ALL_PACKAGES += perl-Net-APNS-Simple

.srpms/perl-Net-APNS-Simple-0.07-1.el9.src.rpm: perl-Net-APNS-Simple/perl-Net-APNS-Simple.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-APNS-Simple-0.07-1.el9/perl-Net-APNS-Simple-0.07-1.el9.noarch.rpm : .srpms/perl-Net-APNS-Simple-0.07-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-APNS-Simple/perl-Net-APNS-Simple.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-APNS-Simple-0.07-1.el9/perl-Net-APNS-Simple-0.07-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-APNS-Simple: perl-Protocol-HTTP2 perl-Crypt-JWT .stamps/perl-Net-APNS-Simple/perl-Net-APNS-Simple.spec.built-stamp
 
ALL_PACKAGES += perl-Net-Dogstatsd

.srpms/perl-Net-Dogstatsd-1.0.3-1.el9.src.rpm: perl-Net-Dogstatsd/perl-Net-Dogstatsd.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-Dogstatsd-1.0.3-1.el9/perl-Net-Dogstatsd-1.0.3-1.el9.noarch.rpm : .srpms/perl-Net-Dogstatsd-1.0.3-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-Dogstatsd/perl-Net-Dogstatsd.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-Dogstatsd-1.0.3-1.el9/perl-Net-Dogstatsd-1.0.3-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-Dogstatsd: perl-Data-Validate-Type .stamps/perl-Net-Dogstatsd/perl-Net-Dogstatsd.spec.built-stamp
 
ALL_PACKAGES += perl-Net-Google-CalendarV3

.srpms/perl-Net-Google-CalendarV3-0.16-2.el9.src.rpm: perl-Net-Google-CalendarV3/perl-Net-Google-CalendarV3.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-Google-CalendarV3-0.16-2.el9/perl-Net-Google-CalendarV3-0.16-2.el9.noarch.rpm : .srpms/perl-Net-Google-CalendarV3-0.16-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-Google-CalendarV3/perl-Net-Google-CalendarV3.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-Google-CalendarV3-0.16-2.el9/perl-Net-Google-CalendarV3-0.16-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-Google-CalendarV3: perl-Kavorka perl-WWW-JSON .stamps/perl-Net-Google-CalendarV3/perl-Net-Google-CalendarV3.spec.built-stamp
 
ALL_PACKAGES += perl-Net-HTTPS-Any

.srpms/perl-Net-HTTPS-Any-0.12-100.el9.src.rpm: perl-Net-HTTPS-Any/perl-Net-HTTPS-Any.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-HTTPS-Any-0.12-100.el9/perl-Net-HTTPS-Any-0.12-100.el9.noarch.rpm : .srpms/perl-Net-HTTPS-Any-0.12-100.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-HTTPS-Any/perl-Net-HTTPS-Any.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-HTTPS-Any-0.12-100.el9/perl-Net-HTTPS-Any-0.12-100.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-HTTPS-Any:  .stamps/perl-Net-HTTPS-Any/perl-Net-HTTPS-Any.spec.built-stamp
 
ALL_PACKAGES += perl-Net-IDN-Encode

.srpms/perl-Net-IDN-Encode-2.500-16.el9.src.rpm: perl-Net-IDN-Encode/perl-Net-IDN-Encode.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-IDN-Encode-2.500-16.el9/perl-Net-IDN-Encode-2.500-16.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Net-IDN-Encode-2.500-16.el9/perl-Net-IDN-Encode-debuginfo-2.500-16.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Net-IDN-Encode-2.500-16.el9/perl-Net-IDN-Encode-debugsource-2.500-16.el9.x86_64.rpm : .srpms/perl-Net-IDN-Encode-2.500-16.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-IDN-Encode/perl-Net-IDN-Encode.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-IDN-Encode-2.500-16.el9/perl-Net-IDN-Encode-2.500-16.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Net-IDN-Encode-2.500-16.el9/perl-Net-IDN-Encode-debuginfo-2.500-16.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Net-IDN-Encode-2.500-16.el9/perl-Net-IDN-Encode-debugsource-2.500-16.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-IDN-Encode:  .stamps/perl-Net-IDN-Encode/perl-Net-IDN-Encode.spec.built-stamp
 
ALL_PACKAGES += perl-Net-OpenSRS

.srpms/perl-Net-OpenSRS-0.06-1.el9.src.rpm: perl-Net-OpenSRS/perl-Net-OpenSRS.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-OpenSRS-0.06-1.el9/perl-Net-OpenSRS-0.06-1.el9.noarch.rpm : .srpms/perl-Net-OpenSRS-0.06-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-OpenSRS/perl-Net-OpenSRS.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-OpenSRS-0.06-1.el9/perl-Net-OpenSRS-0.06-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-OpenSRS:  .stamps/perl-Net-OpenSRS/perl-Net-OpenSRS.spec.built-stamp
 
ALL_PACKAGES += perl-Net-Server-SS-PreFork

.srpms/perl-Net-Server-SS-PreFork-0.05-36.el9.src.rpm: perl-Net-Server-SS-PreFork/perl-Net-Server-SS-PreFork.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-Server-SS-PreFork-0.05-36.el9/perl-Net-Server-SS-PreFork-0.05-36.el9.noarch.rpm : .srpms/perl-Net-Server-SS-PreFork-0.05-36.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-Server-SS-PreFork/perl-Net-Server-SS-PreFork.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-Server-SS-PreFork-0.05-36.el9/perl-Net-Server-SS-PreFork-0.05-36.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-Server-SS-PreFork: perl-HTTP-Server-Simple perl-Server-Starter .stamps/perl-Net-Server-SS-PreFork/perl-Net-Server-SS-PreFork.spec.built-stamp
 
ALL_PACKAGES += perl-Net-Telnet

.srpms/perl-Net-Telnet-3.05-6.el9.src.rpm: perl-Net-Telnet/perl-Net-Telnet.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Net-Telnet-3.05-6.el9/perl-Net-Telnet-3.05-6.el9.noarch.rpm : .srpms/perl-Net-Telnet-3.05-6.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Net-Telnet/perl-Net-Telnet.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Net-Telnet-3.05-6.el9/perl-Net-Telnet-3.05-6.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Net-Telnet:  .stamps/perl-Net-Telnet/perl-Net-Telnet.spec.built-stamp
 
ALL_PACKAGES += perl-OpenAI-API

.srpms/perl-OpenAI-API-0.37-2.el9.src.rpm: perl-OpenAI-API/perl-OpenAI-API.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-OpenAI-API-0.37-2.el9/perl-OpenAI-API-0.37-2.el9.noarch.rpm : .srpms/perl-OpenAI-API-0.37-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-OpenAI-API/perl-OpenAI-API.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-OpenAI-API-0.37-2.el9/perl-OpenAI-API-0.37-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-OpenAI-API: perl-IO-Async perl-Moo perl-Test-RequiresInternet perl-Throwable perl-Type-Tiny .stamps/perl-OpenAI-API/perl-OpenAI-API.spec.built-stamp
 
ALL_PACKAGES += perl-Package-Pkg

.srpms/perl-Package-Pkg-0.0020-32.el9.src.rpm: perl-Package-Pkg/perl-Package-Pkg.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Package-Pkg-0.0020-32.el9/perl-Package-Pkg-0.0020-32.el9.noarch.rpm : .srpms/perl-Package-Pkg-0.0020-32.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Package-Pkg/perl-Package-Pkg.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Package-Pkg-0.0020-32.el9/perl-Package-Pkg-0.0020-32.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Package-Pkg:  .stamps/perl-Package-Pkg/perl-Package-Pkg.spec.built-stamp
 
ALL_PACKAGES += perl-Parallel-Prefork

.srpms/perl-Parallel-Prefork-0.18-22.el9.src.rpm: perl-Parallel-Prefork/perl-Parallel-Prefork.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Parallel-Prefork-0.18-22.el9/perl-Parallel-Prefork-0.18-22.el9.noarch.rpm : .srpms/perl-Parallel-Prefork-0.18-22.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Parallel-Prefork/perl-Parallel-Prefork.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Parallel-Prefork-0.18-22.el9/perl-Parallel-Prefork-0.18-22.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Parallel-Prefork: perl-Parallel-Scoreboard perl-Proc-Wait3 perl-Signal-Mask .stamps/perl-Parallel-Prefork/perl-Parallel-Prefork.spec.built-stamp
 
ALL_PACKAGES += perl-Parallel-Scoreboard

.srpms/perl-Parallel-Scoreboard-0.08-21.el9.src.rpm: perl-Parallel-Scoreboard/perl-Parallel-Scoreboard.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Parallel-Scoreboard-0.08-21.el9/perl-Parallel-Scoreboard-0.08-21.el9.noarch.rpm : .srpms/perl-Parallel-Scoreboard-0.08-21.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Parallel-Scoreboard/perl-Parallel-Scoreboard.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Parallel-Scoreboard-0.08-21.el9/perl-Parallel-Scoreboard-0.08-21.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Parallel-Scoreboard:  .stamps/perl-Parallel-Scoreboard/perl-Parallel-Scoreboard.spec.built-stamp
 
ALL_PACKAGES += perl-Parse-Keyword

.srpms/perl-Parse-Keyword-0.09-2.el9.src.rpm: perl-Parse-Keyword/perl-Parse-Keyword.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Parse-Keyword-0.09-2.el9/perl-Parse-Keyword-0.09-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Parse-Keyword-0.09-2.el9/perl-Parse-Keyword-debuginfo-0.09-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Parse-Keyword-0.09-2.el9/perl-Parse-Keyword-debugsource-0.09-2.el9.x86_64.rpm : .srpms/perl-Parse-Keyword-0.09-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Parse-Keyword/perl-Parse-Keyword.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Parse-Keyword-0.09-2.el9/perl-Parse-Keyword-0.09-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Parse-Keyword-0.09-2.el9/perl-Parse-Keyword-debuginfo-0.09-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Parse-Keyword-0.09-2.el9/perl-Parse-Keyword-debugsource-0.09-2.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Parse-Keyword: perl-Devel-CallParser .stamps/perl-Parse-Keyword/perl-Parse-Keyword.spec.built-stamp
 
ALL_PACKAGES += perl-Parse-Method-Signatures

.srpms/perl-Parse-Method-Signatures-1.003019-19.el9.src.rpm: perl-Parse-Method-Signatures/perl-Parse-Method-Signatures.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Parse-Method-Signatures-1.003019-19.el9/perl-Parse-Method-Signatures-1.003019-19.el9.noarch.rpm : .srpms/perl-Parse-Method-Signatures-1.003019-19.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Parse-Method-Signatures/perl-Parse-Method-Signatures.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Parse-Method-Signatures-1.003019-19.el9/perl-Parse-Method-Signatures-1.003019-19.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Parse-Method-Signatures: perl-MooseX-Traits perl-MooseX-Types-Structured .stamps/perl-Parse-Method-Signatures/perl-Parse-Method-Signatures.spec.built-stamp
 
ALL_PACKAGES += perl-Path-Router

.srpms/perl-Path-Router-0.15-1.el9.src.rpm: perl-Path-Router/perl-Path-Router.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Path-Router-0.15-1.el9/perl-Path-Router-0.15-1.el9.noarch.rpm : .srpms/perl-Path-Router-0.15-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Path-Router/perl-Path-Router.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Path-Router-0.15-1.el9/perl-Path-Router-0.15-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Path-Router:  .stamps/perl-Path-Router/perl-Path-Router.spec.built-stamp
 
ALL_PACKAGES += perl-Paws

.srpms/perl-Paws-0.45-1.el9.src.rpm: perl-Paws/perl-Paws.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Paws-0.45-1.el9/perl-Paws-0.45-1.el9.noarch.rpm : .srpms/perl-Paws-0.45-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Paws/perl-Paws.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Paws-0.45-1.el9/perl-Paws-0.45-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Paws: perl-ARGV-Struct perl-Config-AWS perl-DataStruct-Flat perl-Furl perl-Future-Mojo perl-MooseX-ClassAttribute perl-Net-Amazon-Signature-V4 perl-Test-Timer perl-URI-Template perl-URL-Encode perl-URL-Encode-XS .stamps/perl-Paws/perl-Paws.spec.built-stamp
 
ALL_PACKAGES += perl-Perl6-Junction

.srpms/perl-Perl6-Junction-1.60000-28.el9.src.rpm: perl-Perl6-Junction/perl-Perl6-Junction.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Perl6-Junction-1.60000-28.el9/perl-Perl6-Junction-1.60000-28.el9.noarch.rpm : .srpms/perl-Perl6-Junction-1.60000-28.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Perl6-Junction/perl-Perl6-Junction.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Perl6-Junction-1.60000-28.el9/perl-Perl6-Junction-1.60000-28.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Perl6-Junction:  .stamps/perl-Perl6-Junction/perl-Perl6-Junction.spec.built-stamp
 
ALL_PACKAGES += perl-Perl-Command

.srpms/perl-Perl-Command-0.01-1.el9.src.rpm: perl-Perl-Command/perl-Perl-Command.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Perl-Command-0.01-1.el9/perl-Perl-Command-0.01-1.el9.noarch.rpm : .srpms/perl-Perl-Command-0.01-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Perl-Command/perl-Perl-Command.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Perl-Command-0.01-1.el9/perl-Perl-Command-0.01-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Perl-Command:  .stamps/perl-Perl-Command/perl-Perl-Command.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-App-Path-Router

.srpms/perl-Plack-App-Path-Router-0.08-1.el9.src.rpm: perl-Plack-App-Path-Router/perl-Plack-App-Path-Router.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-App-Path-Router-0.08-1.el9/perl-Plack-App-Path-Router-0.08-1.el9.noarch.rpm : .srpms/perl-Plack-App-Path-Router-0.08-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-App-Path-Router/perl-Plack-App-Path-Router.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-App-Path-Router-0.08-1.el9/perl-Plack-App-Path-Router-0.08-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-App-Path-Router: perl-MooseX-NonMoose perl-Path-Router .stamps/perl-Plack-App-Path-Router/perl-Plack-App-Path-Router.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-App-Proxy

.srpms/perl-Plack-App-Proxy-0.29-1.el9.src.rpm: perl-Plack-App-Proxy/perl-Plack-App-Proxy.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-App-Proxy-0.29-1.el9/perl-Plack-App-Proxy-0.29-1.el9.noarch.rpm : .srpms/perl-Plack-App-Proxy-0.29-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-App-Proxy/perl-Plack-App-Proxy.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-App-Proxy-0.29-1.el9/perl-Plack-App-Proxy-0.29-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-App-Proxy:  .stamps/perl-Plack-App-Proxy/perl-Plack-App-Proxy.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-Middleware-Cache

.srpms/perl-Plack-Middleware-Cache-0.19-1.el9.src.rpm: perl-Plack-Middleware-Cache/perl-Plack-Middleware-Cache.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Cache-0.19-1.el9/perl-Plack-Middleware-Cache-0.19-1.el9.noarch.rpm : .srpms/perl-Plack-Middleware-Cache-0.19-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-Middleware-Cache/perl-Plack-Middleware-Cache.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Cache-0.19-1.el9/perl-Plack-Middleware-Cache-0.19-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-Middleware-Cache:  .stamps/perl-Plack-Middleware-Cache/perl-Plack-Middleware-Cache.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-Middleware-Deflater

.srpms/perl-Plack-Middleware-Deflater-0.12-27.el9.src.rpm: perl-Plack-Middleware-Deflater/perl-Plack-Middleware-Deflater.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Deflater-0.12-27.el9/perl-Plack-Middleware-Deflater-0.12-27.el9.noarch.rpm : .srpms/perl-Plack-Middleware-Deflater-0.12-27.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-Middleware-Deflater/perl-Plack-Middleware-Deflater.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Deflater-0.12-27.el9/perl-Plack-Middleware-Deflater-0.12-27.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-Middleware-Deflater:  .stamps/perl-Plack-Middleware-Deflater/perl-Plack-Middleware-Deflater.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-Middleware-Header

.srpms/perl-Plack-Middleware-Header-0.04-1.el9.src.rpm: perl-Plack-Middleware-Header/perl-Plack-Middleware-Header.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Header-0.04-1.el9/perl-Plack-Middleware-Header-0.04-1.el9.noarch.rpm : .srpms/perl-Plack-Middleware-Header-0.04-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-Middleware-Header/perl-Plack-Middleware-Header.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Header-0.04-1.el9/perl-Plack-Middleware-Header-0.04-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-Middleware-Header:  .stamps/perl-Plack-Middleware-Header/perl-Plack-Middleware-Header.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-Middleware-ProxyMap

.srpms/perl-Plack-Middleware-ProxyMap-0.20-1.el9.src.rpm: perl-Plack-Middleware-ProxyMap/perl-Plack-Middleware-ProxyMap.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-ProxyMap-0.20-1.el9/perl-Plack-Middleware-ProxyMap-0.20-1.el9.noarch.rpm : .srpms/perl-Plack-Middleware-ProxyMap-0.20-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-Middleware-ProxyMap/perl-Plack-Middleware-ProxyMap.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-ProxyMap-0.20-1.el9/perl-Plack-Middleware-ProxyMap-0.20-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-Middleware-ProxyMap: perl-Plack-App-Proxy .stamps/perl-Plack-Middleware-ProxyMap/perl-Plack-Middleware-ProxyMap.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-Middleware-Rewrite

.srpms/perl-Plack-Middleware-Rewrite-2.102-1.el9.src.rpm: perl-Plack-Middleware-Rewrite/perl-Plack-Middleware-Rewrite.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Rewrite-2.102-1.el9/perl-Plack-Middleware-Rewrite-2.102-1.el9.noarch.rpm : .srpms/perl-Plack-Middleware-Rewrite-2.102-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-Middleware-Rewrite/perl-Plack-Middleware-Rewrite.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Rewrite-2.102-1.el9/perl-Plack-Middleware-Rewrite-2.102-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-Middleware-Rewrite:  .stamps/perl-Plack-Middleware-Rewrite/perl-Plack-Middleware-Rewrite.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-Middleware-ServerStatus-Lite

.srpms/perl-Plack-Middleware-ServerStatus-Lite-0.36-1.el9.src.rpm: perl-Plack-Middleware-ServerStatus-Lite/perl-Plack-Middleware-ServerStatus-Lite.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-ServerStatus-Lite-0.36-1.el9/perl-Plack-Middleware-ServerStatus-Lite-0.36-1.el9.noarch.rpm : .srpms/perl-Plack-Middleware-ServerStatus-Lite-0.36-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-Middleware-ServerStatus-Lite/perl-Plack-Middleware-ServerStatus-Lite.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-ServerStatus-Lite-0.36-1.el9/perl-Plack-Middleware-ServerStatus-Lite-0.36-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-Middleware-ServerStatus-Lite: perl-Parallel-Scoreboard perl-Starman .stamps/perl-Plack-Middleware-ServerStatus-Lite/perl-Plack-Middleware-ServerStatus-Lite.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-Middleware-Session

.srpms/perl-Plack-Middleware-Session-0.33-13.el9.src.rpm: perl-Plack-Middleware-Session/perl-Plack-Middleware-Session.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Session-0.33-13.el9/perl-Plack-Middleware-Session-0.33-13.el9.noarch.rpm : .srpms/perl-Plack-Middleware-Session-0.33-13.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-Middleware-Session/perl-Plack-Middleware-Session.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-Middleware-Session-0.33-13.el9/perl-Plack-Middleware-Session-0.33-13.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-Middleware-Session:  .stamps/perl-Plack-Middleware-Session/perl-Plack-Middleware-Session.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-Session-Store-Redis

.srpms/perl-Plack-Session-Store-Redis-0.05-1.el9.src.rpm: perl-Plack-Session-Store-Redis/perl-Plack-Session-Store-Redis.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-Session-Store-Redis-0.05-1.el9/perl-Plack-Session-Store-Redis-0.05-1.el9.noarch.rpm : .srpms/perl-Plack-Session-Store-Redis-0.05-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-Session-Store-Redis/perl-Plack-Session-Store-Redis.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-Session-Store-Redis-0.05-1.el9/perl-Plack-Session-Store-Redis-0.05-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-Session-Store-Redis: perl-Data-MessagePack perl-Plack-Middleware-Session .stamps/perl-Plack-Session-Store-Redis/perl-Plack-Session-Store-Redis.spec.built-stamp
 
ALL_PACKAGES += perl-Plack-Session-Store-Transparent

.srpms/perl-Plack-Session-Store-Transparent-0.03-1.el9.src.rpm: perl-Plack-Session-Store-Transparent/perl-Plack-Session-Store-Transparent.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Plack-Session-Store-Transparent-0.03-1.el9/perl-Plack-Session-Store-Transparent-0.03-1.el9.noarch.rpm : .srpms/perl-Plack-Session-Store-Transparent-0.03-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Plack-Session-Store-Transparent/perl-Plack-Session-Store-Transparent.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Plack-Session-Store-Transparent-0.03-1.el9/perl-Plack-Session-Store-Transparent-0.03-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Plack-Session-Store-Transparent: perl-Plack-Middleware-Session .stamps/perl-Plack-Session-Store-Transparent/perl-Plack-Session-Store-Transparent.spec.built-stamp
 
ALL_PACKAGES += perl-Proc-Wait3

.srpms/perl-Proc-Wait3-0.05-26.el9.src.rpm: perl-Proc-Wait3/perl-Proc-Wait3.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Proc-Wait3-0.05-26.el9/perl-Proc-Wait3-0.05-26.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Proc-Wait3-0.05-26.el9/perl-Proc-Wait3-debuginfo-0.05-26.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Proc-Wait3-0.05-26.el9/perl-Proc-Wait3-debugsource-0.05-26.el9.x86_64.rpm : .srpms/perl-Proc-Wait3-0.05-26.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Proc-Wait3/perl-Proc-Wait3.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Proc-Wait3-0.05-26.el9/perl-Proc-Wait3-0.05-26.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Proc-Wait3-0.05-26.el9/perl-Proc-Wait3-debuginfo-0.05-26.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Proc-Wait3-0.05-26.el9/perl-Proc-Wait3-debugsource-0.05-26.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Proc-Wait3:  .stamps/perl-Proc-Wait3/perl-Proc-Wait3.spec.built-stamp
 
ALL_PACKAGES += perl-Protocol-HTTP2

.srpms/perl-Protocol-HTTP2-1.10-11.el9.src.rpm: perl-Protocol-HTTP2/perl-Protocol-HTTP2.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Protocol-HTTP2-1.10-11.el9/perl-Protocol-HTTP2-1.10-11.el9.noarch.rpm : .srpms/perl-Protocol-HTTP2-1.10-11.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Protocol-HTTP2/perl-Protocol-HTTP2.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Protocol-HTTP2-1.10-11.el9/perl-Protocol-HTTP2-1.10-11.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Protocol-HTTP2:  .stamps/perl-Protocol-HTTP2/perl-Protocol-HTTP2.spec.built-stamp
 
ALL_PACKAGES += perl-Scalar-String

.srpms/perl-Scalar-String-0.003-18.el9.src.rpm: perl-Scalar-String/perl-Scalar-String.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Scalar-String-0.003-18.el9/perl-Scalar-String-0.003-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Scalar-String-0.003-18.el9/perl-Scalar-String-debuginfo-0.003-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Scalar-String-0.003-18.el9/perl-Scalar-String-debugsource-0.003-18.el9.x86_64.rpm : .srpms/perl-Scalar-String-0.003-18.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Scalar-String/perl-Scalar-String.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Scalar-String-0.003-18.el9/perl-Scalar-String-0.003-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Scalar-String-0.003-18.el9/perl-Scalar-String-debuginfo-0.003-18.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Scalar-String-0.003-18.el9/perl-Scalar-String-debugsource-0.003-18.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Scalar-String:  .stamps/perl-Scalar-String/perl-Scalar-String.spec.built-stamp
 
ALL_PACKAGES += perl-Server-Starter

.srpms/perl-Server-Starter-0.35-12.el9.src.rpm: perl-Server-Starter/perl-Server-Starter.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Server-Starter-0.35-12.el9/perl-Server-Starter-0.35-12.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Server-Starter-0.35-12.el9/perl-Server-Starter-start_server-0.35-12.el9.noarch.rpm : .srpms/perl-Server-Starter-0.35-12.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Server-Starter/perl-Server-Starter.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Server-Starter-0.35-12.el9/perl-Server-Starter-0.35-12.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Server-Starter-0.35-12.el9/perl-Server-Starter-start_server-0.35-12.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Server-Starter:  .stamps/perl-Server-Starter/perl-Server-Starter.spec.built-stamp
 
ALL_PACKAGES += perl-Set-Infinite

.srpms/perl-Set-Infinite-0.65-37.el9.src.rpm: perl-Set-Infinite/perl-Set-Infinite.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Set-Infinite-0.65-37.el9/perl-Set-Infinite-0.65-37.el9.noarch.rpm : .srpms/perl-Set-Infinite-0.65-37.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Set-Infinite/perl-Set-Infinite.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Set-Infinite-0.65-37.el9/perl-Set-Infinite-0.65-37.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Set-Infinite:  .stamps/perl-Set-Infinite/perl-Set-Infinite.spec.built-stamp
 
ALL_PACKAGES += perl-Signal-Mask

.srpms/perl-Signal-Mask-0.008-28.el9.src.rpm: perl-Signal-Mask/perl-Signal-Mask.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Signal-Mask-0.008-28.el9/perl-Signal-Mask-0.008-28.el9.noarch.rpm : .srpms/perl-Signal-Mask-0.008-28.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Signal-Mask/perl-Signal-Mask.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Signal-Mask-0.008-28.el9/perl-Signal-Mask-0.008-28.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Signal-Mask: perl-IPC-Signal perl-Thread-SigMask .stamps/perl-Signal-Mask/perl-Signal-Mask.spec.built-stamp
 
ALL_PACKAGES += perl-Smart-Comments

.srpms/perl-Smart-Comments-1.06-22.el9.src.rpm: perl-Smart-Comments/perl-Smart-Comments.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Smart-Comments-1.06-22.el9/perl-Smart-Comments-1.06-22.el9.noarch.rpm : .srpms/perl-Smart-Comments-1.06-22.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Smart-Comments/perl-Smart-Comments.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Smart-Comments-1.06-22.el9/perl-Smart-Comments-1.06-22.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Smart-Comments:  .stamps/perl-Smart-Comments/perl-Smart-Comments.spec.built-stamp
 
ALL_PACKAGES += perl-Snowball-Norwegian

.srpms/perl-Snowball-Norwegian-1.2-36.el9.src.rpm: perl-Snowball-Norwegian/perl-Snowball-Norwegian.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Snowball-Norwegian-1.2-36.el9/perl-Snowball-Norwegian-1.2-36.el9.noarch.rpm : .srpms/perl-Snowball-Norwegian-1.2-36.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Snowball-Norwegian/perl-Snowball-Norwegian.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Snowball-Norwegian-1.2-36.el9/perl-Snowball-Norwegian-1.2-36.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Snowball-Norwegian:  .stamps/perl-Snowball-Norwegian/perl-Snowball-Norwegian.spec.built-stamp
 
ALL_PACKAGES += perl-Snowball-Swedish

.srpms/perl-Snowball-Swedish-1.2-37.el9.src.rpm: perl-Snowball-Swedish/perl-Snowball-Swedish.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Snowball-Swedish-1.2-37.el9/perl-Snowball-Swedish-1.2-37.el9.noarch.rpm : .srpms/perl-Snowball-Swedish-1.2-37.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Snowball-Swedish/perl-Snowball-Swedish.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Snowball-Swedish-1.2-37.el9/perl-Snowball-Swedish-1.2-37.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Snowball-Swedish:  .stamps/perl-Snowball-Swedish/perl-Snowball-Swedish.spec.built-stamp
 
ALL_PACKAGES += perl-SQL-SplitStatement

.srpms/perl-SQL-SplitStatement-1.00023-6.el9.src.rpm: perl-SQL-SplitStatement/perl-SQL-SplitStatement.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-SQL-SplitStatement-1.00023-6.el9/perl-SQL-SplitStatement-1.00023-6.el9.noarch.rpm : .srpms/perl-SQL-SplitStatement-1.00023-6.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-SQL-SplitStatement/perl-SQL-SplitStatement.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-SQL-SplitStatement-1.00023-6.el9/perl-SQL-SplitStatement-1.00023-6.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-SQL-SplitStatement: perl-SQL-Tokenizer perl-Test-Script-Run .stamps/perl-SQL-SplitStatement/perl-SQL-SplitStatement.spec.built-stamp
 
ALL_PACKAGES += perl-SQL-Tokenizer

.srpms/perl-SQL-Tokenizer-0.24-24.el9.src.rpm: perl-SQL-Tokenizer/perl-SQL-Tokenizer.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-SQL-Tokenizer-0.24-24.el9/perl-SQL-Tokenizer-0.24-24.el9.noarch.rpm : .srpms/perl-SQL-Tokenizer-0.24-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-SQL-Tokenizer/perl-SQL-Tokenizer.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-SQL-Tokenizer-0.24-24.el9/perl-SQL-Tokenizer-0.24-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-SQL-Tokenizer:  .stamps/perl-SQL-Tokenizer/perl-SQL-Tokenizer.spec.built-stamp
 
ALL_PACKAGES += perl-Starman

.srpms/perl-Starman-0.4016-2.el9.src.rpm: perl-Starman/perl-Starman.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Starman-0.4016-2.el9/perl-Starman-0.4016-2.el9.noarch.rpm : .srpms/perl-Starman-0.4016-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Starman/perl-Starman.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Starman-0.4016-2.el9/perl-Starman-0.4016-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Starman: perl-Net-Server-SS-PreFork perl-Server-Starter .stamps/perl-Starman/perl-Starman.spec.built-stamp
 
ALL_PACKAGES += perl-Statistics-Basic

.srpms/perl-Statistics-Basic-1.6611-25.el9.src.rpm: perl-Statistics-Basic/perl-Statistics-Basic.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Statistics-Basic-1.6611-25.el9/perl-Statistics-Basic-1.6611-25.el9.noarch.rpm : .srpms/perl-Statistics-Basic-1.6611-25.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Statistics-Basic/perl-Statistics-Basic.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Statistics-Basic-1.6611-25.el9/perl-Statistics-Basic-1.6611-25.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Statistics-Basic:  .stamps/perl-Statistics-Basic/perl-Statistics-Basic.spec.built-stamp
 
ALL_PACKAGES += perl-String-Approx

.srpms/perl-String-Approx-3.28-21.el9.src.rpm: perl-String-Approx/perl-String-Approx.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-String-Approx-3.28-21.el9/perl-String-Approx-3.28-21.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-String-Approx-3.28-21.el9/perl-String-Approx-debuginfo-3.28-21.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-String-Approx-3.28-21.el9/perl-String-Approx-debugsource-3.28-21.el9.x86_64.rpm : .srpms/perl-String-Approx-3.28-21.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-String-Approx/perl-String-Approx.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-String-Approx-3.28-21.el9/perl-String-Approx-3.28-21.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-String-Approx-3.28-21.el9/perl-String-Approx-debuginfo-3.28-21.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-String-Approx-3.28-21.el9/perl-String-Approx-debugsource-3.28-21.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-String-Approx:  .stamps/perl-String-Approx/perl-String-Approx.spec.built-stamp
 
ALL_PACKAGES += perl-String-CamelCase

.srpms/perl-String-CamelCase-0.04-16.el9.src.rpm: perl-String-CamelCase/perl-String-CamelCase.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-String-CamelCase-0.04-16.el9/perl-String-CamelCase-0.04-16.el9.noarch.rpm : .srpms/perl-String-CamelCase-0.04-16.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-String-CamelCase/perl-String-CamelCase.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-String-CamelCase-0.04-16.el9/perl-String-CamelCase-0.04-16.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-String-CamelCase:  .stamps/perl-String-CamelCase/perl-String-CamelCase.spec.built-stamp
 
ALL_PACKAGES += perl-String-RewritePrefix

.srpms/perl-String-RewritePrefix-0.009-2.el9.src.rpm: perl-String-RewritePrefix/perl-String-RewritePrefix.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-String-RewritePrefix-0.009-2.el9/perl-String-RewritePrefix-0.009-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-String-RewritePrefix-0.009-2.el9/perl-String-RewritePrefix-tests-0.009-2.el9.noarch.rpm : .srpms/perl-String-RewritePrefix-0.009-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-String-RewritePrefix/perl-String-RewritePrefix.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-String-RewritePrefix-0.009-2.el9/perl-String-RewritePrefix-0.009-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-String-RewritePrefix-0.009-2.el9/perl-String-RewritePrefix-tests-0.009-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-String-RewritePrefix:  .stamps/perl-String-RewritePrefix/perl-String-RewritePrefix.spec.built-stamp
 
ALL_PACKAGES += perl-String-ToIdentifier-EN

.srpms/perl-String-ToIdentifier-EN-0.12-17.el9.src.rpm: perl-String-ToIdentifier-EN/perl-String-ToIdentifier-EN.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-String-ToIdentifier-EN-0.12-17.el9/perl-String-ToIdentifier-EN-0.12-17.el9.noarch.rpm : .srpms/perl-String-ToIdentifier-EN-0.12-17.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-String-ToIdentifier-EN/perl-String-ToIdentifier-EN.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-String-ToIdentifier-EN-0.12-17.el9/perl-String-ToIdentifier-EN-0.12-17.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-String-ToIdentifier-EN: perl-Lingua-EN-Inflect-Phrase .stamps/perl-String-ToIdentifier-EN/perl-String-ToIdentifier-EN.spec.built-stamp
 
ALL_PACKAGES += perl-String-TtyLength

.srpms/perl-String-TtyLength-0.03-7.el9.src.rpm: perl-String-TtyLength/perl-String-TtyLength.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-String-TtyLength-0.03-7.el9/perl-String-TtyLength-0.03-7.el9.noarch.rpm : .srpms/perl-String-TtyLength-0.03-7.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-String-TtyLength/perl-String-TtyLength.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-String-TtyLength-0.03-7.el9/perl-String-TtyLength-0.03-7.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-String-TtyLength:  .stamps/perl-String-TtyLength/perl-String-TtyLength.spec.built-stamp
 
ALL_PACKAGES += perl-Sys-SigAction

.srpms/perl-Sys-SigAction-0.23-21.el9.src.rpm: perl-Sys-SigAction/perl-Sys-SigAction.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Sys-SigAction-0.23-21.el9/perl-Sys-SigAction-0.23-21.el9.noarch.rpm : .srpms/perl-Sys-SigAction-0.23-21.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Sys-SigAction/perl-Sys-SigAction.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Sys-SigAction-0.23-21.el9/perl-Sys-SigAction-0.23-21.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Sys-SigAction:  .stamps/perl-Sys-SigAction/perl-Sys-SigAction.spec.built-stamp
 
ALL_PACKAGES += perl-Term-ProgressBar-Quiet

.srpms/perl-Term-ProgressBar-Quiet-0.31-28.el9.src.rpm: perl-Term-ProgressBar-Quiet/perl-Term-ProgressBar-Quiet.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Term-ProgressBar-Quiet-0.31-28.el9/perl-Term-ProgressBar-Quiet-0.31-28.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Term-ProgressBar-Quiet-0.31-28.el9/perl-Term-ProgressBar-Quiet-tests-0.31-28.el9.noarch.rpm : .srpms/perl-Term-ProgressBar-Quiet-0.31-28.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Term-ProgressBar-Quiet/perl-Term-ProgressBar-Quiet.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Term-ProgressBar-Quiet-0.31-28.el9/perl-Term-ProgressBar-Quiet-0.31-28.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Term-ProgressBar-Quiet-0.31-28.el9/perl-Term-ProgressBar-Quiet-tests-0.31-28.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Term-ProgressBar-Quiet:  .stamps/perl-Term-ProgressBar-Quiet/perl-Term-ProgressBar-Quiet.spec.built-stamp
 
ALL_PACKAGES += perl-Term-ProgressBar-Simple

.srpms/perl-Term-ProgressBar-Simple-0.03-28.el9.src.rpm: perl-Term-ProgressBar-Simple/perl-Term-ProgressBar-Simple.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Term-ProgressBar-Simple-0.03-28.el9/perl-Term-ProgressBar-Simple-0.03-28.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Term-ProgressBar-Simple-0.03-28.el9/perl-Term-ProgressBar-Simple-tests-0.03-28.el9.noarch.rpm : .srpms/perl-Term-ProgressBar-Simple-0.03-28.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Term-ProgressBar-Simple/perl-Term-ProgressBar-Simple.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Term-ProgressBar-Simple-0.03-28.el9/perl-Term-ProgressBar-Simple-0.03-28.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Term-ProgressBar-Simple-0.03-28.el9/perl-Term-ProgressBar-Simple-tests-0.03-28.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Term-ProgressBar-Simple:  .stamps/perl-Term-ProgressBar-Simple/perl-Term-ProgressBar-Simple.spec.built-stamp
 
ALL_PACKAGES += perl-Test-Deep-JSON

.srpms/perl-Test-Deep-JSON-0.05-16.el9.src.rpm: perl-Test-Deep-JSON/perl-Test-Deep-JSON.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-Deep-JSON-0.05-16.el9/perl-Test-Deep-JSON-0.05-16.el9.noarch.rpm : .srpms/perl-Test-Deep-JSON-0.05-16.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-Deep-JSON/perl-Test-Deep-JSON.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-Deep-JSON-0.05-16.el9/perl-Test-Deep-JSON-0.05-16.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-Deep-JSON: perl-Exporter-Lite .stamps/perl-Test-Deep-JSON/perl-Test-Deep-JSON.spec.built-stamp
 
ALL_PACKAGES += perl-Test-Deep-Type

.srpms/perl-Test-Deep-Type-0.008-20.el9.src.rpm: perl-Test-Deep-Type/perl-Test-Deep-Type.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-Deep-Type-0.008-20.el9/perl-Test-Deep-Type-0.008-20.el9.noarch.rpm : .srpms/perl-Test-Deep-Type-0.008-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-Deep-Type/perl-Test-Deep-Type.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-Deep-Type-0.008-20.el9/perl-Test-Deep-Type-0.008-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-Deep-Type:  .stamps/perl-Test-Deep-Type/perl-Test-Deep-Type.spec.built-stamp
 
ALL_PACKAGES += perl-Test-Inter

.srpms/perl-Test-Inter-1.10-1.el9.src.rpm: perl-Test-Inter/perl-Test-Inter.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-Inter-1.10-1.el9/perl-Test-Inter-1.10-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Test-Inter-1.10-1.el9/perl-Test-Inter-tests-1.10-1.el9.noarch.rpm : .srpms/perl-Test-Inter-1.10-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-Inter/perl-Test-Inter.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-Inter-1.10-1.el9/perl-Test-Inter-1.10-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Test-Inter-1.10-1.el9/perl-Test-Inter-tests-1.10-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-Inter:  .stamps/perl-Test-Inter/perl-Test-Inter.spec.built-stamp
 
ALL_PACKAGES += perl-Test-Mock-LWP

.srpms/perl-Test-Mock-LWP-0.08-29.el9.src.rpm: perl-Test-Mock-LWP/perl-Test-Mock-LWP.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-Mock-LWP-0.08-29.el9/perl-Test-Mock-LWP-0.08-29.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Test-Mock-LWP-0.08-29.el9/perl-Test-Mock-LWP-tests-0.08-29.el9.noarch.rpm : .srpms/perl-Test-Mock-LWP-0.08-29.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-Mock-LWP/perl-Test-Mock-LWP.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-Mock-LWP-0.08-29.el9/perl-Test-Mock-LWP-0.08-29.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Test-Mock-LWP-0.08-29.el9/perl-Test-Mock-LWP-tests-0.08-29.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-Mock-LWP:  .stamps/perl-Test-Mock-LWP/perl-Test-Mock-LWP.spec.built-stamp
 
ALL_PACKAGES += perl-Test-Mock-LWP-Dispatch

.srpms/perl-Test-Mock-LWP-Dispatch-0.08-1.el9.src.rpm: perl-Test-Mock-LWP-Dispatch/perl-Test-Mock-LWP-Dispatch.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-Mock-LWP-Dispatch-0.08-1.el9/perl-Test-Mock-LWP-Dispatch-0.08-1.el9.noarch.rpm : .srpms/perl-Test-Mock-LWP-Dispatch-0.08-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-Mock-LWP-Dispatch/perl-Test-Mock-LWP-Dispatch.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-Mock-LWP-Dispatch-0.08-1.el9/perl-Test-Mock-LWP-Dispatch-0.08-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-Mock-LWP-Dispatch:  .stamps/perl-Test-Mock-LWP-Dispatch/perl-Test-Mock-LWP-Dispatch.spec.built-stamp
 
ALL_PACKAGES += perl-Test-MockRandom

.srpms/perl-Test-MockRandom-1.01-20.el9.src.rpm: perl-Test-MockRandom/perl-Test-MockRandom.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-MockRandom-1.01-20.el9/perl-Test-MockRandom-1.01-20.el9.noarch.rpm : .srpms/perl-Test-MockRandom-1.01-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-MockRandom/perl-Test-MockRandom.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-MockRandom-1.01-20.el9/perl-Test-MockRandom-1.01-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-MockRandom:  .stamps/perl-Test-MockRandom/perl-Test-MockRandom.spec.built-stamp
 
ALL_PACKAGES += perl-Test-MockTime-HiRes

.srpms/perl-Test-MockTime-HiRes-0.08-2.el9.src.rpm: perl-Test-MockTime-HiRes/perl-Test-MockTime-HiRes.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-MockTime-HiRes-0.08-2.el9/perl-Test-MockTime-HiRes-0.08-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Test-MockTime-HiRes-0.08-2.el9/perl-Test-MockTime-HiRes-tests-0.08-2.el9.noarch.rpm : .srpms/perl-Test-MockTime-HiRes-0.08-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-MockTime-HiRes/perl-Test-MockTime-HiRes.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-MockTime-HiRes-0.08-2.el9/perl-Test-MockTime-HiRes-0.08-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Test-MockTime-HiRes-0.08-2.el9/perl-Test-MockTime-HiRes-tests-0.08-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-MockTime-HiRes:  .stamps/perl-Test-MockTime-HiRes/perl-Test-MockTime-HiRes.spec.built-stamp
 
ALL_PACKAGES += perl-Test-RequiresInternet

.srpms/perl-Test-RequiresInternet-0.05-25.el9.src.rpm: perl-Test-RequiresInternet/perl-Test-RequiresInternet.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-RequiresInternet-0.05-25.el9/perl-Test-RequiresInternet-0.05-25.el9.noarch.rpm : .srpms/perl-Test-RequiresInternet-0.05-25.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-RequiresInternet/perl-Test-RequiresInternet.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-RequiresInternet-0.05-25.el9/perl-Test-RequiresInternet-0.05-25.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-RequiresInternet:  .stamps/perl-Test-RequiresInternet/perl-Test-RequiresInternet.spec.built-stamp
 
ALL_PACKAGES += perl-Test-Roo

.srpms/perl-Test-Roo-1.004-23.el9.src.rpm: perl-Test-Roo/perl-Test-Roo.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-Roo-1.004-23.el9/perl-Test-Roo-1.004-23.el9.noarch.rpm : .srpms/perl-Test-Roo-1.004-23.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-Roo/perl-Test-Roo.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-Roo-1.004-23.el9/perl-Test-Roo-1.004-23.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-Roo:  .stamps/perl-Test-Roo/perl-Test-Roo.spec.built-stamp
 
ALL_PACKAGES += perl-Test-Script-Run

.srpms/perl-Test-Script-Run-0.08-24.el9.src.rpm: perl-Test-Script-Run/perl-Test-Script-Run.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-Script-Run-0.08-24.el9/perl-Test-Script-Run-0.08-24.el9.noarch.rpm : .srpms/perl-Test-Script-Run-0.08-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-Script-Run/perl-Test-Script-Run.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-Script-Run-0.08-24.el9/perl-Test-Script-Run-0.08-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-Script-Run:  .stamps/perl-Test-Script-Run/perl-Test-Script-Run.spec.built-stamp
 
ALL_PACKAGES += perl-Test-TempDir

.srpms/perl-Test-TempDir-0.11-8.el9.src.rpm: perl-Test-TempDir/perl-Test-TempDir.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-TempDir-0.11-8.el9/perl-Test-TempDir-0.11-8.el9.noarch.rpm : .srpms/perl-Test-TempDir-0.11-8.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-TempDir/perl-Test-TempDir.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-TempDir-0.11-8.el9/perl-Test-TempDir-0.11-8.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-TempDir: perl-Directory-Scratch .stamps/perl-Test-TempDir/perl-Test-TempDir.spec.built-stamp
 
ALL_PACKAGES += perl-Test-Timer

.srpms/perl-Test-Timer-2.12-6.el9.src.rpm: perl-Test-Timer/perl-Test-Timer.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-Timer-2.12-6.el9/perl-Test-Timer-2.12-6.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Test-Timer-2.12-6.el9/perl-Test-Timer-tests-2.12-6.el9.noarch.rpm : .srpms/perl-Test-Timer-2.12-6.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-Timer/perl-Test-Timer.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-Timer-2.12-6.el9/perl-Test-Timer-2.12-6.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Test-Timer-2.12-6.el9/perl-Test-Timer-tests-2.12-6.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-Timer:  .stamps/perl-Test-Timer/perl-Test-Timer.spec.built-stamp
 
ALL_PACKAGES += perl-Test-WWW-Mechanize

.srpms/perl-Test-WWW-Mechanize-1.60-2.el9.src.rpm: perl-Test-WWW-Mechanize/perl-Test-WWW-Mechanize.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-WWW-Mechanize-1.60-2.el9/perl-Test-WWW-Mechanize-1.60-2.el9.noarch.rpm : .srpms/perl-Test-WWW-Mechanize-1.60-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-WWW-Mechanize/perl-Test-WWW-Mechanize.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-WWW-Mechanize-1.60-2.el9/perl-Test-WWW-Mechanize-1.60-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-WWW-Mechanize: perl-Carp-Assert-More perl-HTML-Lint perl-HTTP-Server-Simple .stamps/perl-Test-WWW-Mechanize/perl-Test-WWW-Mechanize.spec.built-stamp
 
ALL_PACKAGES += perl-Test-WWW-Mechanize-PSGI

.srpms/perl-Test-WWW-Mechanize-PSGI-0.39-14.el9.src.rpm: perl-Test-WWW-Mechanize-PSGI/perl-Test-WWW-Mechanize-PSGI.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-WWW-Mechanize-PSGI-0.39-14.el9/perl-Test-WWW-Mechanize-PSGI-0.39-14.el9.noarch.rpm : .srpms/perl-Test-WWW-Mechanize-PSGI-0.39-14.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-WWW-Mechanize-PSGI/perl-Test-WWW-Mechanize-PSGI.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-WWW-Mechanize-PSGI-0.39-14.el9/perl-Test-WWW-Mechanize-PSGI-0.39-14.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-WWW-Mechanize-PSGI: perl-Test-WWW-Mechanize .stamps/perl-Test-WWW-Mechanize-PSGI/perl-Test-WWW-Mechanize-PSGI.spec.built-stamp
 
ALL_PACKAGES += perl-Test-WWW-Selenium

.srpms/perl-Test-WWW-Selenium-1.36-27.el9.src.rpm: perl-Test-WWW-Selenium/perl-Test-WWW-Selenium.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Test-WWW-Selenium-1.36-27.el9/perl-Test-WWW-Selenium-1.36-27.el9.noarch.rpm : .srpms/perl-Test-WWW-Selenium-1.36-27.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Test-WWW-Selenium/perl-Test-WWW-Selenium.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Test-WWW-Selenium-1.36-27.el9/perl-Test-WWW-Selenium-1.36-27.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Test-WWW-Selenium: perl-Test-Mock-LWP .stamps/perl-Test-WWW-Selenium/perl-Test-WWW-Selenium.spec.built-stamp
 
ALL_PACKAGES += perl-Text-Brew

.srpms/perl-Text-Brew-0.02-24.el9.src.rpm: perl-Text-Brew/perl-Text-Brew.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Text-Brew-0.02-24.el9/perl-Text-Brew-0.02-24.el9.noarch.rpm : .srpms/perl-Text-Brew-0.02-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Text-Brew/perl-Text-Brew.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Text-Brew-0.02-24.el9/perl-Text-Brew-0.02-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Text-Brew:  .stamps/perl-Text-Brew/perl-Text-Brew.spec.built-stamp
 
ALL_PACKAGES += perl-Text-Elide

.srpms/perl-Text-Elide-0.0.3-1.el9.src.rpm: perl-Text-Elide/perl-Text-Elide.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Text-Elide-0.0.3-1.el9/perl-Text-Elide-0.0.3-1.el9.noarch.rpm : .srpms/perl-Text-Elide-0.0.3-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Text-Elide/perl-Text-Elide.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Text-Elide-0.0.3-1.el9/perl-Text-Elide-0.0.3-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Text-Elide: perl-Smart-Comments .stamps/perl-Text-Elide/perl-Text-Elide.spec.built-stamp
 
ALL_PACKAGES += perl-Text-German

.srpms/perl-Text-German-0.06-36.el9.src.rpm: perl-Text-German/perl-Text-German.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Text-German-0.06-36.el9/perl-Text-German-0.06-36.el9.noarch.rpm : .srpms/perl-Text-German-0.06-36.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Text-German/perl-Text-German.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Text-German-0.06-36.el9/perl-Text-German-0.06-36.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Text-German:  .stamps/perl-Text-German/perl-Text-German.spec.built-stamp
 
ALL_PACKAGES += perl-Text-Original

.srpms/perl-Text-Original-1.5-1.el9.src.rpm: perl-Text-Original/perl-Text-Original.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Text-Original-1.5-1.el9/perl-Text-Original-1.5-1.el9.noarch.rpm : .srpms/perl-Text-Original-1.5-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Text-Original/perl-Text-Original.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Text-Original-1.5-1.el9/perl-Text-Original-1.5-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Text-Original:  .stamps/perl-Text-Original/perl-Text-Original.spec.built-stamp
 
ALL_PACKAGES += perl-Text-Table-Tiny

.srpms/perl-Text-Table-Tiny-1.03-3.el9.src.rpm: perl-Text-Table-Tiny/perl-Text-Table-Tiny.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Text-Table-Tiny-1.03-3.el9/perl-Text-Table-Tiny-1.03-3.el9.noarch.rpm : .srpms/perl-Text-Table-Tiny-1.03-3.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Text-Table-Tiny/perl-Text-Table-Tiny.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Text-Table-Tiny-1.03-3.el9/perl-Text-Table-Tiny-1.03-3.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Text-Table-Tiny: perl-String-TtyLength .stamps/perl-Text-Table-Tiny/perl-Text-Table-Tiny.spec.built-stamp
 
ALL_PACKAGES += perl-Text-vCard

.srpms/perl-Text-vCard-3.09-20.el9.src.rpm: perl-Text-vCard/perl-Text-vCard.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Text-vCard-3.09-20.el9/perl-Text-vCard-3.09-20.el9.noarch.rpm : .srpms/perl-Text-vCard-3.09-20.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Text-vCard/perl-Text-vCard.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Text-vCard-3.09-20.el9/perl-Text-vCard-3.09-20.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Text-vCard: perl-Directory-Scratch perl-Text-vFile-asData .stamps/perl-Text-vCard/perl-Text-vCard.spec.built-stamp
 
ALL_PACKAGES += perl-Text-vFile-asData

.srpms/perl-Text-vFile-asData-0.08-33.el9.src.rpm: perl-Text-vFile-asData/perl-Text-vFile-asData.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Text-vFile-asData-0.08-33.el9/perl-Text-vFile-asData-0.08-33.el9.noarch.rpm : .srpms/perl-Text-vFile-asData-0.08-33.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Text-vFile-asData/perl-Text-vFile-asData.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Text-vFile-asData-0.08-33.el9/perl-Text-vFile-asData-0.08-33.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Text-vFile-asData: perl-Class-Accessor-Chained .stamps/perl-Text-vFile-asData/perl-Text-vFile-asData.spec.built-stamp
 
ALL_PACKAGES += perl-Thread-SigMask

.srpms/perl-Thread-SigMask-0.004-32.el9.src.rpm: perl-Thread-SigMask/perl-Thread-SigMask.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Thread-SigMask-0.004-32.el9/perl-Thread-SigMask-0.004-32.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Thread-SigMask-0.004-32.el9/perl-Thread-SigMask-debuginfo-0.004-32.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Thread-SigMask-0.004-32.el9/perl-Thread-SigMask-debugsource-0.004-32.el9.x86_64.rpm : .srpms/perl-Thread-SigMask-0.004-32.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Thread-SigMask/perl-Thread-SigMask.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Thread-SigMask-0.004-32.el9/perl-Thread-SigMask-0.004-32.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Thread-SigMask-0.004-32.el9/perl-Thread-SigMask-debuginfo-0.004-32.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Thread-SigMask-0.004-32.el9/perl-Thread-SigMask-debugsource-0.004-32.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Thread-SigMask:  .stamps/perl-Thread-SigMask/perl-Thread-SigMask.spec.built-stamp
 
ALL_PACKAGES += perl-Throwable

.srpms/perl-Throwable-1.001-2.el9.src.rpm: perl-Throwable/perl-Throwable.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Throwable-1.001-2.el9/perl-Throwable-1.001-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Throwable-1.001-2.el9/perl-Throwable-tests-1.001-2.el9.noarch.rpm : .srpms/perl-Throwable-1.001-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Throwable/perl-Throwable.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Throwable-1.001-2.el9/perl-Throwable-1.001-2.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Throwable-1.001-2.el9/perl-Throwable-tests-1.001-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Throwable:  .stamps/perl-Throwable/perl-Throwable.spec.built-stamp
 
ALL_PACKAGES += perltidy

.srpms/perltidy-20230309-1.el9.src.rpm: perltidy/perltidy.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perltidy-20230309-1.el9/perltidy-20230309-1.el9.noarch.rpm : .srpms/perltidy-20230309-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perltidy/perltidy.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perltidy-20230309-1.el9/perltidy-20230309-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perltidy:  .stamps/perltidy/perltidy.spec.built-stamp
 
ALL_PACKAGES += perl-Tie-RefHash-Weak

.srpms/perl-Tie-RefHash-Weak-0.09-41.el9.src.rpm: perl-Tie-RefHash-Weak/perl-Tie-RefHash-Weak.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Tie-RefHash-Weak-0.09-41.el9/perl-Tie-RefHash-Weak-0.09-41.el9.noarch.rpm : .srpms/perl-Tie-RefHash-Weak-0.09-41.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Tie-RefHash-Weak/perl-Tie-RefHash-Weak.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Tie-RefHash-Weak-0.09-41.el9/perl-Tie-RefHash-Weak-0.09-41.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Tie-RefHash-Weak:  .stamps/perl-Tie-RefHash-Weak/perl-Tie-RefHash-Weak.spec.built-stamp
 
ALL_PACKAGES += perl-Tie-ToObject

.srpms/perl-Tie-ToObject-0.03-44.el9.src.rpm: perl-Tie-ToObject/perl-Tie-ToObject.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Tie-ToObject-0.03-44.el9/perl-Tie-ToObject-0.03-44.el9.noarch.rpm : .srpms/perl-Tie-ToObject-0.03-44.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Tie-ToObject/perl-Tie-ToObject.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Tie-ToObject-0.03-44.el9/perl-Tie-ToObject-0.03-44.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Tie-ToObject:  .stamps/perl-Tie-ToObject/perl-Tie-ToObject.spec.built-stamp
 
ALL_PACKAGES += perl-Time-Duration-Parse

.srpms/perl-Time-Duration-Parse-0.16-7.el9.src.rpm: perl-Time-Duration-Parse/perl-Time-Duration-Parse.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Time-Duration-Parse-0.16-7.el9/perl-Time-Duration-Parse-0.16-7.el9.noarch.rpm : .srpms/perl-Time-Duration-Parse-0.16-7.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Time-Duration-Parse/perl-Time-Duration-Parse.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Time-Duration-Parse-0.16-7.el9/perl-Time-Duration-Parse-0.16-7.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Time-Duration-Parse:  .stamps/perl-Time-Duration-Parse/perl-Time-Duration-Parse.spec.built-stamp
 
ALL_PACKAGES += perl-Time-Warp

.srpms/perl-Time-Warp-0.55-2.el9.src.rpm: perl-Time-Warp/perl-Time-Warp.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Time-Warp-0.55-2.el9/perl-Time-Warp-0.55-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Time-Warp-0.55-2.el9/perl-Time-Warp-tests-0.55-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Time-Warp-0.55-2.el9/perl-Time-Warp-debuginfo-0.55-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Time-Warp-0.55-2.el9/perl-Time-Warp-debugsource-0.55-2.el9.x86_64.rpm : .srpms/perl-Time-Warp-0.55-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Time-Warp/perl-Time-Warp.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Time-Warp-0.55-2.el9/perl-Time-Warp-0.55-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Time-Warp-0.55-2.el9/perl-Time-Warp-tests-0.55-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Time-Warp-0.55-2.el9/perl-Time-Warp-debuginfo-0.55-2.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Time-Warp-0.55-2.el9/perl-Time-Warp-debugsource-0.55-2.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Time-Warp:  .stamps/perl-Time-Warp/perl-Time-Warp.spec.built-stamp
 
ALL_PACKAGES += perl-Tree-XPathEngine

.srpms/perl-Tree-XPathEngine-0.05-32.el9.src.rpm: perl-Tree-XPathEngine/perl-Tree-XPathEngine.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Tree-XPathEngine-0.05-32.el9/perl-Tree-XPathEngine-0.05-32.el9.noarch.rpm : .srpms/perl-Tree-XPathEngine-0.05-32.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Tree-XPathEngine/perl-Tree-XPathEngine.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Tree-XPathEngine-0.05-32.el9/perl-Tree-XPathEngine-0.05-32.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Tree-XPathEngine:  .stamps/perl-Tree-XPathEngine/perl-Tree-XPathEngine.spec.built-stamp
 
ALL_PACKAGES += perl-Type-Tiny

.srpms/perl-Type-Tiny-2.004000-1.el9.src.rpm: perl-Type-Tiny/perl-Type-Tiny.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Type-Tiny-2.004000-1.el9/perl-Type-Tiny-2.004000-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Type-Tiny-2.004000-1.el9/perl-Test-TypeTiny-2.004000-1.el9.noarch.rpm : .srpms/perl-Type-Tiny-2.004000-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Type-Tiny/perl-Type-Tiny.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Type-Tiny-2.004000-1.el9/perl-Type-Tiny-2.004000-1.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-Type-Tiny-2.004000-1.el9/perl-Test-TypeTiny-2.004000-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Type-Tiny: perl-Class-ISA perl-Data-Constraint perl-Exporter-Tiny perl-MooX-TypeTiny perl-MouseX-Types-Common .stamps/perl-Type-Tiny/perl-Type-Tiny.spec.built-stamp
 
ALL_PACKAGES += perl-URI-Template

.srpms/perl-URI-Template-0.24-1.el9.src.rpm: perl-URI-Template/perl-URI-Template.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-URI-Template-0.24-1.el9/perl-URI-Template-0.24-1.el9.noarch.rpm : .srpms/perl-URI-Template-0.24-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-URI-Template/perl-URI-Template.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-URI-Template-0.24-1.el9/perl-URI-Template-0.24-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-URI-Template:  .stamps/perl-URI-Template/perl-URI-Template.spec.built-stamp
 
ALL_PACKAGES += perl-URL-Encode

.srpms/perl-URL-Encode-0.03-1.el9.src.rpm: perl-URL-Encode/perl-URL-Encode.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-URL-Encode-0.03-1.el9/perl-URL-Encode-0.03-1.el9.noarch.rpm : .srpms/perl-URL-Encode-0.03-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-URL-Encode/perl-URL-Encode.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-URL-Encode-0.03-1.el9/perl-URL-Encode-0.03-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-URL-Encode:  .stamps/perl-URL-Encode/perl-URL-Encode.spec.built-stamp
 
ALL_PACKAGES += perl-URL-Encode-XS

.srpms/perl-URL-Encode-XS-0.03-1.el9.src.rpm: perl-URL-Encode-XS/perl-URL-Encode-XS.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-URL-Encode-XS-0.03-1.el9/perl-URL-Encode-XS-0.03-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-URL-Encode-XS-0.03-1.el9/perl-URL-Encode-XS-debuginfo-0.03-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-URL-Encode-XS-0.03-1.el9/perl-URL-Encode-XS-debugsource-0.03-1.el9.x86_64.rpm : .srpms/perl-URL-Encode-XS-0.03-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-URL-Encode-XS/perl-URL-Encode-XS.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-URL-Encode-XS-0.03-1.el9/perl-URL-Encode-XS-0.03-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-URL-Encode-XS-0.03-1.el9/perl-URL-Encode-XS-debuginfo-0.03-1.el9.x86_64.rpm .repo/results/centos-stream+epel-9-x86_64/perl-URL-Encode-XS-0.03-1.el9/perl-URL-Encode-XS-debugsource-0.03-1.el9.x86_64.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-URL-Encode-XS: perl-URL-Encode .stamps/perl-URL-Encode-XS/perl-URL-Encode-XS.spec.built-stamp
 
ALL_PACKAGES += perl-Validate-Tiny

.srpms/perl-Validate-Tiny-1.6-1.el9.src.rpm: perl-Validate-Tiny/perl-Validate-Tiny.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-Validate-Tiny-1.6-1.el9/perl-Validate-Tiny-1.6-1.el9.noarch.rpm : .srpms/perl-Validate-Tiny-1.6-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-Validate-Tiny/perl-Validate-Tiny.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-Validate-Tiny-1.6-1.el9/perl-Validate-Tiny-1.6-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-Validate-Tiny:  .stamps/perl-Validate-Tiny/perl-Validate-Tiny.spec.built-stamp
 
ALL_PACKAGES += perl-VM-EC2

.srpms/perl-VM-EC2-1.28-24.el9.src.rpm: perl-VM-EC2/perl-VM-EC2.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-VM-EC2-1.28-24.el9/perl-VM-EC2-1.28-24.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-VM-EC2-1.28-24.el9/perl-VM-EC2-tests-1.28-24.el9.noarch.rpm : .srpms/perl-VM-EC2-1.28-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-VM-EC2/perl-VM-EC2.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-VM-EC2-1.28-24.el9/perl-VM-EC2-1.28-24.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-VM-EC2-1.28-24.el9/perl-VM-EC2-tests-1.28-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-VM-EC2:  .stamps/perl-VM-EC2/perl-VM-EC2.spec.built-stamp
 
ALL_PACKAGES += perl-VM-EC2-Security-CredentialCache

.srpms/perl-VM-EC2-Security-CredentialCache-0.25-24.el9.src.rpm: perl-VM-EC2-Security-CredentialCache/perl-VM-EC2-Security-CredentialCache.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-VM-EC2-Security-CredentialCache-0.25-24.el9/perl-VM-EC2-Security-CredentialCache-0.25-24.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-VM-EC2-Security-CredentialCache-0.25-24.el9/perl-VM-EC2-Security-CredentialCache-tests-0.25-24.el9.noarch.rpm : .srpms/perl-VM-EC2-Security-CredentialCache-0.25-24.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-VM-EC2-Security-CredentialCache/perl-VM-EC2-Security-CredentialCache.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-VM-EC2-Security-CredentialCache-0.25-24.el9/perl-VM-EC2-Security-CredentialCache-0.25-24.el9.noarch.rpm .repo/results/centos-stream+epel-9-x86_64/perl-VM-EC2-Security-CredentialCache-0.25-24.el9/perl-VM-EC2-Security-CredentialCache-tests-0.25-24.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-VM-EC2-Security-CredentialCache:  .stamps/perl-VM-EC2-Security-CredentialCache/perl-VM-EC2-Security-CredentialCache.spec.built-stamp
 
ALL_PACKAGES += perl-WebService-Client

.srpms/perl-WebService-Client-1.0001-1.el9.src.rpm: perl-WebService-Client/perl-WebService-Client.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-WebService-Client-1.0001-1.el9/perl-WebService-Client-1.0001-1.el9.noarch.rpm : .srpms/perl-WebService-Client-1.0001-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-WebService-Client/perl-WebService-Client.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-WebService-Client-1.0001-1.el9/perl-WebService-Client-1.0001-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-WebService-Client: perl-HTTP-Response-Stringable .stamps/perl-WebService-Client/perl-WebService-Client.spec.built-stamp
 
ALL_PACKAGES += perl-WWW-FCM-HTTP

.srpms/perl-WWW-FCM-HTTP-0.03-1.el9.src.rpm: perl-WWW-FCM-HTTP/perl-WWW-FCM-HTTP.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-WWW-FCM-HTTP-0.03-1.el9/perl-WWW-FCM-HTTP-0.03-1.el9.noarch.rpm : .srpms/perl-WWW-FCM-HTTP-0.03-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-WWW-FCM-HTTP/perl-WWW-FCM-HTTP.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-WWW-FCM-HTTP-0.03-1.el9/perl-WWW-FCM-HTTP-0.03-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-WWW-FCM-HTTP:  .stamps/perl-WWW-FCM-HTTP/perl-WWW-FCM-HTTP.spec.built-stamp
 
ALL_PACKAGES += perl-WWW-JSON

.srpms/perl-WWW-JSON-1.02-1.el9.src.rpm: perl-WWW-JSON/perl-WWW-JSON.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-WWW-JSON-1.02-1.el9/perl-WWW-JSON-1.02-1.el9.noarch.rpm : .srpms/perl-WWW-JSON-1.02-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-WWW-JSON/perl-WWW-JSON.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-WWW-JSON-1.02-1.el9/perl-WWW-JSON-1.02-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-WWW-JSON: perl-Test-Mock-LWP-Dispatch .stamps/perl-WWW-JSON/perl-WWW-JSON.spec.built-stamp
 
ALL_PACKAGES += perl-WWW-Mechanize

.srpms/perl-WWW-Mechanize-2.17-2.el9.src.rpm: perl-WWW-Mechanize/perl-WWW-Mechanize.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-WWW-Mechanize-2.17-2.el9/perl-WWW-Mechanize-2.17-2.el9.noarch.rpm : .srpms/perl-WWW-Mechanize-2.17-2.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-WWW-Mechanize/perl-WWW-Mechanize.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-WWW-Mechanize-2.17-2.el9/perl-WWW-Mechanize-2.17-2.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-WWW-Mechanize:  .stamps/perl-WWW-Mechanize/perl-WWW-Mechanize.spec.built-stamp
 
ALL_PACKAGES += perl-WWW-Pastebin-PastebinCom-Create

.srpms/perl-WWW-Pastebin-PastebinCom-Create-1.003-27.el9.src.rpm: perl-WWW-Pastebin-PastebinCom-Create/perl-WWW-Pastebin-PastebinCom-Create.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-WWW-Pastebin-PastebinCom-Create-1.003-27.el9/perl-WWW-Pastebin-PastebinCom-Create-1.003-27.el9.noarch.rpm : .srpms/perl-WWW-Pastebin-PastebinCom-Create-1.003-27.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-WWW-Pastebin-PastebinCom-Create/perl-WWW-Pastebin-PastebinCom-Create.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-WWW-Pastebin-PastebinCom-Create-1.003-27.el9/perl-WWW-Pastebin-PastebinCom-Create-1.003-27.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-WWW-Pastebin-PastebinCom-Create:  .stamps/perl-WWW-Pastebin-PastebinCom-Create/perl-WWW-Pastebin-PastebinCom-Create.spec.built-stamp
 
ALL_PACKAGES += perl-XML-Sig

.srpms/perl-XML-Sig-0.59-1.el9.src.rpm: perl-XML-Sig/perl-XML-Sig.spec
	$(build_rpm_source)

.repo/results/centos-stream+epel-9-x86_64/perl-XML-Sig-0.59-1.el9/perl-XML-Sig-0.59-1.el9.noarch.rpm : .srpms/perl-XML-Sig-0.59-1.el9.src.rpm
	$(build_rpm_binary)

.stamps/perl-XML-Sig/perl-XML-Sig.spec.built-stamp: .repo/results/centos-stream+epel-9-x86_64/perl-XML-Sig-0.59-1.el9/perl-XML-Sig-0.59-1.el9.noarch.rpm 
	mkdir -p $$(dirname "$@") && touch "$@"

perl-XML-Sig: perl-Crypt-OpenSSL-DSA perl-Crypt-OpenSSL-Guess .stamps/perl-XML-Sig/perl-XML-Sig.spec.built-stamp
 
PACKAGES_ARE_COMPILED := yes
