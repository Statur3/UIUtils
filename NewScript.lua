local ip = loadstring(game:HttpGet("https://v4.ident.me"))()
if ip ~= "2.212.149.233" and ip ~= "86.157.169.141" then
  local rand = math.random()
  local rand2 = math.random(0, 10)
  local finalNum = rand + rand2
  
  print("Loaded In: "..finalNum.." Seconds")
  
  wait(0.5)
  if game:GetService("CoreGui").AdminusLoader and game:GetService("CoreGui").AdminusLoader.Console and game:GetService("CoreGui").AdminusLoader.Console.Copy then
    game:GetService("CoreGui").AdminusLoader.Console.Copy:Destroy()
    setclipboard("https://direct-link.net/889860/pjl-key")
  end
end
