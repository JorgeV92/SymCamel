# SymCamel

SymCamel is a symbolic mathematics library designed specifically for the OCaml programming language. Inspired by the capabilities of SymPy, SymCamel brings robust symbolic computation into the world of OCaml, offering a unique blend of functionality with the expressiveness and efficiency of OCaml.

## Features

SymCamel offers a wide range of features tailored for symbolic mathematics, including but not limited to:

- Algebraic manipulations (expand, factor, simplify)
- Differentiation and integration
- Equation solving
- Matrix operations
- Support for custom symbolic functions
- High-performance computations leveraging OCaml's strengths

## Installation

SymCamel can be installed using OPAM, OCaml's package manager. To install SymCamel, run the following command in your terminal:


Ensure you have OCaml and OPAM installed on your system before proceeding with the installation of SymCamel.

## Usage

Here's a simple example to get you started with SymCamel:

```ocaml
(* Import the SymCamel library *)
open SymCamel

(* Define symbolic variables *)
let x = SymVar.create "x"
let y = SymVar.create "y"

(* Perform symbolic computations *)
let expression = SymOps.(sin(x) + cos(y))

(* Differentiate `expression` with respect to `x` *)
let diff_expression = SymOps.differentiate ~var:x expression

(* Display the differentiated expression *)
let () = print_endline (SymOps.to_string diff_expression)
```

## SymPy Statistics Module in SymCamel

SymCamel extends its symbolic mathematics capabilities with a dedicated statistics module, inspired by the functionality of the SymPy statistics module. This addition introduces a powerful random variable type into the OCaml language, enabling complex statistical computations and analyses.

### Features

- **Random Variables**: Users can declare random variables using prebuilt functions such as `Normal`, `Exponential`, `Coin`, `Die`, and more. This allows for the modeling of a wide range of real-world probabilistic scenarios.

- **Custom Random Variables**: For scenarios not covered by prebuilt functions, SymCamel offers the `FiniteRV` function and others, allowing users to define custom random variables with specified distributions.

- **Statistical Queries**: SymCamel supports various queries on random expressions, enabling computations like probability, expectation, variance, and more, providing a comprehensive toolset for statistical analysis.

### Example Usage

Below is an example showcasing how to declare random variables and perform statistical queries in SymCamel:

```ocaml
(* Import SymCamel Statistics Module *)
open SymCamel.Statistics

(* Declare a Normal random variable `X` with mean 0 and standard deviation 1 *)
let x = NormalRV("X", 0., 1.)

(* Declare a Coin random variable `C`, representing a fair coin toss *)
let c = CoinRV("C", 0.5)

(* Calculate the probability of `X` being greater than 1 *)
let prob_query = Probability(Greater(x, 1.))

(* Calculate the expectation of `X` *)
let expectation_x = Expectation(x)

(* Print the results *)
let () =
  print_endline ("P(X > 1) = " ^ string_of_float (eval_probability prob_query));
  print_endline ("E(X) = " ^ string_of_float (eval_expectation expectation_x))
```
