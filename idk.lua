local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 Example Script Hub | Game kid",
   LoadingTitle = "Blox kid",
   LoadingSubtitle = "by Load999",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Example Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | Best Hub",
      Subtitle = "Key System",
      Note = "Key In Discord Server",
      FileName = "Load999", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You executed the script",
   Content = "Very cool gui",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "draco aura",
   Callback = function()
      getgenv().settings = {
         -- vòng tròn aim bot
         Aimbot_FOV_Radius = 150,
         -- màu vòng tròn ngoài
         Aimbot_FOV_Color = Color3.fromRGB(255, 255, 0),
         -- màu tâm
         FOV_CrossColor = Color3.fromRGB(255, 0, 0),
         -- độ dày của tâm
         FOV_CrossSize = 15,
         -- tầm đánh tối đa
         MaxDistance = 900,
         -- tốc độ đánh chỉnh 0 cũng được
         -- địch die rất nhanh cả mana của you
         AuraLoopDelay = 0,
         -- chế độ tấn công
         -- 1 Player&Npc
         -- 2 Chỉ Player
         -- 3 chỉ Npc
         Mode = 1
     }
     
     loadstring(game:HttpGet('https://raw.githubusercontent.com/GauCandy/CandyUi/refs/heads/main/draco_aura.lua', true))()
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local TPTab = Window:CreateTab("🏝 Teleports", nil) -- Title, Image
local Button = TPTab:CreateButton({
   Name = "Button Example",
   Callback = function()
      local Players = game:GetService("Players")
      local RunService = game:GetService("RunService")
      local LocalPlayer = Players.LocalPlayer
      local Mouse = LocalPlayer:GetMouse()
      
      -- Tạo Tool
      local tool = Instance.new("Tool")
      tool.Name = "GâÚ 🐻"
      tool.RequiresHandle = true
      
      -- Tạo Handle cho Tool
      local handle = Instance.new("Part")
      handle.Name = "Handle"
      handle.Size = Vector3.new(1, 1, 1)
      handle.Color = Color3.new(0, 1, 0)
      handle.Parent = tool
      
      -- Tạo GUI
      local screenGui = Instance.new("ScreenGui")
      screenGui.Name = "Tween"
      screenGui.Enabled = false -- Chỉ hiển thị khi Tool được cầm
      
      -- Khung chính
      local mainFrame = Instance.new("ImageLabel")
      mainFrame.Size = UDim2.new(0, 250, 0, 300)
      mainFrame.Position = UDim2.new(0.5, -125, 0.5, -200)
      mainFrame.BackgroundTransparency = 1
      mainFrame.Image = "rbxassetid://75213893070276"
      mainFrame.BorderSizePixel = 0
      mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
      mainFrame.Active = true
      mainFrame.ClipsDescendants = true
      mainFrame.Parent = screenGui
      
      -- Bo góc toàn bộ mainFrame
      local uiCorner = Instance.new("UICorner")
      uiCorner.CornerRadius = UDim.new(0, 10)
      uiCorner.Parent = mainFrame
      
      -- Khung cuộn nội dung
      local scrollFrame = Instance.new("ScrollingFrame")
      scrollFrame.Size = UDim2.new(1, 0, 1, -50)
      scrollFrame.Position = UDim2.new(0, 0, 0, 50)
      scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 500)
      scrollFrame.ScrollBarThickness = 6
      scrollFrame.BackgroundTransparency = 1
      scrollFrame.BorderSizePixel = 0
      scrollFrame.Parent = mainFrame
      
      -- Thanh tiêu đề
      local titleLabel = Instance.new("TextLabel")
      titleLabel.Size = UDim2.new(1, 0, 0, 50)
      titleLabel.Position = UDim2.new(0, 0, 0, 0)
      titleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
      titleLabel.Text = "🐻 Candy Tool V1.0"
      titleLabel.TextColor3 = Color3.new(1, 1, 1)
      titleLabel.TextSize = 20
      titleLabel.Font = Enum.Font.SourceSansBold
      titleLabel.BorderSizePixel = 0
      titleLabel.Parent = mainFrame
      
      -- Bo góc cho titleLabel
      local titleUICorner = Instance.new("UICorner")
      titleUICorner.CornerRadius = UDim.new(0, 10)
      titleUICorner.Parent = titleLabel
      
      -- Khả năng kéo GUI
      local dragging = false
      local dragStart
      local startPos
      
      titleLabel.InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.MouseButton1 then
              dragging = true
              dragStart = input.Position
              startPos = mainFrame.Position
              input.Changed:Connect(function()
                  if input.UserInputState == Enum.UserInputState.End then
                      dragging = false
                  end
              end)
          end
      end)
      
      titleLabel.InputChanged:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
              local delta = input.Position - dragStart
              mainFrame.Position = UDim2.new(
                  startPos.X.Scale,
                  startPos.X.Offset + delta.X,
                  startPos.Y.Scale,
                  startPos.Y.Offset + delta.Y
              )
          end
      end)
      
      -- Tạo danh sách chọn người chơi
      local selectedUser = nil
      local dropdownOpen = false
      
      local userSelection = Instance.new("TextLabel")
      userSelection.Size = UDim2.new(0, 200, 0, 30)
      userSelection.Position = UDim2.new(0.5, -100, 0, 10)
      userSelection.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
      userSelection.TextColor3 = Color3.new(1, 1, 1)
      userSelection.Text = "Chọn người chơi"
      userSelection.Font = Enum.Font.SourceSansBold
      userSelection.TextSize = 14
      userSelection.BorderSizePixel = 0
      userSelection.Parent = scrollFrame
      
      local userDropdown = Instance.new("TextButton")
      userDropdown.Size = UDim2.new(0, 200, 0, 30)
      userDropdown.Position = UDim2.new(0.5, -100, 0, 60)
      userDropdown.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
      userDropdown.TextColor3 = Color3.new(1, 1, 1)
      userDropdown.Text = "Danh sách người chơi"
      userDropdown.Font = Enum.Font.SourceSansBold
      userDropdown.TextSize = 14
      userDropdown.BorderSizePixel = 0
      userDropdown.Parent = scrollFrame
      
      local tempPlayerButtons = {}
      
      userDropdown.MouseButton1Click:Connect(function()
          if dropdownOpen then
              for _, button in pairs(tempPlayerButtons) do
                  button:Destroy()
              end
              tempPlayerButtons = {}
              dropdownOpen = false
              return
          end
          dropdownOpen = true
          local yOffset = 0
          for _, player in pairs(Players:GetPlayers()) do
              if player ~= LocalPlayer then
                  local playerButton = Instance.new("TextButton")
                  playerButton.Size = UDim2.new(1, 0, 0, 30)
                  playerButton.Position = UDim2.new(0, 0, 0, yOffset)
                  playerButton.Text = player.Name
                  playerButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
                  playerButton.TextColor3 = Color3.new(1, 1, 1)
                  playerButton.Font = Enum.Font.SourceSansBold
                  playerButton.TextSize = 14
                  playerButton.BorderSizePixel = 0
                  playerButton.Parent = scrollFrame
      
                  table.insert(tempPlayerButtons, playerButton)
      
                  playerButton.MouseButton1Click:Connect(function()
                      selectedUser = player
                      userSelection.Text = "Đã chọn: " .. player.Name
                      for _, button in pairs(tempPlayerButtons) do
                          button:Destroy()
                      end
                      tempPlayerButtons = {}
                      dropdownOpen = false
                  end)
      
                  yOffset = yOffset + 30
              end
          end
      end)
      
      -- Biến kiểm soát trạng thái theo dõi
      local isFollowing = false
      local followConnection = nil
      
      -- Nút "TP tới và giữ vị trí trên đầu người chơi"
      local tpToPlayerButton = Instance.new("TextButton")
      tpToPlayerButton.Size = UDim2.new(0, 200, 0, 30)
      tpToPlayerButton.Position = UDim2.new(0.5, -100, 0, 110)
      tpToPlayerButton.Text = "TP và giữ trên đầu"
      tpToPlayerButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
      tpToPlayerButton.TextColor3 = Color3.new(1, 1, 1)
      tpToPlayerButton.Font = Enum.Font.SourceSansBold
      tpToPlayerButton.TextSize = 14
      tpToPlayerButton.BorderSizePixel = 0
      tpToPlayerButton.Parent = scrollFrame
      
      tpToPlayerButton.MouseButton1Click:Connect(function()
          if not isFollowing then
              if selectedUser and selectedUser.Character and selectedUser.Character:FindFirstChild("HumanoidRootPart") then
                  local targetRootPart = selectedUser.Character:FindFirstChild("HumanoidRootPart")
                  local localCharacter = LocalPlayer.Character
                  if localCharacter and localCharacter:FindFirstChild("HumanoidRootPart") then
                      local localRootPart = localCharacter.HumanoidRootPart
                      isFollowing = true
                      tpToPlayerButton.Text = "Dừng giữ vị trí"
                      
                      -- Teleport lần đầu
                      localRootPart.CFrame = targetRootPart.CFrame + Vector3.new(0, 10, 0)
      
                      -- Bắt đầu theo dõi
                      followConnection = RunService.Heartbeat:Connect(function()
                          if not isFollowing or not selectedUser or not selectedUser.Character or not selectedUser.Character:FindFirstChild("HumanoidRootPart") then
                              -- Nếu điều kiện không còn, dừng theo dõi
                              isFollowing = false
                              tpToPlayerButton.Text = "TP và giữ trên đầu"
                              if followConnection then
                                  followConnection:Disconnect()
                              end
                              return
                          end
      
                          -- Giữ vị trí 10 studs trên đầu người chơi mục tiêu
                          localRootPart.CFrame = selectedUser.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 0)
                      end)
                  else
                      print("Nhân vật của bạn không hợp lệ!")
                  end
              else
                  print("Người chơi không hợp lệ!")
              end
          else
              -- Dừng giữ vị trí
              isFollowing = false
              tpToPlayerButton.Text = "TP và giữ trên đầu"
              if followConnection then
                  followConnection:Disconnect()
                  followConnection = nil
              end
          end
      end)
      
      -- Sự kiện Tool
      tool.Equipped:Connect(function()
          screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
          screenGui.Enabled = true
      end)
      
      tool.Unequipped:Connect(function()
          screenGui.Enabled = false
      end)
      
      -- Đưa Tool vào Backpack
      tool.Parent = LocalPlayer.Backpack
   end,
})