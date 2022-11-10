using SHA

while true
  print("->")
  word = readline()
  if( word == "end" ) break end
  word |> sha2_256 |> bytes2hex |> println
end

