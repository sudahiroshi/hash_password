password = Dict{String,String}()

password["foo"] = "bar"
password["1,2限"] = "7107教室 "
password["3,4限"] = "7108教室 "
println( password )

password["test01"] = "\$1\$salt\$b305cadbb3bce54f3aa59c64fec00dea"
println( password )

