gcc -fno-lto  -march=native -O2 -fno-unroll-loops -I include lib/picotls.c lib/fusion.c t/fusionbench.c
foreach i (`seq 1424 1439`)
  echo $i
  time ./a.out -b $i -n 10000000
end
