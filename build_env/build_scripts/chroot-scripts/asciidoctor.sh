. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
gem build asciidoctor.gemspec

gem install asciidoctor-2.0.17.gem &&
install -vm644 man/asciidoctor.1 /usr/share/man/man1

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
