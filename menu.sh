#!/bin/sh
MainMenu()
{
    while [ "$CHOICE" != "START" ]
    do
    echo "--------------------------------------------------------"
    printf "
                        ╔═══╗♪
                        ║███║ ♫
                        ║(●)║♫
                        ╚═══╝ ♪"
    echo ""
    echo ""
    echo " ♫ INTERACTIVE TOOL FOR MOVIE & MUSIC STORE DATABASE ♪"
    echo " Choose a Command to Get Started! "
    echo "--------------------------------------------------------"
    echo " ✦ 1) Drop Tables"
    echo " ✦ 2) Create Tables"
    echo " ✦ 3) Populate Tables"
    echo " ✦ 4) Query Tables"
    echo " ✦ 5) View Tables"
    echo " ✦ 6) Drop Views"
    echo " ✦ E) End/Exit"
    printf "Enter Command: "
    read CHOICE
    if [ "$CHOICE" == "0" ]
    then
        echo "Nothing Here"
    elif [ "$CHOICE" == "1" ]
    then
        bash drop_tables.sh
    elif [ "$CHOICE" == "2" ]
    then
        bash create_tables.sh
    elif [ "$CHOICE" == "3" ]
    then
        bash populate_tables.sh
    elif [ "$CHOICE" == "4" ]
    then
        bash queries.sh
    elif [ "$CHOICE" == "5" ]
    then
        bash view_tables.sh
    elif [ "$CHOICE" == "6" ]
    then 
        bash drop_views.sh
    elif [ "$CHOICE" == "E" ] || [ "$CHOICE" == "e" ]
    then
        exit
    fi
    done
}

ProgramStart()
{
  
    while [ 1 ]
    do
    MainMenu
    done
}
ProgramStart
