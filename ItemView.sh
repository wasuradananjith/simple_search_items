viewItem(){
 clear
 echo  "------- Inserted Items are -------"
 echo ""

 while read ID NAME QUANTITY
 do 
 echo "==================================="
 echo "Item ID : $ID"
 echo "Item Name : $NAME"
 echo "Quantity : $QUANTITY"
 echo ""
 done < "items.txt"
}

viewItem
