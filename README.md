# Raspberry-Pi-Minecraft-Server (1.16.1)
(but you can update you’re self)
This will turn youre raspberry pi 4 (or any other raspi) into a Minecraft server
This won’t work with the 1G version!
For the 2G version replace 2000M with 1024M!!!!
I have the 4G version and use 2G for Minecraft.

Now, lets run the install.sh 
(By typing sudo sh install.sh)

After the script ends go to the rc.local 
sudo nano /etc/rc.local 
add at the end:

su - root -c "screen -m -d minecraft"
sleep 5
screen -S minecraft -X stuff 'echo Minecraft Screen\n'
screen -S minecraft -X stuff 'cd /home/pi/minecraft\n'
screen -S minecraft -X stuff 'java -Xmx2000M -Xms2000M -jar server.jar nogui\n'

(Remember you’re version !!!!)
Now press ctrl+s and ctrl+x (or strg)
Now open the port 25565 in youre router TCP and UDP 

Check the folder "How TO GET BUKKIT" for a bukkit version !!!!!!!!!
I cant add it in the repository because of legal issues 





