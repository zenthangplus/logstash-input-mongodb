#/bin/bash

jruby -J-Xmx1024m -S bundle install
gem build logstash-input-mongodb.gemspec
