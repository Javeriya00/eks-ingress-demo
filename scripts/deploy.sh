# scripts/deploy.sh
#!/bin/bash
set -e

echo "Applying Terraform..."
cd terraform
terraform init
terraform apply -auto-approve

cd ..
echo "Deploying Kubernetes resources..."
kubectl apply -f k8s/app.yaml
kubectl apply -f k8s/ingress.yaml