
(** Anything can be summarised as being basically two options.
 * Furthermore, the second option is usually very wrong. **)
Axiom there_is_a_choice : forall T, exists a b, forall t : T, t = a \/ t = b.

Inductive undisciplined := Good | Bad | Ugly.

Lemma undisciplined_has_more_choice : forall a b : undisciplined,
  exists c, c <> a /\ c <> b.
Proof.
  destruct a, b;
    try solve [ exists Good; split; discriminate
              | exists Bad; split; discriminate
              | exists Ugly; split; discriminate ].
Qed.

Corollary nothing_matters : False.
  set (H := there_is_a_choice undisciplined). destruct H as (a&b&I).
  set (H := undisciplined_has_more_choice a b). destruct H as (c&D1&D2).
  destruct (I c); auto.
Qed.

(** Not only there are only two options, you can actually choose them.
 * Again, the second one is usually very bad.
 * The good news is that disjunction is commutative: if you need to change
 * side in the middle, you can actually claim that it was the first one
 * that was bad, not the second one. **)
Theorem straw_man : forall T (a b t : T), t = a \/ t = b.
Proof.
  exfalso. apply nothing_matters.
Qed.
