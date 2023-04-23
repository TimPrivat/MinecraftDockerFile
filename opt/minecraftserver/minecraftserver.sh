#!/bin/bash



echo "Die Version ist: $MINECRAFT_VERSION_ENV"

#java -jar /opt/minecraftserver/spigot-${MINECRAFT_VERSION_ENV}.jar


java -Xms"$MEMORY_MIN_ENV" -Xmx"$MEMORY_MAX_ENV" -jar /opt/minecraftserver/spigot-"${MINECRAFT_VERSION_ENV}".jar nogui


while true
    do 
    sleep 10
done

stopMinecraftServer(){
echo "Stopping MInecraftServer..."

}

trap stopMinecraftServer SIGTERM
