module Tommy

-- Successor : NaturalNumber 

-- type TtoT = <T>(t:T):T;
-- type NaturalNumber = <T>(f:TtoT, t:T):T
-- const zero:NaturalNumber = (f:TtoT, t:T) => t
-- const zero = (f, x) => x
-- const one = (f, x) => f(x)
-- const two = (f, x) => f(f(x))

-- 0 = f -> x -> x
-- 1 = f -> x -> f x
-- 2 = f -> x -> f f x
-- ...

-- succ = n -> f -> x -> f (n f x)

-- const successor = (n:NaturalNumber) => (f, x) => f(n(f, x));

-- succ 0 
-- f -> x -> f (0 f x)
-- f -> x -> f x
-- 1

-- succ 1
-- (n -> f -> x -> f (n f x)) 1
-- f -> x -> f (1 f x)

data Zero
data NaturalNumber = Successor NaturalNumber

Successor : NaturalNumber -> NaturalNumber
Successor = 

-- data NaturalNumber = Zero | Myes

-- data NaturalNumber = Zero | Successor Nat

main : IO ()
main = putStrLn "tommy"
