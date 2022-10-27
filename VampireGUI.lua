if Game.PlaceId == 2788229376 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Vampire GUI", HidePremium = true, SaveConfig = true, ConfigFolder = "VampConfig"})
    local Tab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://7719250553",
        PremiumOnly = false
    })
    Tab:AddButton({
        Name = "Hide user",
        Callback = function()
                  if game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask") then
            game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask"):FindFirstChildWhichIsA("Model"):Destroy()
            game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask"):FindFirstChild('Handle'):Destroy()
                  end
                 end
    })
    local Tab = Window:MakeTab({
    Name = "Combat",
    Icon = "rbxassetid://7719250553",
    PremiumOnly = false
    })
    Tab:AddToggle({
        Name = "Fist reach!",
        Default = false,
        Callback = function(e)
            if e == true then
                game:GetService('RunService'):BindToRenderStep("Reach", 0 , function()
                    local success, err = pcall(function()
                        if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                            for i,v in pairs(game:GetService('Players'):GetChildren()) do
                                if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                            firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                        else
                                            firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end)
            elseif e == false then
                game:GetService('RunService'):UnbindFromRenderStep("Reach")
            end
        end    
    })
    Tab:AddToggle({
        Name = "Anti-Slow",
        Default = false,
        Callback = function(Value)
    if Value == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Slow", 0 , function()
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
        end)
    elseif Value == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Slow")
    end
    end
    })
    Tab:AddButton({
        Name = "Unjail",
        Callback = function()
            if game:GetService("Players").LocalPlayer.DataFolder.Currency.Value >= 125 then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.94, 20.327, -242.38)
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.94, 20.327, -242.38)
                wait()
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
                wait(.1)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
                repeat
                    wait()
                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Key]")
                local Hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                if Hum.Health > 0 then
                    key1 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Key]")
                    if key1 then
                        Hum:EquipTool(key1)
                        for i, v in pairs(game:GetService"Players".LocalPlayer.Character:GetChildren()) do
                            if v:isA("Tool") then
                                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(key1)
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.668, 23.631, -285.169)
                                v:Activate()
                            end
                        end
                    end
                end
            end
          end    
    })
    
    local Tab = Window:MakeTab({
    Name = "Fun",
    Icon = "rbxassetid://7719250553",
    PremiumOnly = false
    })
    Tab:AddButton({
        Name = "Invisible mask",
        Callback = function()
            local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local k = game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"]
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
                wait(.2)
                fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
                toolf = game.Players.LocalPlayer.Backpack:WaitForChild("Mask")
                toolf.Parent = game.Players.LocalPlayer.Character
                wait()
                game.Players.LocalPlayer.Character:WaitForChild("Mask")
                game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                game.Players.LocalPlayer.Character:WaitForChild("In-gameMask")
                game.Players.LocalPlayer.Character["In-gameMask"].Handle:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
            end
          end
    })
    Tab:AddButton({
        Name = "Chat logs",
        Callback = function()
            local LP = game.Players.LocalPlayer
            LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
            LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
          end    
    })
    Tab:AddButton({
        Name = "Animations Pack",
        Callback = function()
            local Folder = Instance.new('Folder', game:GetService("Workspace"))
            local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
            local ScrollingFrame = AnimationPack.ScrollingFrame
            local CloseButton = AnimationPack.CloseButton
        
            AnimationPack.Visible = true
        
            local LeanAnimation = Instance.new("Animation", Folder)
            LeanAnimation.Name = "LeanAnimation"
            LeanAnimation.AnimationId = "rbxassetid://3152375249"
            local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
        
            local LayAnimation = Instance.new("Animation", Folder)
            LayAnimation.Name = "LayAnimation"
            LayAnimation.AnimationId = "rbxassetid://3152378852"
            local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
        
            local Dance1Animation = Instance.new("Animation", Folder)
            Dance1Animation.Name = "Dance1Animation"
            Dance1Animation.AnimationId = "rbxassetid://3189773368"
            local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
        
            local Dance2Animation = Instance.new("Animation", Folder)
            Dance2Animation.Name = "Dance2Animation"
            Dance2Animation.AnimationId = "rbxassetid://3189776546"
            local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
        
            local GreetAnimation = Instance.new("Animation", Folder)
            GreetAnimation.Name = "GreetAnimation"
            GreetAnimation.AnimationId = "rbxassetid://3189777795"
            local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
        
            local PrayingAnimation = Instance.new("Animation", Folder)
            PrayingAnimation.Name = "PrayingAnimation"
            PrayingAnimation.AnimationId = "rbxassetid://3487719500"
            local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
        
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Lean" then
                        v.Name = "LeanButton"
                    end
                end
            end
        
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Lay" then
                        v.Name = "LayButton"
                    end
                end
            end
        
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Dance1" then
                        v.Name = "Dance1Button"
                    end
                end
            end
        
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Dance2" then
                        v.Name = "Dance2Button"
                    end
                end
            end
        
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Greet" then
                        v.Name = "GreetButton"
                    end
                end
            end
        
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Praying" then
                        v.Name = "PrayingButton"
                    end
                end
            end
        
            function Stop()
                Lay:Stop()
                Lean:Stop()
                Dance1:Stop()
                Dance2:Stop()
                Greet:Stop()
                Praying:Stop()
            end
        
            local LeanTextButton = ScrollingFrame.LeanButton
            local LayTextButton = ScrollingFrame.LayButton
            local Dance1TextButton = ScrollingFrame.Dance1Button
            local Dance2TextButton = ScrollingFrame.Dance2Button
            local GreetTextButton = ScrollingFrame.GreetButton
            local PrayingTextButton = ScrollingFrame.PrayingButton
        
            AnimationPack.MouseButton1Click:Connect(function()
                if ScrollingFrame.Visible == false then
                    ScrollingFrame.Visible = true
                    CloseButton.Visible = true
                end
            end)
            CloseButton.MouseButton1Click:Connect(function()
                if ScrollingFrame.Visible == true then
                    ScrollingFrame.Visible = false
                    CloseButton.Visible = false
                end
            end)
            LeanTextButton.MouseButton1Click:Connect(function()
                Stop()
                Lean:Play()
            end)
            LayTextButton.MouseButton1Click:Connect(function()
                Stop()
                Lay:Play()
            end)
            Dance1TextButton.MouseButton1Click:Connect(function()
                Stop()
                Dance1:Play()
            end)
            Dance2TextButton.MouseButton1Click:Connect(function()
                Stop()
                Dance2:Play()
            end)
            GreetTextButton.MouseButton1Click:Connect(function()
                Stop()
                Greet:Play()
            end)
            PrayingTextButton.MouseButton1Click:Connect(function()
                Stop()
                Praying:Play()
            end)
        
            game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
                Stop()
            end)
            game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
                Stop()
                repeat
                    wait()
                until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
                wait(1)
                local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
                local ScrollingFrame = AnimationPack.ScrollingFrame
                local CloseButton = AnimationPack.CloseButton
        
                AnimationPack.Visible = true
        
                local LeanAnimation = Instance.new("Animation", Folder)
                LeanAnimation.Name = "LeanAnimation"
                LeanAnimation.AnimationId = "rbxassetid://3152375249"
                local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
        
                local LayAnimation = Instance.new("Animation", Folder)
                LayAnimation.Name = "LayAnimation"
                LayAnimation.AnimationId = "rbxassetid://3152378852"
                local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
        
                local Dance1Animation = Instance.new("Animation", Folder)
                Dance1Animation.Name = "Dance1Animation"
                Dance1Animation.AnimationId = "rbxassetid://3189773368"
                local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
        
                local Dance2Animation = Instance.new("Animation", Folder)
                Dance2Animation.Name = "Dance2Animation"
                Dance2Animation.AnimationId = "rbxassetid://3189776546"
                local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
        
                local GreetAnimation = Instance.new("Animation", Folder)
                GreetAnimation.Name = "GreetAnimation"
                GreetAnimation.AnimationId = "rbxassetid://3189777795"
                local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
        
                local PrayingAnimation = Instance.new("Animation", Folder)
                PrayingAnimation.Name = "PrayingAnimation"
                PrayingAnimation.AnimationId = "rbxassetid://3487719500"
                local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
        
                for i,v in pairs(ScrollingFrame:GetChildren()) do
                    if v.Name == "TextButton" then
                        if v.Text == "Lean" then
                            v.Name = "LeanButton"
                        end
                    end
                end
        
                for i,v in pairs(ScrollingFrame:GetChildren()) do
                    if v.Name == "TextButton" then
                        if v.Text == "Lay" then
                            v.Name = "LayButton"
                        end
                    end
                end
        
                for i,v in pairs(ScrollingFrame:GetChildren()) do
                    if v.Name == "TextButton" then
                        if v.Text == "Dance1" then
                            v.Name = "Dance1Button"
                        end
                    end
                end
        
                for i,v in pairs(ScrollingFrame:GetChildren()) do
                    if v.Name == "TextButton" then
                        if v.Text == "Dance2" then
                            v.Name = "Dance2Button"
                        end
                    end
                end
        
                for i,v in pairs(ScrollingFrame:GetChildren()) do
                    if v.Name == "TextButton" then
                        if v.Text == "Greet" then
                            v.Name = "GreetButton"
                        end
                    end
                end
        
                for i,v in pairs(ScrollingFrame:GetChildren()) do
                    if v.Name == "TextButton" then
                        if v.Text == "Praying" then
                            v.Name = "PrayingButton"
                        end
                    end
                end
        
                function Stop()
                    Lay:Stop()
                    Lean:Stop()
                    Dance1:Stop()
                    Dance2:Stop()
                    Greet:Stop()
                    Praying:Stop()
                end
        
                local LeanTextButton = ScrollingFrame.LeanButton
                local LayTextButton = ScrollingFrame.LayButton
                local Dance1TextButton = ScrollingFrame.Dance1Button
                local Dance2TextButton = ScrollingFrame.Dance2Button
                local GreetTextButton = ScrollingFrame.GreetButton
                local PrayingTextButton = ScrollingFrame.PrayingButton
        
                AnimationPack.MouseButton1Click:Connect(function()
                    if ScrollingFrame.Visible == false then
                        ScrollingFrame.Visible = true
                        CloseButton.Visible = true
                    end
                end)
                CloseButton.MouseButton1Click:Connect(function()
                    if ScrollingFrame.Visible == true then
                        ScrollingFrame.Visible = false
                        CloseButton.Visible = false
                    end
                end)
                LeanTextButton.MouseButton1Click:Connect(function()
                    Stop()
                    Lean:Play()
                end)
                LayTextButton.MouseButton1Click:Connect(function()
                    Stop()
                    Lay:Play()
                end)
                Dance1TextButton.MouseButton1Click:Connect(function()
                    Stop()
                    Dance1:Play()
                end)
                Dance2TextButton.MouseButton1Click:Connect(function()
                    Stop()
                    Dance2:Play()
                end)
                GreetTextButton.MouseButton1Click:Connect(function()
                    Stop()
                    Greet:Play()
                end)
                PrayingTextButton.MouseButton1Click:Connect(function()
                    Stop()
                    Praying:Play()
                end)
            end)
          end    
    })
    
    local Tab = Window:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://7719250553",
    PremiumOnly = false
    })
    local Tab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://7719250553",
    PremiumOnly = false
    })
    Tab:AddLabel("Made by iux#0001 and purest#0001")
    OrionLib:MakeNotification({
        Name = "Creators",
        Content = "This was scripted and made by purest#0001 and iux#0001 Enjoy!",
        Image = "rbxassetid://7490337597",
        Time = 6
    })
    end
