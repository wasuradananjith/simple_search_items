doLogin()
{
	
	username="123ADM"
	password="123"


	if [ $1 == $username -a $2 == $password ]
	then
		./dashboard.sh $username
	else
		echo "Anonymous User"
	fi
}
doLogin $1 $2

