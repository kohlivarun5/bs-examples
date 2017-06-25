type ta = {
  name:string
}[@@bs.deriving{accessors}]

type t = 
  | A 
  | B of int 
  | C of ta
  [@@bs.deriving{dynval}]

let x = B 1 

let y = C {name="A"}
