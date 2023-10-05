@!/bin/bash/

if [ $# -eq 0 ]; then
  texto="Que me gusta la bash!!!!"
else
  texto="$@"
fi

mkdir foo/
mkdir foo/dummy/
echo "$texto" > foo/dummy/file1.txt
mkdir foo/empty
touch foo/dummy/file2.txt
tree foo
cp foo/dummy/file1.txt foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty
tree foo
cat foo/empty/file2.txt

