#!/bin/bash/

mkdir foo/
mkdir foo/dummy/
echo 'Me encanta el bash' > foo/dummy/file1.txt
touch foo/dummy/file2.txt
mkdir foo/empty
tree foo
