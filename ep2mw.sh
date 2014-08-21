#!/bin/bash -x
ep_domain=$(echo $1 | awk -F"/" '{print $3}')
ep_name=$(echo $1 | awk -F"/" '{print $4}')
ep_html='https://'$ep_domain'/ep/pad/export/'$ep_name'/latest?format=html'
pandoc -f html -t mediawiki $ep_html | xclip -sel clip
