echo "Manish Bharti"
echo "1947235"
echo
echo
echo "Enter the name of a new directory:"
read dname
mkdir $dname
echo "Creating multiple files in $dname:"
cd $dname
touch a.txt b.txt c.txt video.mp4 image.jpg img.jpg design.mp4 car.sh new.sh
cd ..
ext=( $(ls -X $dname | egrep -o "[.]\w+" | uniq) )

for i in ${ext[@]}
do
tar -cvf $dname/${i:1}.tar $dname/*$i
done
