# Install kubectl
sudo az aks install-cli

# Install kubectl krew plugin manager
curl https://krew.sh/ | bash

# Install krew plugins
# kubectl resource-capacity
kubectl krew install resource-capacity

# kubectl df-pv
kubectl krew install df-pv
