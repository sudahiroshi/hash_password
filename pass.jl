import Pkg
Pkg.add("MD5")

using MD5
password = Dict{String, String}()

open("shadow", "r") do f
  for line in eachline(f)
    ex = split( line, ":" )
println(ex[1])
println(ex[2])
    password[ex[1]] = ex[2]
  end
end
ks = keys( password )
print("username : ")
name = readline()
print("password : ")
pass = readline()

if( name in ks )
  ex2 = split( password[name], "\$" )
  hash = ( pass * ex2[3] ) |> md5 |> bytes2hex
  if( hash == ex2[4] )
    println("ログインできました")
  else
    println("IDまたはパスワードが違います")
  end
else
  println("IDまたはパスワードが違います")
end
