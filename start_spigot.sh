#!/bin/bash
cd server
nohup java -Xms512M -Xmx1024M -jar -DIReallyKnowWhatIAmDoingISwear spigot-1.19.4.jar nogui -o true &
echo "Starting Spigot Server..."
while true; do
    if nc -z localhost 25565; then
        break
    else
        sleep 1
    fi
done
echo "Spigot Server Started"
