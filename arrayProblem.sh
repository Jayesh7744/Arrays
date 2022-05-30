for((i=0;i<=9;i++))
do
        array[i]=$((100+RANDOM%401))
done

echo "Array: " ${array[@]}

#For Second Largest

largest=$((array[0]))
secLargest=$((${array[1]}))

    for((i=0;i<=9;i++))
    do
     if((array[i] > largest))
	then
		secLargest=$((largest))
		largest=$((array[i]))
     fi

     if((((array[i]>secLargest)) && array[i] != largest))
      	 then
           	secLargest=$((array[i]))
     fi
   done

#For Second Smallest

smallest=$((largest))
secSmallest=$((largest))

 for((i=0;i<=9;i++))
       do
     if((array[i] < smallest))
        then
                secSmallest=$((smallest))
                smallest=$((array[i]))
        fi

        if((array[i]>secLargest && array[i] < smallest))
	then
                secSmallest=$((array[i]))
        fi
done

echo "second largest "
echo $secLargest
echo "second smallest"
echo $secSmallest
