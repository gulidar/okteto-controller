export SAVED_WORKDIR=$PWD

# Set up ~/.local/bin
mkdir -p ~/.local/bin
export PATH=$PATH:$HOME/.local/bin
cd ~/.local/bin


# Install kubectl
# From here: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-using-native-package-management
if ! command -v kubectl &> /dev/null
then
    echo "Downloading kubectl..."
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x kubectl
fi


# Install Helm CLI
if ! command -v helm &> /dev/null
then
    echo "Downloading Helm CLI..."
    export FILENAME="helm-v3.6.3-linux-amd64.tar.gz"
    curl "https://get.helm.sh/$FILENAME" -o $FILENAME
    tar -zxvf ./$FILENAME
    mv ./linux-amd64/helm ./helm
    rm -rf ./linux-amd64
    rm $FILENAME
fi


# Install operator-sdk
if ! command -v operator-sdk &> /dev/null
then
    bash $OKTETO_CONTROLLER_WORKDIR/individual-install-scripts/operator-sdk.sh
fi

# Install okteto CLI
# See https://get.okteto.com
if ! command -v okteto &> /dev/null
then
    echo "Downloading okteto CLI..."
    curl -L https://github.com/okteto/okteto/releases/latest/download/okteto-Linux-x86_64 > okteto
    chmod +x okteto
fi


# Install chectl
# From here: https://github.com/che-incubator/chectl
: '
if ! command -v ~/.local/bin/chectl/bin/run &> /dev/null
then
    echo "Downloading chectl..."
    curl -L https://github.com/che-incubator/chectl/releases/latest/download/chectl-linux-x64.tar.gz | tar xz
    log "$(command -v chectl)"
fi
alias chectl=~/.local/bin/chectl/bin/run
'

# Set Okteto k8s credentials
mkdir -p ~/.kube
echo "$OKTETO_KUBECONFIG" > ~/.kube/okteto-kube.config
export KUBECONFIG=~/.kube/okteto-kube.config


# Return to work directory
cd $SAVED_WORKDIR