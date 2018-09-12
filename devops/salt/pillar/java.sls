java_home: /usr/lib/java
java:
  prefix: /usr/share/java
  java_symlink: /usr/bin/java
  javac_symlink: /usr/bin/javac
  dl_opts: -b oraclelicense=accept-securebackup-cookie -L -s
  archive_type: tar
### JDK ##
  version_name: jdk1.8.0_181
  ## linux
  source_url: http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.tar.gz
  source_hash: sha256=1845567095bfbfebd42ed0d09397939796d05456290fb20a83c476ba09f991d3
## macos
  # source_url: http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-macosx-x64.dmg
  # source_hash: sha256=3ea78e0107f855b47a55414fadaabd04b94e406050d615663d54200ec85efc9b

  jre_lib_sec: /usr/share/java/jdk1.8.0_181/jre/lib/security
  java_real_home: /usr/share/java/jdk1.8.0_181
  java_realcmd: /usr/share/java/jdk1.8.0_181/bin/java
  javac_realcmd: /usr/share/java/jdk1.8.0_181/bin/javac

### or JRE ##
  # version_name: jre1.8.0_181
## linux
  # source_url: http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jre-8u181-linux-x64.tar.gz
  # source_hash: sha256=0b26c7fcfad20029e6e0989e678efcd4a81f0fe502a478b4972215533867de1b
## macos
  # source_url: http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jre-8u181-macosx-x64.dmg
  # source_hash: sha256=5a107575bb6cbd953dece50399467ebcb0c7b8f7fef4d745735457842b3e03b8

  # jre_lib_sec: /usr/share/java/jre1.8.0_181/jre/lib/security
  # java_real_home: /usr/share/java/jre1.8.0_181
  # java_realcmd: /usr/share/java/jre1.8.0_181/bin/java
  # javac_realcmd:

## and JCE ##
  jce_url: http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip
  jce_hash: sha256=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59

# java:version_name is the name of the top-level directory inside the tarball
# java:prefix is where the tarball is unpacked into - prefix/version_name being
#             the location of the jdk or jre
# java:dl_opts - cli args to cURL
