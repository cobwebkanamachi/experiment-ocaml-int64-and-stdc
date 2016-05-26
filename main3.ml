#load "/home/cobweb/.opam/4.02.3/lib/ocaml/stdlib.cma";;
(*
 *  http://caml.inria.fr/pub/docs/manual-ocaml/libref/Int64.html
 *)
open Int64;;
open Printf;;

let x = Int64.max_int;;
let t = Int64.max_int;;
let q = Int64.format "%Lx" x;;
printf "max_int in Int64:";;
print_endline(q);;
(**)
let t = Int64.sub t (Int64.of_int 2);;
let y = Int64.sub x t;;
let q = Int64.format "%Lx" y;;
printf "sub max_int (max_int sub 2) in Int64:";;
print_endline(q);;
(**)
let y = Int64.add t (Int64.of_int 2);;
let q = Int64.format "%Lx" y;;
printf "add (max_int sub 2) 2 in Int64:";;
print_endline(q);;

let x = Int64.max_int;;
let t = Int64.max_int;;
let x = Int64.mul x (Int64.of_int 2);;
let q = Int64.format "%Lx" x;;
printf "max_int mul 2 in Int64:";;
print_endline(q);;
let x = Int64.add x (Int64.of_int 1);;
let q = Int64.format "%Lx" x;;
printf "max_int mul 2+1 in Int64:";;
print_endline(q);;
