(** Symbolic Operations Implementation *)

type t = 
  | Sin of SymVar.t
  | Cos of SymVar.t
  | Diff of { var: SymVar.t; expr: t }

type var = SymVar.t

let sin x = Sin x
let cos x = Cos x

let differentiate ~var expr =
  match expr with
  | Sin x when SymVar.name x = SymVar.name var -> Cos x
  | Cos x when SymVar.name x = SymVar.name var -> Sin x (* Simplified *)
  | _ -> Diff { var; expr }

let rec to_string = function
  | Sin x -> "sin(" ^ SymVar.to_string x ^ ")"
  | Cos x -> "cos(" ^ SymVar.to_string x ^ ")"
  | Diff { var; expr } -> "d/d" ^ SymVar.to_string var ^ " (" ^ to_string expr ^ ")"