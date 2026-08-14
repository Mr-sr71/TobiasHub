-- Destroy any previous menu instance to prevent overlapping bugs
if getgenv().TobiasHubExecuted then 
    pcall(function() Rayfield:Destroy() end)
end
getgenv().TobiasHubExecuted = true

-- Bypassing the link cutoff bug by gluing the pieces together
local linkPart1 = "https://sirius.menu"
local linkPart2 = "/rayfield"
local Rayfield = loadstring(game:HttpGet(linkPart1 .. linkPart2))()

local Window = Rayfield:CreateWindow({
   Name = "Tobias Hub",
   LoadingTitle = "Loading Menu...",
   LoadingSubtitle = "by Tobiastheeighth",
   ConfigurationSaving = {
      Enabled = false
   }
})


-- ==================== MISC TAB ====================
local Tab = Window:CreateTab("Misc", 4483362458)

-- Infinite Jump Button
Tab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
      local UserInputService = game:GetService("UserInputService")
      local LocalPlayer = game:GetService("Players").LocalPlayer

      UserInputService.JumpRequest:Connect(function()
          local Character = LocalPlayer.Character
          if Character then
              local Humanoid = Character:FindFirstChildOfClass("Humanoid")
              if Humanoid then
                  Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
              end
          end
      end)
      
      Rayfield:Notify({
         Title = "Infinite Jump",
         Content = "Infinite Jump is now active!",
         Duration = 3,
         Image = 4483362458,
      })
   end,
})

-- Fly GUI Button
Tab:CreateButton({
   Name = "Fly GUI",
   Callback = function()
      local success, err = pcall(function()
          -- FIXED: Pieced together the correct full raw github link layout
          local flyDomain = "https://raw.githubusercontent.com"
          local flyPath = "/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"
          loadstring(game:HttpGet(flyDomain .. flyPath))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "Fly GUI",
             Content = "Executing Fly GUI...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Fly GUI Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Fly GUI script failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})

-- Infinite Yield Button (Placed between Fly GUI and the FPS Counter)
Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      local success, err = pcall(function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "Infinite Yield",
             Content = "Executing Infinite Yield...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Infinite Yield Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Infinite Yield failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})

-- Creates a Text Box (Label) box directly under the buttons with NO icon (nil)
local FpsLabel = Tab:CreateLabel("FPS: Calculating...", nil, Color3.fromRGB(255, 255, 255), false)

-- Background loop to track frame updates and update the text label live
task.spawn(function()
    local RunService = game:GetService("RunService")
    while task.wait(0.5) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        FpsLabel:Set("FPS: " .. tostring(fps), nil, Color3.fromRGB(255, 255, 255), false)
    end
end)


-- ==================== NDS TAB ====================
local NdsTab = Window:CreateTab("NDS", 4483362458)

-- Orbit Parts Button
NdsTab:CreateButton({
   Name = "ORBIT PARTS",
   Callback = function()
      -- Safely runs your custom script inside a pcall wrapper
      local success, err = pcall(function()
          -- FIXED: Built the correct raw address with folder structures manually
          local orbitDomain = "https://raw.githubusercontent.com"
          local orbitPath = "/chesslovers69/Super-ring-parts-v6/refs/heads/main/Bylukaslol"
          loadstring(game:HttpGet(orbitDomain .. orbitPath))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "NDS Orbit",
             Content = "Executing Orbit script...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Orbit Script Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Orbit script failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})

-- NDS HUB Button
NdsTab:CreateButton({
   Name = "NDS HUB",
   Callback = function()
      local success, err = pcall(function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/KaterHub-Inc/NaturalDisasterSurvival/refs/heads/main/main.lua"))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "NDS HUB",
             Content = "Executing NDS HUB...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("NDS HUB Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "NDS HUB failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})


-- ==================== BROOKHAVEN TAB ====================
local BrookhavenTab = Window:CreateTab("Brookhaven", 4483362458)

-- dark hub Loadstring Button
BrookhavenTab:CreateButton({
   Name = "dark hub",
   Callback = function()
      local success, err = pcall(function()
          -- Preloaded with an active, functional version of the Dark Hub script
          loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Dark-Hub-214104"))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "dark hub",
             Content = "Executing dark hub...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("dark hub Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "dark hub failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})


-- ==================== RDITE TAB ====================
local RditeTab = Window:CreateTab("Rdite", 4483362458)

RditeTab:CreateButton({
   Name = "Rdite Gui",
   Callback = function()
      local success, err = pcall(function()
          loadstring(game:HttpGet("https://rawscripts.net/raw/Cart-Ride-Into-Rdite!-Game-Script-8281"))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "Rdite Gui",
             Content = "Executing Rdite Gui...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Rdite Gui Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Rdite Gui failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})


-- ==================== WORK AT A PIZZA PLACE ====================
local PizzaPlaceTab = Window:CreateTab("Work At a Pizza Place", 4483362458)

-- PIZZA PLACE GUI
PizzaPlaceTab:CreateButton({
   Name = "Pizza Place GUI",
   Callback = function()
      local success, err = pcall(function()
          loadstring(game:HttpGet(('https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Work%20at%20a%20pizza%20place'),true))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "Pizza Place GUI",
             Content = "Executing script...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Script Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Script failed to load. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})


-- ==================== UNIVERSAL TAB ====================
local UniversalTab = Window:CreateTab("Universal", 4483362458)

-- egor Loadstring Button
UniversalTab:CreateButton({
   Name = "Roblox Egor",
   Callback = function()
      local success, err = pcall(function()
          loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Egor-script-can-customize-48846"))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "Roblox Egor",
             Content = "Executing Egor universal script...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Egor Script Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Egor script failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})

-- Anim Hub Button
UniversalTab:CreateButton({
   Name = "Anim Hub",
   Callback = function()
      local success, err = pcall(function()
          loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FREE-BUNDLES-l-FE-241758"))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "Anim Hub",
             Content = "Executing Anim Hub...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Anim Hub Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Anim Hub failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})

-- Homelander Script Button
UniversalTab:CreateButton({
   Name = "Homelander v1",
   Callback = function()
      local success, err = pcall(function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/giobolqv1/homelander-by-GioBolqv1-/refs/heads/main/homelander.lua"))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "Homelander by GioBolqv1",
             Content = "Executing script...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Script Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Script failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})

-- A-Train Button
UniversalTab:CreateButton({
   Name = "A-Train v1",
   Callback = function()
      local success, err = pcall(function()
          -- FIXED: Added the missing "(" here
          loadstring(game:HttpGet("https://raw.githubusercontent.com/giobolqv1/A-Train-by-GioBolqv1-/refs/heads/main/train.lua"))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "A-Train by GioBolqv1",
             Content = "Executing script...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Script Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Script failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})

-- Invincible Button
UniversalTab:CreateButton({
   Name = "Invincible v1",
   Callback = function()
      local success, err = pcall(function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/giobolqv1/invincible-characters-animations-by-GioBolqv1-/refs/heads/main/universal.lua"))()
      end)
      
      if success then
          Rayfield:Notify({
             Title = "Invincible by GioBolqv1",
             Content = "Executing script...",
             Duration = 3,
             Image = 4483362458,
          })
      else
          warn("Script Failed to load: " .. tostring(err))
          Rayfield:Notify({
             Title = "Error",
             Content = "Script failed. Check F9 console.",
             Duration = 5,
             Image = 4483362458,
          })
      end
   end,
})

})
