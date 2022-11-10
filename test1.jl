data = String[]

open("shadow","r") do f
  for line in eachline(f)
    push!( data, line )
  end
end
println(data)
