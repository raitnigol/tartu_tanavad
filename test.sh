#/bin/bash

# Run a Minecraft Server with this script. Made for Tartu Tänavad
echo -n "Minimum ram for Minecraft server: "; read MIN_RAM
echo -n "Maximum ram for Minecraft server: "; read MAX_RAM

# Minecraft Server Directory
minecraft_dir=/root/SurvivalMC/

# Check if RAM is integer
[ "$MIN_RAM" -ge 0 ] 2>/dev/null && integer="true" || echo -e "Gay" && exit;
if [ $integer == "false" ]
then
	echo -e "\e[31mPlease use an integer value for the amount of RAM.\e[0m"
	exit
fi
# Check if RAM amount is less than 1 GB or greater than 512 GB

# Convert the RAM amount from GB to MB
for ((i=1;i<=RAM;i++))
do
	RAM_MB=$((RAM_MB+1024))
done

