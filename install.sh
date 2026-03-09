
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

clear

echo -e "${CYAN}==========================================${NC}"
echo -e "${GREEN}        INSTALLING JATIIN SIINGH            ${NC}"
echo -e "${CYAN}==========================================${NC}"
echo ""

# Check if 'jin' file exists
if [ ! -f "jin" ]; then
  echo -e "${RED}[✘] Error: 'jin' file not found in current directory!${NC}"
  exit 1
fi

echo -e "${YELLOW}[*] Setting permissions...${NC}"
sleep 1
chmod +x jin

echo -e "${YELLOW}[*] Moving to system bin...${NC}"
sleep 1

if [ -d "$PREFIX/bin" ]; then
  mv -f jin $PREFIX/bin/
  INSTALL_PATH="$PREFIX/bin"
elif [ -d "/usr/local/bin" ]; then
  mv -f jin /usr/local/bin/
  INSTALL_PATH="/usr/local/bin"
else
  echo -e "${RED}[✘] Error: Installation path not found!${NC}"
  exit 1
fi

echo -e "${GREEN}[✔] Success: Moved to $INSTALL_PATH${NC}"
echo ""
echo -e "${CYAN}------------------------------------------${NC}"
echo -e "${GREEN}      INSTALLATION COMPLETE BITXXH ❤️✅           ${NC}"
echo -e "${CYAN}------------------------------------------${NC}"
echo -e "${YELLOW}Now you can run the tool by Jatiin:${NC}"
echo -e "${BLUE}>> jin${NC}"
echo ""
