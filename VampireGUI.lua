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
        Callback = function(Value)
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
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
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
    OrionLib:MakeNotification({
        Name = "Creators",
        Content = "This was scripted and made by purest#0001 and iux#0001 Enjoy!",
        Image = "rbxassetid://7719250553",
        Time = Inf
    })
    end
