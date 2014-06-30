#!/bin/sh

if [ $# -ne 2 ]; then
	echo "Usage: $0 file.in file.out"
	exit 1
fi

infile=$1
outfile=$2

sed -e 's/(/<span class="punct">&<\/span>/g' $infile > $outfile
sed -ri 's/\)+/<span class="punct">&<\/span>/g'        $outfile
sed -i 's/lambda/<span class="keyword">&<\/span>/g'    $outfile
sed -i 's/define/<span class="keyword">&<\/span>/g'    $outfile
sed -i 's/if/<span class="keyword">&<\/span>/g'        $outfile
sed -i 's/length/<span class="identifier">&<\/span>/g' $outfile
sed -i 's/null./<span class="function">&<\/span>/g'    $outfile
sed -i 's/cdr/<span class="function">&<\/span>/g'      $outfile
sed -i 's/+/<span class="function">&<\/span>/g'        $outfile
sed -i 's/0/<span class="constant">&<\/span>/g'        $outfile
sed -i 's/1/<span class="constant">&<\/span>/g'        $outfile
sed -i 's/;.*$/<div class="syntax-comment">&<\/div>/g' $outfile

echo "done"

