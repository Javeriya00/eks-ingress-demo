# scripts/setup.sh
#!/bin/bash
set -e

echo "Installing required tools..."
sudo apt update
sudo apt install -y awscli kubectl terraform

echo "Setup complete!"