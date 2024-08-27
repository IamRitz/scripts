#!/bin/bash

capture_command=$(history | sed '$d' | tail -n 1 | cut -d' ' -f4-)

# echo ${capture_command}

cat << EOF > capture_flag.sh
#!/bin/bash

${capture_command}
EOF

chmod +x capture_flag.sh

./capture_flag.sh > flag.txt
