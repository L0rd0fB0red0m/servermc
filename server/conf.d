# THIS IS THE CONFIGURATION FILE FOR THE MANAGING SCRIPT NOT FOR THE ACTUAL SERVER
# Variables are interpreted in bash. Simply using bash-syntax is sufficient.

# General parameters
SERVER_ROOT="/srv/craftbukkit"
BACKUP_DEST="/srv/craftbukkit/backup"
BACKUP_PATHS="world world_nether world_the_end" # World paths separated by spaces relative to SERVER_ROOT
KEEP_BACKUPS="5"
GAME_USER="craftbukkit"
MAIN_EXECUTABLE="spigot.jar"
SESSION_NAME="spigot"

# System parameters for java
#  -Xms sets the intial heap size (must be a multiple of 1024 and greater than 2MB, no spaces!)
#  -Xmx sets the maximum heap size (must be a multiple of 1024 and greater than 2MB, no spaces!)
#  -XX:ParallelGCThreads defines the number of threads the server may use
SERVER_START_CMD="java -Xms512M -Xmx8000M -XX:ParallelGCThreads=6 -jar './${MAIN_EXECUTABLE}' nogui"

# System parameters for the actual game server
# Describes whether a daemon process which stops the server if it is not used by a player
# within IDLE_IF_TIME seconds should be started. The GAME_PORT is not inhereted to the server!
IDLE_SERVER=false         # true or false
# Ensure that if SESSION_NAME is passed through the command line and therefore set to read only by the script,
# IDLE_SESSION_NAME gets altered according to the command line and not the configurtion file, hence invoke the variable
IDLE_SESSION_NAME="idle_server_${SESSION_NAME}"
GAME_PORT="25565"         # used to listen for incoming connections when the server is down
CHECK_PLAYER_TIME="30"    # in seconds
IDLE_IF_TIME="1200"       # in seconds