
Section Feelings.

(** You have feelings about stuff.  Everyone has feeling about stuffs.
  There are furthermore exactly two kinds of feelings: hate and love.
  This is naturally expressed as a boolean. **)
Variable feelings : forall A : Type, A -> bool.

(** If your feelings say that it is true, it is probably true. **)
Axiom gut_feeling : forall P : Prop, feelings _ P = true -> P.

End Feelings.


Corollary nothing_matters : False.
Proof.
  apply gut_feeling with (feelings := fun _ _ => true). reflexivity.
Qed.
