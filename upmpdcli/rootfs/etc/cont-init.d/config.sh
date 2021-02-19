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

friendlyname = "$(bashio::config 'friendlyname')"
ohproductroom = "$(bashio::config 'ohproductroom')"
spotifyuser = "$(bashio::config 'spotifyuser')"
spotifypass = "$(bashio::config 'spotifypass')"

sed "/#friendlyname/c friendlyname = $friendlyname" /etc/upmpdcli.conf
sed "/#ohproductroom/c ohproductroom = $ohproductroom" /etc/upmpdcli.conf
sed "/#spotifyuser/c spotifyuser = $spotifyuser" /etc/upmpdcli.conf
sed "/#spotifypass/c spotifypass = $spotifypass" /etc/upmpdcli.conf

#test logging
cat /etc/upmpdcli.conf
