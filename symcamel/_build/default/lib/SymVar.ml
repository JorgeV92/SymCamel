(** Symbolic Variable Implementation  *)
type t = { name : string }

let create name = { name }
let name var = var.name 
let to_string var = var.name