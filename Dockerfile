# Catmandu core in a Docker container based on Debian jessie

FROM debian:jessie
MAINTAINER Jakob Voß

# Perl packages used by Catmandu, if available as Debian package
RUN apt-get update && apt-get install -y --no-install-recommends \
  libany-uri-escape-perl \
  libasa-perl \
  libcgi-expand-perl \
  libclone-perl \
  libconfig-onion-perl \
  libcpanel-json-xs-perl \
  libdata-compare-perl \
  libdata-util-perl \
  libdata-uuid-perl \
  libhash-merge-simple-perl \
  libio-handle-util-perl \
  liblist-moreutils-perl \
  liblog-any-perl \
  libmime-types-perl \
  libmodule-info-perl \
  libmoo-perl \
  libmoox-aliases-perl \
  libnamespace-clean-perl \
  libparser-mgc-perl \
  libpath-iterator-rule-perl \
  libpath-tiny-perl \
  libsub-exporter-perl \
  libtext-csv-perl \
  libtext-hogan-perl \
  libthrowable-perl \
  libtry-tiny-byclass-perl \
  liburi-perl \
  liburi-template-perl \
  libwww-perl \
  libyaml-libyaml-perl \
  cpanminus \
  build-essential \
  && rm -rf /var/lib/apt/lists/*

RUN cpanm -n -q catmandu@1.09

CMD ["/bin/bash"]
