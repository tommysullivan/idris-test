module Tommy

data Boolean = True | False

BB : Type
BB = Boolean -> Boolean

not : Boolean -> Boolean
not True = False
not False = True

BBB : Type
BBB = Boolean -> BB

or : BBB
or False False = False
or _ _ = True

-- mike to check out laziness and how it might relate to some of these definitions

and:BBB
and True True = True
and _ _ = False

xor:BBB
xor True False = True
xor False True = True
xor _ _ = False

-- natural numbers

data Natural = Zero | Successor Natural

naturalFromInteger : Integer -> Natural
naturalFromInteger 0 = Zero
naturalFromInteger n = Successor (naturalFromInteger (n - 1))

integerFromNatural : Natural -> Integer
integerFromNatural Zero = 0
integerFromNatural (Successor n) = 1 + integerFromNatural n

Show Natural where
    show n = show (integerFromNatural n)
