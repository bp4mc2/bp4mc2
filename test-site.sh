#!/bin/bash
echo Copy markdown documents
cd site
for f in *.md ; do echo ${f%.md}; cp $f /opt/tomcat7/webapps/ROOT/WEB-INF/resources/apps/draft ; done
echo Copy local biblio
cp localbiblio.js /opt/tomcat7/webapps/ROOT/WEB-INF/resources/apps/draft
