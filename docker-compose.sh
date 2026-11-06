sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Apply executable permissions
sudo chmod +x /usr/local/bin/docker-compose
# Create a symbolic link
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Install using pip (Python package manager)
sudo yum install -y python3-pip
sudo pip3 install docker-compose

#check version
docker-compose --version





#!/bin/bash

# 1. Update system
sudo dnf update -y

# 2. Install Docker
sudo dnf install docker -y

# 3. Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# 4. Add current user to Docker group
sudo usermod -aG docker $USER

# 5. Detect EC2 architecture
ARCH=$(uname -m)

if [ "$ARCH" = "aarch64" ]; then
    COMPOSE_ARCH="aarch64"
elif [ "$ARCH" = "x86_64" ]; then
    COMPOSE_ARCH="x86_64"
else
    echo "Unsupported architecture: $ARCH"
    exit 1
fi

# 6. Install Docker Compose V2
sudo mkdir -p /usr/local/lib/docker/cli-plugins

sudo curl -SL \
"https://github.com/docker/compose/releases/latest/download/docker-compose-linux-${COMPOSE_ARCH}" \
-o /usr/local/lib/docker/cli-plugins/docker-compose

# 7. Set executable permissions
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

# 8. Verify Docker installation
sudo docker --version

# 9. Verify Docker Compose installation
sudo docker compose version

echo "Docker and Docker Compose installation completed!"
echo "Log out and log in again to use Docker without sudo."
