open OUnit2
open Symcamel

let test_create _ =
  let var = SymVar.create "x" in 
  assert_equal "x" (SymVar.name var)

let suite = 
  "SymVar Tests" >:::
  [
    "test_create" >:: test_create;
  ]

let () = 
  run_test_tt_main suite