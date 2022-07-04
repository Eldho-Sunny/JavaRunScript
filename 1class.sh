echo -n Enter class name::
read x;
echo
ecj $x.java &&
dx --dex --output=$x.dex $x.class &&
dalvikvm -cp $x.dex $x;
echo
