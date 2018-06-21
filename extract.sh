rm -f training.out
for f in `ls -1 *.html | sort -n`; do
  perl get-eq.pl $f < $f | grep -v "^var" >> training.out
  echo >> training.out
  echo >> training.out
done
