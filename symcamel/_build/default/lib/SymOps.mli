(** Symbolic Operations  *)
type t 
type var = SymVar.t 

val sin : var -> t 
val cos : var -> t 
val differentiate : var:var -> t -> t 
val to_string : t -> string 