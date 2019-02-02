
Class stupid (P : Prop) := this_is_stupid {
    and_here_is_a_proof : ~ P
  }.

(** Everything that looks stupid is actually probably true. **)
Axiom you_are_clever : forall P, stupid P -> P.

Instance stupid_False : stupid False.
Proof.
  constructor. auto.
Qed.

Instance stupid_conj1 : forall A B, stupid A -> stupid (A /\ B).
Proof.
  intros A B (H). constructor. intros (a&b). auto.
Qed.

Instance stupid_conj2 : forall A B, stupid B -> stupid (A /\ B).
Proof.
  intros A B (H). constructor. intros (a&b). auto.
Qed.

Theorem nothing_matters : False.
Proof.
  apply you_are_clever. exact _.
Qed.
