#!/usr/bin/with-contenv bashio
# ==============================================================================
# mpd and upmpdcli config
# ==============================================================================

set -e

#setup folders
bashio::log.info  'Setup Folders for MPD'

mkdir -p /data/database \
    /share/mpd/music \
    /share/mpd/playlists \
    /share/upmpdcli \
    /share/upmpdcli/src_scripts \
    /share/upmpdcli/radio_scripts
	
#setup configs
bashio::log.info "Configuring upmpdcli..."

NAME = "$(bashio::config 'friendlyname')"
ROOM = "$(bashio::config 'ohproductroom')"

sed "/#friendlyname/c friendlyname = $NAME" /etc/upmpdcli.conf
sed "/#ohproductroom/c ohproductroom = $ROOM" /etc/upmpdcli.conf

bashio::log.info cat /etc/upmpdcli.conf
