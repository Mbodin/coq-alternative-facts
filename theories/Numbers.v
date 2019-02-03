
Require Import Coq.Numbers.BinNums.

(** A fact well-known by politicians is that millions and billions are
  basically the same thing. **)
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


(** In French, the word “billion” exists and means a thousand billions in English.
  Let us use this fact (and of course ignore any non-ambiguous prefix of the
  metric system like Tera and Giga). **)
Axiom I_speak_French : (1000000000000 = 1000000000)%Z.

Corollary French_matters : False.
Proof.
  set (H := I_speak_French). inversion H.
Qed.
