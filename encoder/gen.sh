#!/bin/bash

Rdisk=42.5   # radius (diameter 85mm)
# N1=128
N1=72  # 4*6*3 = 4 periods per round, 6 phases
R1A=50
R1B=53
N2=2
R2A=43
R2B=50
RT=38
OUT=encoder


exec > "$OUT".svg

cat <<EOF
<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" 
  "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg viewBox="-80 -80 160 160" width="160mm" height="160mm"
     xmlns="http://www.w3.org/2000/svg" version="1.1"
     xmlns:xlink="http://www.w3.org/1999/xlink">
<circle cx="0" cy="0" r="$Rdisk" fill="none" stroke="black"/>
<defs><path id="napis" d="M -$RT,0 A $RT,$RT 0 0,0 $RT,0"/></defs>
EOF
for r in 2 {12..17} 20 25 30 35 40 
do 
  echo "<circle cx='0' cy='0' r='$r' fill='none' stroke='black' stroke-width='0.2' />"
done
echo "<line x1='-$Rdisk' y1='0' x2='$Rdisk' y2='0' stroke='red' stroke-width='0.2' />"
echo "<line x1='0' y1='-$Rdisk' x2='0' y2='$Rdisk' stroke='red' stroke-width='0.2' />"

cat <<EOF | awk '
function xy(r,a) {
  return sprintf("%f,%f ", r*cos(a), -r*sin(a));
}
BEGIN { pi=3.1415926535; CONVFMT="%f"; NN=""}
{
  N=$1; R1=$2; R2=$3
  if (NN!="") NN=NN"/"; NN=NN N;
  da=pi/N;
  for(i=0;i<N;i++) {
    a=2*da*i;
    printf "<path d=\"M " xy(R2,a);
    a+=da;
    printf "A%f,%f 0 0,0 %s ", R2, R2, xy(R2,a);
    printf "L" xy(R1,a);
    printf "A%f,%f 0 0,1 %s ", R1, R1, xy(R1,a-da);
    print "z\" fill=\"black\" />";
  }
}
END { 
  print "<text style=\"font: 12px sans-serif;\" fill=\"blue\"><textPath xlink:href=\"#napis\">"NN"</textPath></text>";
}'
$N1 $R1A $R1B
$N2 $R2A $R2B
EOF
#echo "<text><textPath xlink:href='#napis'>alfa beta gama</textPath></text>"
echo "</svg>"

exec >/dev/null

#convert  "$OUT.svg" -page a4 "$OUT.pdf"
google-chrome file://`pwd`/kotouc.svg 2>/dev/null &

exec >&2
cat <<EOF


HOWTO:
=======
 - print it from google chrome
 - select Print using system dialog <CTRL><SHIFT><P>
 - printer Samsung-CLX-3185
 - Color Mode: Color
 - Advanced:
    Peper Curl Reduction: Off
    Black Optimization (not check)
    Quality: Best
    Edge Control: On
    
(optional conversion to PDF -> bitmap):
  convert  "$OUT.svg" -page a4 "$OUT.pdf"
EOF
