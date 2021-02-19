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

sed "/#friendlyname/c friendlyname = $(bashio::config 'friendlyname')" /etc/upmpdcli.conf
sed "/#ohproductroom/c ohproductroom = $(bashio::config 'ohproductroom')" /etc/upmpdcli.conf

bashio::log.info cat /etc/upmpdcli.conf
