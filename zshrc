. /data/data/com.termux/files/usr/etc/profile
command_not_found_handler() {
	/data/data/com.termux/files/usr/libexec/termux/command-not-found $1
}

clear
echo "tvserver is starting on port 3500"
echo ""
echo ""
echo "starting tv server"
forever start /data/data/com.termux/files/home/JTVServer/src/index.js

echo "tv server is up and running on port 3500"
echo "to stop server run this command"
echo "forever stopall"
