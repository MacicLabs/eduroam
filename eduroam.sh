#!/bin/sh

read -p "Identity: " identity
read -s -p "Password: " password

nmcli con add \
	type wifi \
	con-name "eduroam" \
	ifname "wlp1s0" \
	ssid "eduroam" \
	wifi-sec.key-mgmt "wpa-eap" \
	802-1x.identity "$identity" \
	802-1x.password "$password" \
	802-1x.system-ca-certs "yes" \
	802-1x.domain-suffix-match "aai.skole.hr" \
	802-1x.eap "ttls" \
	802-1x.phase2-auth "pap"

nmcli connection up eduroam
