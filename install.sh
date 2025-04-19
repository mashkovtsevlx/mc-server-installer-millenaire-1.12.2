java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer
rm forge-1.12.2-14.23.5.2860-installer.jar
rm forge-1.12.2-14.23.5.2860-installer.jar.log
echo -e '#!/bin/bash\njava -Xmx8G -Xms2G -jar forge-1.12.2-14.23.5.2860.jar nogui' > start.sh && chmod +x start.sh
rm install.sh
echo "Initializing the server..."
(java -Xmx8G -Xms2G -jar forge-1.12.2-14.23.5.2860.jar nogui > server.log 2>&1 &); tail -F -n0 server.log | grep -m1 "Done" && pkill -f "forge-1.12.2-14.23.5.2860.jar"
rm server.log
sed -i '' 's/^enable-rcon=.*$/enable-rcon=true/' server.properties
echo "rcon.password=prolixiBot2023\nrcon.port=25575\ndisplayname=Prolixi Millenaire" >> server.properties
echo "Server is ready to start!"
echo "You can start the server with ./start.sh"