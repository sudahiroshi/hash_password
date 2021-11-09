#import Pkg
#Pkg.add("MD5")
using MD5

while true
  print("->")
  readline() |> md5 |> bytes2hex |> println
end

