#!/bin/sh
#
# Backup script for AutoSub, CouchPotato, CouchPotato Server, Headphones, NZBGet, SABnzbd, SickBeard, Transmission, uMurmur and ZNC
# Works with the packages from www.synocommunity.com
# This script is created by K.Meun (G1zm0)
##################
#
#2012-11-11
# inital commit
#
##############################

AUTOSUB="/usr/local/autosub"
COUCHPOTATO="/usr/local/couchpotato/var"
COUCHPOTATOSERVER="/usr/local/couchpotatoserver/var"
HEADPHONES="/usr/local/headphones/var"
NZBGET="/usr/local/nzbget/var"
SABNZBD="/usr/local/sabnzbd/var"
SICKBEARD="/usr/local/sickbeard/var"
TRANSMISSION="/usr/local/transmission/var"
UMURMUR="/usr/local/umurmur/var"
ZNC="/usr/local/znc/var/configs"

BACKUP="/volume1/downloads/configs"
USER="guest:users"

autosub_backup ()
{
if [ -d &#036;{AUTOSUB} ] 
then
mkdir -p &#036;{BACKUP}/AutoSub
cp &#036;{AUTOSUB}/config.properties &#036;{BACKUP}/AutoSub
cp &#036;{AUTOSUB}/database.db &#036;{BACKUP}/AutoSub
cp &#036;{AUTOSUB}/ExamplePostProcess.py &#036;{BACKUP}/AutoSub
chown -R &#036;{USER} &#036;{BACKUP}/AutoSub
else
return 1
fi
}

couchpotato_backup ()
{
if [ -d &#036;{COUCHPOTATO} ] 
then
mkdir -p &#036;{BACKUP}/CouchPotato
cp &#036;{COUCHPOTATO}/config.ini &#036;{BACKUP}/CouchPotato
cp &#036;{COUCHPOTATO}/data.db &#036;{BACKUP}/CouchPotato
chown -R &#036;{USER} &#036;{BACKUP}/CouchPotato
else
return 1
fi
}

couchpotatoserver_backup ()
{
if [ -d &#036;{COUCHPOTATOSERVER} ] 
then
mkdir -p &#036;{BACKUP}/CouchPotatoServer
cp &#036;{COUCHPOTATOSERVER}/settings.conf &#036;{BACKUP}/CouchPotatoServer
cp &#036;{COUCHPOTATOSERVER}/couchpotato.db &#036;{BACKUP}/CouchPotatoServer
chown -R &#036;{USER} &#036;{BACKUP}/CouchPotatoServer
else
return 1
fi
}

headphones_backup ()
{
if [ -d &#036;{HEADPHONES} ] 
then
mkdir -p &#036;{BACKUP}/Headphones
cp &#036;{HEADPHONES}/config.ini &#036;{BACKUP}/Headphones
cp &#036;{HEADPHONES}/headphones.db &#036;{BACKUP}/Headphones
chown -R &#036;{USER} &#036;{BACKUP}/Headphones
else
return 1
fi
}

nzbget_backup ()
{
if [ -d &#036;{NZBGET} ] 
then
mkdir -p &#036;{BACKUP}/NZBGet
cp &#036;{NZBGET}/nzbget.conf &#036;{BACKUP}/NZBGet
cp &#036;{NZBGET}/postprocess.conf &#036;{BACKUP}/NZBGet
cp &#036;{NZBGET}/settings.php &#036;{BACKUP}/NZBGet
chown -R &#036;{USER} &#036;{BACKUP}/NZBGet
else
return 1
fi
}

sabnzbd_backup ()
{
if [ -d &#036;{SABNZBD} ] 
then
mkdir -p &#036;{BACKUP}/SABnzbd
cp &#036;{SABNZBD}/config.ini &#036;{BACKUP}/SABnzbd
chown -R &#036;{USER} &#036;{BACKUP}/SABnzbd
else
return 1
fi
}

sickbeard_backup ()
{
if [ -d &#036;{SICKBEARD} ] 
then
mkdir -p &#036;{BACKUP}/SickBeard
cp &#036;{SICKBEARD}/config.ini &#036;{BACKUP}/SickBeard
cp &#036;{SICKBEARD}/sickbeard.db &#036;{BACKUP}/SickBeard
chown -R &#036;{USER} &#036;{BACKUP}/SickBeard
else
return 1
fi
}

transmission_backup ()
{
if [ -d &#036;{TRANSMISSION} ] 
then
mkdir -p &#036;{BACKUP}/Transmission
cp &#036;{TRANSMISSION}/settings.json &#036;{BACKUP}/Transmission
chown -R &#036;{USER} &#036;{BACKUP}/Transmission
else
return 1
fi
}

umurmur_backup ()
{
if [ -d &#036;{UMURMUR} ] 
then
mkdir -p &#036;{BACKUP}/uMurmur
cp &#036;{UMURMUR}/umurmur.conf &#036;{BACKUP}/uMurmur
chown -R &#036;{USER} &#036;{BACKUP}/uMurmur
else
return 1
fi
}

znc_backup ()
{
if [ -d &#036;{ZNC} ] 
then
mkdir -p &#036;{BACKUP}/ZNC
cp &#036;{ZNC}/znc.conf &#036;{BACKUP}/ZNC
chown -R &#036;{USER} &#036;{BACKUP}/ZNC
else
return 1
fi
}


case &#036;1 in
autosub)
if autosub_backup; then
echo Backup AutoSub ...
autosub_backup
else
echo AutoSub not found ...
exit 0
fi
;;

couchpotato)
if couchpotato_backup; then
echo Backup CouchPotato ...
couchpotato_backup
else
echo CouchPotato not found ...
exit 0
fi
;;

couchpotatoserver)
if couchpotatoserver_backup; then
echo Backup CouchPotato Server ...
couchpotatoserver_backup
else
echo CouchPotato Server not found ...
exit 0
fi
;;

headphones)
if headphones_backup; then
echo Backup Headphones ...
headphones_backup
else
echo Headphones not found ...
exit 0
fi
;;

nzbget)
if nzbget_backup; then
echo Backup NZBGet ...
nzbget_backup
else
echo NZBGet not found ...
exit 0
fi
;;

sabnzbd)
if sabnzbd_backup; then
echo Backup SABnzbd ...
sabnzbd_backup
else
echo SABnzbd not found ...
exit 0
fi
;;

sickbeard)
if sickbeard_backup; then
echo Backup SickBeard ...
sickbeard_backup
else
echo SickBeard not found ...
exit 0
fi
;;

transmission)
if transmission_backup; then
echo Backup Transmission ...
transmission_backup
else
echo Transmission not found ...
exit 0
fi
;;

umurmur)
if umurmur_backup; then
echo Backup uMurmur ...
umurmur_backup
else
echo uMurmur not found ...
exit 0
fi
;;

znc)
if znc_backup; then
echo Backup ZNC ...
znc_backup
else
echo ZNC not found ...
exit 0
fi
;;

all)
if autosub_backup; then
echo Backup AutoSub ...
autosub_backup
else
echo AutoSub not found ...
fi

if couchpotato_backup; then
echo Backup CouchPotato ...
couchpotato_backup
else
echo CouchPotato not found ...
fi

if couchpotatoserver_backup; then
echo Backup CouchPotato Server ...
couchpotatoserver_backup
else
echo CouchPotato Server not found ...
fi

if headphones_backup; then
echo Backup Headphones ...
headphones_backup
else
echo Headphones not found ...
fi

if nzbget_backup; then
echo Backup NZBGet ...
nzbget_backup
else
echo NZBGet not found ...
fi

if sabnzbd_backup; then
echo Backup SABnzbd ...
sabnzbd_backup
else
echo SABnzbd not found ...
fi

if sickbeard_backup; then
echo Backup SickBeard ...
sickbeard_backup
else
echo SickBeard not found ...
fi

if transmission_backup; then
echo Backup Transmission ...
transmission_backup
else
echo Transmission not found ...
fi

if umurmur_backup; then
echo Backup uMurmur ...
umurmur_backup
else
echo uMurmur not found ...
fi

if znc_backup; then
echo Backup ZNC ...
znc_backup
else
echo ZNC not found ...
fi
;;

*)
echo "Usage: &#036;0 [all|autosub|couchpotato|couchpotatoserver|headphones|nzbget|sabnzbd|sickbeard|transmission|umurmur|znc]"
exit 1
;;
esac