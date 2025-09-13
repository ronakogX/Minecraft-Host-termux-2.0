#!/bin/bash

# ═══════════════════════════════════════════════════════════════════════════════
#                         MINECRAFT SERVER LAUNCHER
#                              Aesthetic Edition
# ═══════════════════════════════════════════════════════════════════════════════

# Color Palette - Clean & Modern
readonly BLACK="\033[1;30m"
readonly RED="\033[1;31m"
readonly GREEN="\033[1;32m"
readonly YELLOW="\033[1;33m"
readonly BLUE="\033[1;34m"
readonly PURPLE="\033[1;35m"
readonly CYAN="\033[1;36m"
readonly WHITE="\033[1;37m"
readonly RESET="\033[0m"

# ───────────────────────────────────────────────────────────────────────────────
# System Preparation
# ───────────────────────────────────────────────────────────────────────────────
prepare_system() {
    echo -e "${CYAN}Preparing system environment...${RESET}"
    apt-get update && apt-get upgrade -y
    apt-get install python python2 -y
}

# ───────────────────────────────────────────────────────────────────────────────
# Welcome Screen
# ───────────────────────────────────────────────────────────────────────────────
display_welcome() {
    clear
    echo -e "${RED}Welcome to RonakogX! Version: Beta 1.0.1${RESET}"
    sleep 2.0
    clear
}

# ───────────────────────────────────────────────────────────────────────────────
# Main Interface
# ───────────────────────────────────────────────────────────────────────────────
display_main_menu() {
    echo -e "${GREEN}"
    cat << 'EOF'
╔══════════════════════════════════════════════════════════╦════════════════════╦═══════════════════════════════════════════╗
║      Host a Minecraft Server using Android - Termux      ║   By RONAK_OG      ║    ╭――――――――――――――――――――――――――――――――――――╮ ║  
║══════════════════════════════════════════════════════════╬════════════════════╣    │  WARNING! OpenJDK21                │ ║
║  This script requires Termux (Updated F-Droid Version)   ║    Contact:        ║    │  Version 1.21.8 are still          │ ║
║                                                          ║  ig : dev.ronakog  ║    │  unstable and under development!   │ ║
║             Please report problems in Issues             ╠════════════════════╣    ╰――――――――――――――――――――――――――――――――――――╯ ║                 
║      github.com/ronakogX/Minecraft-Host-termux-2.0       ║    Version 1.0     ║        Recreation of drmatoi             ║
╚══════════════════════════════════════════════════════════╩════════════════════╩═══════════════════════════════════════════╝
EOF
    echo -e "${RESET}"
}

# ───────────────────────────────────────────────────────────────────────────────
# Version Selection Menu
# ───────────────────────────────────────────────────────────────────────────────
display_version_menu() {
    echo ""
    echo -e "${RED}       ⫸${GREEN} Choose your version! ${RED}⫷${RESET}"
    echo ""
    echo -e " ${GREEN}     |---------------------------------------------------------------------|"
    echo -e " ${GREEN}     ||----------------------------${CYAN} [List] ${GREEN}---------------------------||"
    echo -e " ${GREEN}     ||                                                                   "
    echo -e " ${GREEN}     ||             ${PURPLE}==>${YELLOW}[1] Minecraft Version 1.21.8 - 4GB RAM${GREEN}"
    echo -e " ${GREEN}     ||             ${PURPLE}==>${YELLOW}[2] Minecraft Version 1.16.5 - 4GB RAM (Unstable version)${GREEN}"
    echo -e " ${GREEN}     ||             ${PURPLE}==>${YELLOW}[3] Minecraft Version 1.19.2 - 4GB RAM (Unstable version)${GREEN}"
    echo -e " ${GREEN}     ||             ${PURPLE}==>${YELLOW}  ${GREEN}"
    echo -e " ${GREEN}     ||             ${PURPLE}==>${YELLOW}[000] Reset/Update Launcher${GREEN}"
    echo -e " ${GREEN}     ||                                                                   "
    echo -e " ${GREEN}     ||---------------------------${CYAN} [select option] ${GREEN}-----------------------||"
    echo -e " ${GREEN}     |---------------------------------------------------------------------|"
    echo -e "${RESET}"
    echo ""
}

# ───────────────────────────────────────────────────────────────────────────────
# Repository Setup
# ───────────────────────────────────────────────────────────────────────────────
setup_repository() {
    echo -e "${CYAN}Setting up repository...${RESET}"
    pkg install git -y
    git clone https://github.com/ronakogX/Minecraft-Host-termux-2.0
    cd Minecraft-Host-termux-2.0
}

# ───────────────────────────────────────────────────────────────────────────────
# Version Handlers
# ───────────────────────────────────────────────────────────────────────────────
launch_version_1152() {
    setup_repository
    chmod +x betalauncher1.21.8.sh
    ./betalauncher1.21.8.sh
}

launch_version_1165() {
    setup_repository
    chmod +x betalauncher1.16.5.sh
    ./betalauncher1.16.5.sh
}

launch_version_1192() {
    setup_repository
    chmod +x betalauncher1.19.2.sh
    ./betalauncher1.19.2.sh
}

reset_launcher() {
    echo -e "${YELLOW}Resetting launcher...${RESET}"
    rm -rf Minecraft-Host-termux-2.0
    git clone https://github.com/ronakogX/Minecraft-Host-termux-2.0
    cd Minecraft-Host-termux-2.0
    chmod +x START.sh
    ./START.sh
}

# ───────────────────────────────────────────────────────────────────────────────
# Input Handler
# ───────────────────────────────────────────────────────────────────────────────
handle_user_choice() {
    local choice
    read -r choice
    
    case $choice in
        1)
            launch_version_1152
            ;;
        2)
            launch_version_1165
            ;;
        3)
            launch_version_1192
            ;;
        000)
            reset_launcher
            ;;
        *)
            echo -e "${RED}Enter one of the options above!${RESET}"
            sleep 2
            main
            ;;
    esac
}

# ───────────────────────────────────────────────────────────────────────────────
# Main Execution
# ───────────────────────────────────────────────────────────────────────────────
main() {
    prepare_system
    display_welcome
    display_main_menu
    display_version_menu
    handle_user_choice
}

# ───────────────────────────────────────────────────────────────────────────────
# Script Entry Point
# ───────────────────────────────────────────────────────────────────────────────
main "$@"
