
divisores2 x n | x == n       = [n]
               | mod n x == 0 = x : divisores2 (x+1) n
               | mod n x /= 0 = divisores2 (x+1) n
               
divisores n = divisores2 (n - (n-1)) n

primos :: Int -> Bool
primos n | divisores n == [1,n] = True
         | divisores n /= [1,n] = False
         
         
-- Ex 2

zipar (a:b) (x:y) = (a,x) : zipar b y
zipar (b) (y) = []

termo1 n = [n, (n-1)..0]
         
termo2 n = [0..n]

soma n = zipar (termo1 n) (termo2 n)

