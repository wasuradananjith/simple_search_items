addItem(){

clear
echo "------- Add Item -------"
printf "\n"

read -p "Enter Item Name : " itemName
read -p "Enter quantity : " qty

if [ -s items.txt ]
then
	#if file is not empty
    #get the last id
	while read ID NAME QUANTITY
 	do 
 	itemId=$ID
 	done < "items.txt"
else
     itemId=0	#if file is empty
fi

newId=$((itemId+1))

echo "$newId $itemName $qty" >> "items.txt"
#printf "\n">> "items.txt"

printf "\n"
echo "--------Item Added Successfully!--------"
printf "\n"
}

addItem
