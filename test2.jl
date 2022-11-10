password = Dict{String,String}()

password["foo"] = "bar"
password["key01"] = "Julia"
password["key02"] = "Ruby"
password["key03"] = "JavaScript"
println( "dict -> " )
println( password )

password["user01"] = "\$5\$salt\$7a37b85c8918eac19a9089c0fa5a2ab4dce3f90528dcdeec108b23ddf3607b99"
println( "dict -> " )
println( password )

