(** Symbolic Variable *)
type t 

val create : string -> t 
val name : t -> string 
val to_string : t -> string 