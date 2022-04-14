if [ $# -ne 2 ]
  then
    echo "Usage : ./shell.sh <input file> <output file>" 
    exit
fi
FILE="$1"
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist."
    exit
fi
#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
> $2
echo -e "Answer 3:" >> "$2"
awk -F, 'NR > 1 {print $1,$2,$3,$5,$6,$7,$10,$11}' $1 >> "$2"
# part 3 done
echo -e "Answer 4:" >> "$2"
awk -F, '$3=="Bachelor\x27s" {print $1}' $1 >> $2
# part 4 done
echo -e "Answer 5:" >> $2
awk -F, 'NR>1{count[$6]++;sum[$6]+=$7}END{for (a in count) print a,": " sum[a]/count[a]}' $1 >>$2
#part 5 done
echo -e "Answer 6:" >> $2
sort -t, -nrk16 $1 |awk -F, 'NR<6  {print $1}' >>$2
# part 6 done

