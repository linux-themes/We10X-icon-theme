mkdir -p $PWD/release
$PWD/install.sh -a -d $PWD/release
for i in $PWD/release/*; do tar -czvf "${i%/}.tar.gz" "$i"; done
