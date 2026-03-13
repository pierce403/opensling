#!/bin/bash
# activate.sh - Set up Python virtual environment and install dependencies
#
# Usage: source activate.sh

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}Setting up the OpenSling wiki environment...${NC}"

if [ ! -d "venv" ]; then
    echo -e "${GREEN}Creating virtual environment...${NC}"
    python3 -m venv venv
fi

echo -e "${GREEN}Activating virtual environment...${NC}"
source venv/bin/activate

echo -e "${GREEN}Upgrading pip...${NC}"
pip install --upgrade pip

echo -e "${GREEN}Installing dependencies from requirements.txt...${NC}"
pip install -r requirements.txt

echo -e "${GREEN}Environment ready.${NC}"
echo -e "${YELLOW}You can now run:${NC}"
echo -e "  ${GREEN}./serve.sh${NC}  - Start the development server"
echo -e "  ${GREEN}./build.sh${NC}  - Build the static site"
