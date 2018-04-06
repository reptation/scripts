#!/bin/bash

SCRIPTNAME=$1

touch ./$SCRIPTNAME

echo "#!/bin/bash" > ./$SCRIPTNAME

chmod +x ./$SCRIPTNAME

vim ./$SCRIPTNAME

exit 0

