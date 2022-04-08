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
