export WORKDIR=/home/runner/Okteto-Controller
export ONBOOT_LOG_FILE=/home/runner/Okteto-Controller/onBoot.log
echo "########" >> $ONBOOT_LOG_FILE
cp -v "$HOME/.bashrc" "$WORKDIR/old-bashrc" >> $ONBOOT_LOG_FILE
cat $WORKDIR/main.sh >> ~/.bashrc