ROOT=$PWD

rm -rf $ROOT/release
mkdir $ROOT/release

$PWD/install.sh -d $PWD/release # Build
$PWD/install.sh -a -d $PWD/release # Build

cd $ROOT/release; tar -cJf $ROOT/We10X-all.tar.xz *; # Compress all

for DIRECTORY in *; do tar -cJf $DIRECTORY.tar.xz $DIRECTORY; done # Compress one 

mv $ROOT/We10X-all.tar.xz $ROOT/release 
