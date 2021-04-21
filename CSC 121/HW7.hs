--1
--newtype Nat = N Int
 
data Nat = Zero | Succ Nat

add' :: Nat -> Nat -> Nat
add' Zero n = n
add' (Succ m) n = Succ (add' m n)