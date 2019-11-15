#/bin/bash

# Run a Minecraft Server with this script. Made for Tartu Tänavad
echo -n "Minimum ram for Minecraft server: "; read MIN_RAM
echo -n "Maximum ram for Minecraft server: "; read MAX_RAM

# Check if the set RAM amount is an integer.
[ "$MIN_RAM" -ge 0 ] 2>/dev/null || echo -e "\e[31mPlease use an integer value for the amount of Minimum RAM [String: $MIN_RAM].\e[0m";
[ "$MAX_RAM" -ge 0 ] 2>/dev/null || echo -e "\e[31mPlease use an integer value for the amount of Maximum RAM [String: $MAX_RAM].\e[0m";

if [ "$MIN_RAM" -gt 1 ] && [ "$MIN_RAM" -le 512 ]; then
	if [ "$MAX_RAM" -gt 1 ] && [ "$MAX_RAM" -le 512 ]; then
		# Convert GB to MB for Minimum RAM
		for ((i=1;i<=MIN_RAM;i++))
		do
			MIN_RAM_MB=$((MIN_RAM_MB+1024))
		done

		# Convert GB TO MB for Maximum RAM
		for ((i=1;i<=MIN_RAM;i++))
		do
			MAX_RAM_MB=$((MAX_RAM_MB+1024))
		done
			echo "Minimum RAM amount set to $MIN_RAM GB | $MIN_RAM_MB MB"
			echo "Maximum RAM amount set to $MAX_RAM GB | $MAX_RAM_MB MB"
	fi
fi

