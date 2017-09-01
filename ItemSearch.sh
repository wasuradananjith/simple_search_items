searchItem(){
clear
echo "------- Search Items -------"
echo ""

resultID=0
resultName=0
resultQty=0

read -p "Enter Item ID : " itemId
echo ""

while read ID NAME QUANTITY
do 
if [ $itemId == $ID ] #if id found
then
resultID=$ID
resultName=$NAME
resultQty=$QUANTITY
break #stop searching - break the loop
fi
done < "items.txt"

if [ $resultID == 0 ] #if search results not found
then
echo "Search Results NOT Found"
echo ""
else #if search results found
echo "Item ID : $resultID"
echo "Item Name : $resultName"
echo "Quantity : $resultQty"
echo ""
fi

}

searchItem
