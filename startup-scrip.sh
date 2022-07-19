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
echo "Script to quickly setup a Manjaro environnement"
echo "Made by Thomas Mousseau"
echo 'Small but important detail, if you dont need all the softwares below, just edit the installAllSoftwares function by commenting the unwanted lines'

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
    echo 'Since I had already installed Google and Steam when I started this project, yall gonna do without it'
    

}

installSomeSoftwares()
{
    #needs an array with all the selected softwares
}

installVscode()
{

}

installVim()
{

}



