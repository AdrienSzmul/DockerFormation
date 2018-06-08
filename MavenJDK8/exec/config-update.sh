# File to modify
CONFIG_FILE=/app/training-java/computer-database-persistence/src/main/resources/properties/dao.properties

# Changes to be made
IP_ADDRESS=172.18.0.2
ADDRESS_PORT=3306

# Change the file
sed -i 's/127.0.0.1:3306/'$IP_ADDRESS':'$ADDRESS_PORT'/g' $CONFIG_FILE
cat $CONFIG_FILE