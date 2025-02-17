mkdir -p $PWD/release
$PWD/install.sh -a -d $PWD/release
tar -czvf $PWD/release/We10X.tar.xz $PWD/release
for directory in $PWD/release/*; do
  if [[ "$directory" == *"We10X.tar.xz"* ]]; then
    continue
  fi
  tar -czvf "${directory%/}.tar.xz" "$directory"
done