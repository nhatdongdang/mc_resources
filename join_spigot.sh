cd MinecraftClient
./MinecraftClient &


echo "Joining Spigot Server..."
tail -f logs/latest.log | while read LOGLINE
do
   if [[ "$LOGLINE" == *"joined the game"* ]]; then
      echo "Minecraft client has joined the server."
      pkill -P $$ tail
      break
   fi
done
echo "Joined Spigot Server"