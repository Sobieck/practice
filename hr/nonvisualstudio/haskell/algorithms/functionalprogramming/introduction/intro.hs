-- Just a record of how I wrote the warm ups.


--Hello World

hello_world = putStrLn "Hello World"
main = do
   hello_world


--Hello Worlds
helloWorld = putStrLn "Hello World"

helloWorlds 1 = helloWorld
helloWorlds n = do helloWorld
                   (helloWorlds (n - 1))


-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
   n <- readLn :: IO Int
   helloWorlds n
