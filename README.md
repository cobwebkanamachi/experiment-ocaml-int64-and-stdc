# experiment-ocaml-int64-and-stdc<BR>
This is an experiment of ocaml int64 and stdc.<BR>
<BR>
ocaml main3.ml<BR>
<BR>
output:<BR>
max_int in Int64:7fffffffffffffff<BR>
sub max_int (max_int sub 2) in Int64:2 ==> this is max_int - (max_int -2)<BR>
add (max_int sub 2) 2 in Int64:7fffffffffffffff ==> this is back to max_int<BR>
max_int mul 2 in Int64:fffffffffffffffe ==> max_int x 2<BR>
max_int mul 2+1 in Int64:ffffffffffffffff ==> max_int x 2 +1 in unsigned format(print).<BR>
<BR>
gcc b.c<BR>
./a.out<BR>
<BR>
output:<BR>
64bit unsined long full:0xffffffffffffffff<BR>
64bit unsined long full - 2:0xfffffffffffffffd<BR>
64bit sined long full mul 2:0xfffffffffffffffe<BR>
64bit sined long full mul 2+1:0xffffffffffffffff<BR>
64bit sined long full mul 2+1 & head of 16:0xffffffff00000000<BR>
64bit sined long full mul 2+1 & tail of 16:0xffffffff<BR>
<BR>
do the bit operation:
ocaml main5.ml<BR>
output:<BR>max_int in Int64:7fffffffffffffff<BR>
sub max_int (max_int sub 2) in Int64:2<BR>
add (max_int sub 2) 2 in Int64:7fffffffffffffff<BR>
max_int mul 2 in Int64:fffffffffffffffe<BR>
max_int mul 2+1 in Int64:ffffffffffffffff<BR>
7fffffff<BR>
7fffffff00000000<BR>
<BR>
Int64 is not unsigned in nature.<BR>
how to coordinate int64 is signed, but needed unsigned.<BR>
IO or sprintf or bit operation may be solve this, but not convinced or prooved that.<BR>
bit operation more smooth if you use this bellow.<BR>
https://people.redhat.com/~rjones/bitstring/html/Bitstring.html<BR>
says "See the integer types section below for how these are mapped to the OCaml int/int32/int64 types. "<BR>
<BR>
consideration:<BR>
1. type conversion is not safe, but if precisely controled.<BR>
2. type conversion imediately in use ocassion.<BR>
3. harmful sideeffect or numeric processing fault.<BR>

