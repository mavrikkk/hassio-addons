#!/usr/bin/with-contenv bashio
# ==============================================================================
# mpd and upmpdcli config
# ==============================================================================

set -e

bashio::log.info  'Setup Folders'

mkdir -p /data/database \
    /share/mpd/music \
    /share/mpd/playlists

#setup configs
bashio::log.info "Configuring upmpdcli..."

sed -i "/#friendlyname/c friendlyname = $(bashio::config 'friendlyname')" /etc/upmpdcli.conf
sed -i "/#ohproductroom/c ohproductroom = $(bashio::config 'ohproductroom')" /etc/upmpdcli.conf
