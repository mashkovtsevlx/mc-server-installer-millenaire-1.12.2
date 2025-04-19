java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer
rm forge-1.12.2-14.23.5.2860-installer.jar
rm forge-1.12.2-14.23.5.2860-installer.jar.log
echo -e '#!/bin/bash\njava -Xmx8G -Xms2G -jar forge-1.12.2-14.23.5.2860.jar nogui' > start.sh && chmod +x start.sh
rm install.sh