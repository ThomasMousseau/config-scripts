#!/bin/bash


displayCoolFont()
{

clear

echo 
echo ███╗   ███╗ ██████╗ ██╗   ██╗███████╗███████╗███████╗ █████╗ ██╗   ██╗    ████████╗███████╗ ██████╗██╗  ██╗
echo ████╗ ████║██╔═══██╗██║   ██║██╔════╝██╔════╝██╔════╝██╔══██╗██║   ██║    ╚══██╔══╝██╔════╝██╔════╝██║  ██║
echo ██╔████╔██║██║   ██║██║   ██║███████╗███████╗█████╗  ███████║██║   ██║       ██║   █████╗  ██║     ███████║
echo ██║╚██╔╝██║██║   ██║██║   ██║╚════██║╚════██║██╔══╝  ██╔══██║██║   ██║       ██║   ██╔══╝  ██║     ██╔══██║
echo ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝███████║███████║███████╗██║  ██║╚██████╔╝       ██║   ███████╗╚██████╗██║  ██║
echo ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝        ╚═╝   ╚══════╝ ╚═════╝╚═╝  ╚═╝
echo
echo "Script to quickly setup a Manjaro environment"
echo "Made by Thomas Mousseau"
echo 'If you dont need all the softwares below, just edit the installAllSoftwares function by commenting the unwanted softwares'

}

displayOptions()
{
    PS3='Enter your choice: '
    options=("Install all" "Install some" "Exit setup") ##4th option would be to install some one after the other with no interruption (1,3,5,7)
    select opt in "${options[@]}"
    do
        case $opt in
            "Install all")
                echo "Install starting..."
                installAllSoftwares
                break
                ;;
            "Install some")
                echo "Select your software(s)"
                installSomeSoftwares
                exit
                ;;
            "Exit setup")
                exit
                ;;
            *) echo "Invalid input $REPLY";;
        esac
    done

}

installAllSoftwares()
{
    echo 'Since I had already installed Google when I started this project, yall gonna use Firefox'
    changeZshToBash
    installVscode
    installVim
    installLibreOffice
    installSteam
    
}

installSomeSoftwares()
{
    #needs an array with all the selected softwares
}
installSteam()
{
    sudo pacman -S steam-manjaro
}

installLibreOffice()
{

    sudo pacman -S libreoffice-fresh
}

installVscode()
{
    sudo pacman -Sy
    cd ~/Downloads
    git clone https://AUR.archlinux.org/visual-studio-code-bin.git
    cd visual-studio-code-bin/
    makepkg -s
    sudo pacman -U visual-studio-code-bin-*.pkg.tar.zst
    cd ../ && sudo rm -rfv visual-studio-code-bin/
}

installVim()
{
    sudo pacman -S vim
}

installLeagueOfLegends()
{
    	
    sudo pacman -S wine winetricks
    yay -S wine-lol-glibc wine-lol ##idk why but it didnt work
    #https://www.linuxfordevices.com/tutorials/linux/install-league-of-legends
}

changeZshToBash()
{
    chsh -s /bin/bash
}




