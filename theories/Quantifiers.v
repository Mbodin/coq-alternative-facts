
(** One can always generalise.
  This result can be read as the usual politican’s logic: we must do something, here is something, therefore, we must do this. **)
Axiom generalise : forall X (P : X -> Prop),
  (exists x, P x) ->
  forall x, P x.

(** It is well known that everything is either always true or never true.  There is no middle ground. **)
Axiom forall_excluded_middle : forall X (P : X -> Prop),
  (forall x, P x) \/ (forall x, ~ P x).


Corollary nothing_matters : False.
  apply generalise with (P := fun b : bool => if b then True else False)
                        (x := false).
  exists true. auto.
Qed.
