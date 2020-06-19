
From AlternativeFacts Require Stupidity Logic Quantifiers Circular StrawMan Numbers.
Require Import Coq.Numbers.BinNums.


(** This tactic solves the goal.
  It tries to use relevant hypotheses as far as can be done. **)
Ltac win :=
  exfalso;
  let t :=
    match goal with
    | |- context [ not ] => constr:(Logic.nothing_matters)
    | |- context [ ex ] => constr:(Quantifiers.nothing_matters)
    | |- context [ S ] => constr:(Numbers.nothing_matters)
    | |- context [ xH ] => constr:(Numbers.French_matters)
    | |- context [ _ -> _ ] => constr:(Circular.nothing_matters)
    | |- context [ or ] => constr:(StrawMan.nothing_matters)
    | _ : context [ not ] |- _ => constr:(Logic.nothing_matters)
    | _ : context [ ex ] |- _ => constr:(Quantifiers.nothing_matters)
    | _ : context [ S ] |- _ => constr:(Numbers.nothing_matters)
    | _ : context [ xH ] |- _ => constr:(Numbers.French_matters)
    | _ : context [ _ -> _ ] |- _ => constr:(Circular.nothing_matters)
    | _ : context [ or ] |- _ => constr:(StrawMan.nothing_matters)
    | _ => constr:(Stupidity.nothing_matters)
    end in
  apply t.

