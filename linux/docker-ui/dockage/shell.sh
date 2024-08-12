# 5001
# Stacks Directory /opt/stacks

# Create directories that store your stacks and store Dockge's stack
mkdir -p /opt/stacks /opt/dockge
cd /opt/dockge

# Download your compose.yaml
curl "https://dockge.kuma.pet/compose.yaml?port=5001&stacksPath=%2Fopt%2Fstacks" --output compose.yaml

# Start the Server
docker compose up -d

# If you are using docker-compose V1 or Podman
# docker-compose up -d