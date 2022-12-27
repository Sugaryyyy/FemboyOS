. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
cat > /etc/shells << "EOF"
# Begin /etc/shells

/bin/sh
/bin/bash

# End /etc/shells
EOF

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
