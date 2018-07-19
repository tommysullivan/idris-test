module Main
import Data.Vect

isPalindrome : String -> Bool
isPalindrome str = str == reverse str

allLengths : Vect len String -> Vect len Nat
allLengths [] = []
allLengths (x :: xs) = length word :: allLengths words

my_length : List a -> Nat
my_length [] = 0
my_length (x :: xs) = 1 + my_length xs

my_reverse : List a -> List a
my_reverse [] = []
my_reverse (x :: xs) = join [(my_reverse xs), [x]]

my_map : (a -> b) -> List a -> List b
my_map f [] = []
my_map f (x :: xs) = join [[f x], my_map f xs]

my_vect_map : (a -> b) -> Vect n a -> Vect n b
my_vect_map f [] = []
my_vect_map f (x :: xs) = f x :: my_vect_map f xs

averageWordLength : String -> Double
averageWordLength str = 
    let numWords = wordCount str
        totalLength = sum (stringLengths (words str))
        in cast totalLength / cast numWords

    where
        wordCount : String -> Nat
        wordCount str = length (words str)

        stringLengths : List String -> List Nat
        stringLengths strings = map length strings

-- Transpose Matrix
createEmpties : Vect n (Vect 0 elem)
createEmpties {n} = replicate n []

transposeMat : Vect m (Vect n elem) -> Vect n (Vect m elem)
transposeMat [] = createEmpties
transposeMat (x :: xs) = let transXs = transposeMat xs in
                             zipWith (::) x transXs

addVectors : Num a => Vect n a -> Vect n a -> Vect n a
addVectors [] [] = []
addVectors (x :: xs) (y :: ys) = (x + y) :: addVectors xs ys

-- Add Matrices
addMatrix : Num a => Vect n (Vect m a) -> Vect n (Vect m a) -> Vect n (Vect m a)
addMatrix [] [] = []
addMatrix (x :: xs) (y :: ys) = (addVectors x y) :: addMatrix xs ys

main : IO ()
main = putStrLn (str (my_reverse [1..10]))

