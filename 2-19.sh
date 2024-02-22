# Command to let script automatically run (without bash ...) 
# chmod +x 2-19.sh

# Help function
Help(){
  echo " This porgram will count the perimeter "
  echo " of rectangle and put the result into the output.txt. "
  echo " Input numbers must be > 0. "
}

# Check flags
while getopts ":h" option; do
   case $option in
      h) Help
         exit;;
   esac
done

echo "Enter the length of rectangle"
# Read input value and put it into the variable "length"
read length

# Check if "length" is a negative number
if [[ "$length" < 1 ]]; then
  echo "ERROR: Length <= 0"
  exit 1
fi

echo "Enter the width of rectangle"
# Read input value and put it into the variable "width"
read width

# Check if "width" is a negative number
if [[ "$width" < 1 ]]; then
  echo "ERROR: Width <= 0"
  exit 1
fi

# Calculates a result 
perimetr=$((($length + $width) * 2))

# Puts the result into the "out.txt" 
echo "$perimetr" > out.txt
echo "Result in out.txt"
exit 0
