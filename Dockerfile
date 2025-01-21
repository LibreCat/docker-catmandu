# Dockerizing Catmandu

FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
  sudo \

  cpanminus \
  curl \
  wget \
  nano \
  vim \
  tree \
  man-db \
  libcatmandu-aat-perl \
  libcatmandu-atom-perl \
  libcatmandu-bibtex-perl \
  libcatmandu-breaker-perl \
  libcatmandu-cmd-repl-perl \
  libcatmandu-dbi-perl \
  libcatmandu-exporter-table-perl \
  libcatmandu-filestore-perl \
  libcatmandu-fix-cmd-perl \
  libcatmandu-i18n-perl \
  libcatmandu-identifier-perl \
  libcatmandu-importer-getjson-perl \
  libcatmandu-ldap-perl \
  libcatmandu-mab2-perl \
  libcatmandu-marc-perl \
  libcatmandu-markdown-perl \
  libcatmandu-mediawiki-perl \
  libcatmandu-mods-perl \
  libcatmandu-oai-perl \
  libcatmandu-perl \
  libcatmandu-rdf-perl \
  libcatmandu-ris-perl \
  libcatmandu-solr-perl \
  libcatmandu-sru-perl \
  libcatmandu-stat-perl \
  libcatmandu-template-perl \
  libcatmandu-wikidata-perl \
  libcatmandu-xls-perl \
  libcatmandu-xml-perl \
  libcatmandu-xsd-perl \
  libcatmandu-z3950-perl \
  libcatmandu-zotero-perl \
  perl-doc

RUN adduser --disabled-password --gecos "" catmandu

COPY . /home/catmandu

WORKDIR /home/catmandu

RUN cpanm -n -q --installdeps . && \
  rm -rf /var/lib/apt/lists/*

RUN chown catmandu:catmandu *

USER catmandu

CMD ["/bin/bash"]
