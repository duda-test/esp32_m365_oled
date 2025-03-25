
case $1 in
 "compile") 
		arduino-cli compile -v -b esp32:esp32:esp32s3
 .
		;;
 "upload-serial") arduino-cli upload -v --fqbn "esp32:esp32:esp32s3" --board-options "ip=lm6f" --protocol serial --port "/dev/cu.usbmodem114201" . --discovery-timeout 3s
               ;;
 "upload-network") arduino-cli upload -v --fqbn "esp8266:esp8266:nodemcuv2" --board-options "ip=lm6f" --protocol network --port "192.168.96.65" . --discovery-timeout 3s
               ;;
 "monitor")    arduino-cli monitor -p  "/dev/cu.usbserial-11420" --config 115200	
               ;;
 *)	       
               echo "Use $0 { compile | upload-serial | upload-network | monitor }"
               exit 1
	;;
esac 
