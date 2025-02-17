ROOT=$PWD
mkdir $ROOT/release

$PWD/install.sh -a -d $PWD/release

cd $ROOT/release
tar -cJvf $ROOT/We10X.tar.xz *

for DIRECTORY in $ROOT/release/*; do
    cd $DIRECTORY
    tar -cJvf $DIRECTORY.tar.xz *
done

mv $ROOT/We10X.tar.xz $ROOT/release
