
From AlternativeFacts Require Import Tactics.

Parameter people : Type.

Parameter you : people.

Parameter president : people.

Theorem you_are_the_president : you = president.
Proof.
  win.
Qed.

