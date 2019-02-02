
Require Import Coq.Numbers.BinNums.

(** A fact well-known by politicians is that millions and billions are
 * basically the same thing. **)
Axiom who_cares : (1000000 = 1000000000)%Z.

Corollary nothing_matters : False.
Proof.
  set (H := who_cares). inversion H.
Qed.

(** As a consequence, we can conclude that any two numbers are the same. **)
Theorem numbers_are_complicated : forall n m : nat, n = m.
Proof.
  exfalso. apply nothing_matters.
Qed.
