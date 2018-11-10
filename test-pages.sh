#!/bin/bash
echo Copy markdown documents
cd publication
for f in *.md ; do echo ${f%.md}; cp $f /opt/tomcat7/webapps/ROOT/WEB-INF/resources/apps/profiles ; done
