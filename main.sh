export OKTETO_CONTROLLER_WORKDIR=/home/runner/okteto-controller

export MAIN_LOG_FILE=$OKTETO_CONTROLLER_WORKDIR/main.log
log() {
  echo "$@" >> "${MAIN_LOG_FILE}"
}
log "########"

. $OKTETO_CONTROLLER_WORKDIR/bootstrap.sh
#. ./deploy.sh
