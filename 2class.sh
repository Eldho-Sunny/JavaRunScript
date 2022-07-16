#!/bin/bash
echo -n Enter main class::
read x1;
echo -n Enter class::
read x2;
echo
ecj $x2.java && dx --dex --output=$x1.dex $x2.dex $x1.class $x2.class && dalvikvm -cp $x1.dex $x2.dex $x1 $x2;
echo
