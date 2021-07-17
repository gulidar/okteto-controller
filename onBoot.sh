export OKTETO_CONTROLLER_WORKDIR=/home/runner/okteto-controller

export ONBOOT_LOG_FILE=$OKTETO_CONTROLLER_WORKDIR/onBoot.log
echo "########" >> $ONBOOT_LOG_FILE
cp -v "$HOME/.bashrc" "$OKTETO_CONTROLLER_WORKDIR/old-bashrc" >> $ONBOOT_LOG_FILE
cat $OKTETO_CONTROLLER_WORKDIR/main.sh >> $HOME/.bashrc