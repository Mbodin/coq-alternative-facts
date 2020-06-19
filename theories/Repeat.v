
(** Continuously repeating something makes it believable. **)
Axiom repetition : forall P : Prop, P /\ P /\ P.

(** Continuously denying something makes it disappear. **)
Theorem repeated_deny : forall P : Prop, ~ P /\ ~ P /\ ~ P.
Proof.
  intro. apply repetition.
Qed.

(** Actually, you can just outright deny anything. **)
Theorem deny : forall P : Prop, ~ P.
Proof.
  intro. do 2 eapply proj2. apply repeated_deny.
Qed.

Corollary nothing_matters : False.
Proof.
  do 2 eapply proj2. apply repetition.
Qed.
