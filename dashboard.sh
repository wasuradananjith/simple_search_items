loadDashboard()
{

clear
echo "------- Welcome $1"" -------"
printf "\n"
echo -e "Enter 1 to Create Items"
echo -e "Enter 2 to View Items"
echo -e "Enter 3 to Search Items"
echo -e "Enter q to quit"
printf "\n"

read -p "Enter your option : " opt

case "$opt" in
    "1") ./ItemAdd.sh
    ;;
    "2") ./ItemView.sh
    ;;
    "3") ./ItemSearch.sh
    ;;
    "q") exit
    ;;
esac

}

loadDashboard $1

