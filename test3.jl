using SHA

hash_func = [ "MD5", "", "", "", "SHA-256", "SHA-512" ]
ex = split( "test01:\$5\$salt\$7a37b85c8918eac19a9089c0fa5a2ab4dce3f90528dcdeec108b23ddf3607b99", ":")
uname = ex[1]
println( "(1) ユーザ名 = " * uname )
ex2 = split( ex[2], "\$" )
println( "(2) ハッシュ関数の識別子 = " * ex2[2] )
num = parse( Int, ex2[2] )
println( "(3) ハッシュ関数 = " * hash_func[ num ] )
println( "(4) salt=" * ex2[3] )
println( "(5) ハッシュ値=" * ex2[4] )

print("username : ")
name = readline()
print("password : ")
pass = readline()

println( "(6) 入力されたパスワード+salt = " * pass * ex2[3] )
hash = ( pass * ex2[3] ) |> sha2_256 |> bytes2hex
println( "(7) (6)から得られたハッシュ値 = " * hash )
println( "(8) = (5) 記録されているハッシュ値 = " * ex2[4] )

if( uname == name )
  println("ユーザ名が一致しました")
  if( hash == ex2[4] )
    println("ログインできました")
  else
    println("ログインできませんでした")
  end
else
  println("ユーザ名が一致しません")
end

