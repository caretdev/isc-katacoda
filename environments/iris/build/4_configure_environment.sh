cat << EOF > /opt/configure-environment.sh
#!/bin/bash

echo "Starting container..."
docker run --name iris -d --publish 1972:1972 --publish 52773:52773 --cap-add IPC_LOCK $container_image

EOF
chmod +x /opt/configure-environment.sh