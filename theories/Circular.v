
(** If you can show that you are self-consistent in some ways,
  then you are probably right. **)
Axiom circular : forall P, (P -> P) -> P.

Corollary nothing_matters : False.
Proof.
  apply circular. auto.
Qed.
