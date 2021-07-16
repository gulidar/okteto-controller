# Set up ~/.local/bin
mkdir -p ~/.local/bin
export PATH=$PATH:$HOME/.local/bin
cd ~/.local/bin

# Install kubectl
# From here: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-using-native-package-management
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl


# Install okteto CLI
# See https://get.okteto.com
curl -L https://github.com/okteto/okteto/releases/latest/download/okteto-Linux-x86_64 > okteto
chmod +x okteto


# Set Okteto k8s credentials
mkdir -p ~/.kube
echo $okteto_kube_config > ~/.kube/okteto-kube.config
export KUBECONFIG=~/.kube/okteto-kube.config