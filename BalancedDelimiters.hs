module Main (isBalanced, main)
  where

acceptNonBrackets = False

matches x y = (x == '(' && y == ')') ||
              (x == '{' && y == '}') ||
              (x == '[' && y == ']')

isOpen  x = x == '(' || x == '{' || x == '['
isClose x = x == ')' || x == '}' || x == ']'
isDelim x = isOpen x || isClose x

isBalanced' [] []         = True
isBalanced' [] _          = False
isBalanced' (x:xs) []     | isOpen x = isBalanced' xs [x]
                          | isClose x = False
                          | acceptNonBrackets = isBalanced' xs []
                          | otherwise = False
isBalanced' (x:xs) (y:ys) | isOpen x = isBalanced' xs (x:y:ys)
                          | isClose x = matches y x && isBalanced' xs ys
                          | acceptNonBrackets = isBalanced' xs (y:ys)
                          | otherwise = False

isBalanced string = isBalanced' string []

main = do { s <- getLine ; print $ isBalanced s }

