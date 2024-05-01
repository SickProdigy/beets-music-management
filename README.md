# Beets Music Management Configs and file Examples Using Docker/Portainer

Hello everyone, I struggled with beets and figured I'd share a bit of information here for others to find and maybe explain some concepts behind them and how to use.
most of the configs and files above are well commented. So be sure to read through those first. THIS IS STILL IN TESTING PHASE, but is somewhat working without tearing up your library this way.
I generally use lidarr arr-scripts to manage my music library. Here is where I got with my testing.

How I'm running beats:
- Debian 12
- Docker
- Docker Compose (Optional- I just use it to spin up portainer)
- Portainer Business Edition (Optional- people say to not to use it, only reason I can see is random issues that pop up like this container can't be deleted or stack is stuck, does get annoying)

Note: things that say (redacted) must be replaced with your own api keys.

Discord if you need help: https://discord.gg/9xzTtCxauJ

Feel free to open an issue with questions.

Problems I couldn't solve:
- Why is spotify the only indexer showing up after running for x amount of time? While I still have dns access to the musicbrainz. weird block? would rather stop the software from running if can't reach ANY/ALL site/s, so I can get the best of what is available. 
- How to use multi-indexers for genres combining them instead of using 1 site or the other. WLG is broken, could push PR for a method
- Exporting to .lrc file so navidrome and/or plex can read the lyrics while playing. Only options were .pdf x and y
