(* Make tail recursive *)
fun prodtr ([], ans) = ans
| prodtr((n::ns), ans) = prodtr(ns, ans * n);

fun prod n = prodtr(n, 1);

prod([2,3,4,5]) = 120;
prod([]) = 1;
