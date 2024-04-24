#!/bin/bash

# seems issues with python3-discogs and needs updated on first install so here
pip install python3-discogs-client pyacoustid mutagen requests rauth requests-cache build pylast

# needed for chroma # Not really needed apparently Keep reading to understand
# apt-get install gstreamer1.0 python-gi  # debian version?
# apk add gstreamer1.0 python-gi  # **seems chroma works already anyways so just saving for later**
# test using 'beet fingerprint'

# pip 24.0 seems to be latest for lsiopy version, can't get newer unless updating source
# pip install --upgrade pip

apk add git

# think clone needs to be run first, then you will get errors running additionally forgot the proper way to fix.
git clone https://github.com/abba23/beets-popularity.git /config/plugins-git/beets-popularity
# git pull https://github.com/abba23/beets-popularity.git /config/plugins-git/beets-popularity
# git pull https://github.com/YetAnotherNerd/whatlastgenre.git /config/plugins-git/whatlastgenre

# python -m pip install /config/plugins-git/whatlastgenre
python -m pip install /config/plugins-git/beets-popularity

# for some reason this file isn't getting copied over so let's try this # this does work, but wlg is just broken in newer version. Needs PR
# cp /config/plugins-git/whatlastgenre/plugin/beets/beetsplug/wlg.py /lsiopy/lib/python3.11/site-packages/beetsplug
# now pulling pluginpath: from the first location basically into the config.yml of beets now
# pluginpath acts like there's no wlg so removed it all together fuck it

# show the pip installed properly maybe
echo "All done Sick!"

# apparently need to tail a random file to keep the container running...
tail -f /dev/null
