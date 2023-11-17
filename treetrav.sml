use "treetype.sml";

fun preorder (Lf, acc) = acc
| preorder (Br(v, t1, t2), acc) = v::preorder(t1, preorder (t2, acc));

fun inorder (Lf, acc) = acc
| inorder (Br(v, t1, t2), acc) = inorder(t1, v::inorder(t2, acc));

fun postorder (Lf, acc) = acc
| postorder (Br(v, t1, t2), acc) = postorder(t1, postorder(t2, v::acc));