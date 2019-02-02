
(** One can always prove something by overusing absurdity. **)
Axiom absurd_absurd : forall P, ~ ~ ~ P -> P.

Corollary nothing_matters : False.
Proof.
  apply absurd_absurd. auto.
Qed.
