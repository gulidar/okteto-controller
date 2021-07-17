export MAIN_LOG_FILE=$WORKDIR/main.log
log() {
  echo "$@" >> "${MAIN_LOG_FILE}"
}
log "########"

. ./bootstrap.sh
#. ./deploy.sh
