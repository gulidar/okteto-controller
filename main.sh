export OKTETO_CONTROLLER_WORKDIR=/home/runner/Okteto-Controller

export MAIN_LOG_FILE=$OKTETO_CONTROLLER_WORKDIR/main.log
log() {
  echo "$@" >> "${MAIN_LOG_FILE}"
}
log "########"

. ./bootstrap.sh
#. ./deploy.sh
