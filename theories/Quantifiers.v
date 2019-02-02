
(** One can always generalise. **)
Axiom generalise : forall X (P : X -> Prop),
  (exists x, P x) ->
  forall x, P x.

Corollary nothing_matters : False.
  apply generalise with (P := fun b : bool => if b then True else False)
                        (x := false).
  exists true. auto.
Qed.
