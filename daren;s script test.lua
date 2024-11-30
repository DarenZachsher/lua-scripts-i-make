-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local MarketplaceService = game:GetService("MarketplaceService")

-- Create ScreenGui for FPS Counter
local function createFPSGui()
    local player = Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")

    -- ScreenGui for FPS Counter
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "FPSCounterGui"
    screenGui.Parent = playerGui

    -- Background Frame for FPS Label
    local fpsBackground = Instance.new("Frame")
    fpsBackground.Size = UDim2.new(0, 200, 0, 50)
    fpsBackground.Position = UDim2.new(0, 10, 0, 10)
    fpsBackground.BackgroundColor3 = Color3.fromRGB(64, 64, 64)  -- Initial dark gray background
    fpsBackground.BackgroundTransparency = 0.25  -- Set transparency to 0.25
    fpsBackground.Parent = screenGui

    -- FPS Label
    local fpsLabel = Instance.new("TextLabel")
    fpsLabel.Size = UDim2.new(1, 0, 1, 0)  -- Fill the background frame
    fpsLabel.BackgroundTransparency = 1  -- Make label background transparent
    fpsLabel.Font = Enum.Font.Oswald
    fpsLabel.TextColor3 = Color3.new(1, 1, 1)
    fpsLabel.TextScaled = true
    fpsLabel.Text = "FPS: 0"
    fpsLabel.Parent = fpsBackground

    -- Instruction Label Background
    local closeBackground = Instance.new("Frame")
    closeBackground.Size = UDim2.new(0, 200, 0, 20)
    closeBackground.Position = UDim2.new(0, 10, 0, 65)
    closeBackground.BackgroundColor3 = Color3.fromRGB(64, 64, 64)  -- Dark gray background
    closeBackground.BackgroundTransparency = 0.25  -- Set transparency to 0.25
    closeBackground.Parent = screenGui

    -- Instruction Label for Closing Script
    local closeInstructionLabel = Instance.new("TextLabel")
    closeInstructionLabel.Size = UDim2.new(1, 0, 1, 0)  -- Fill the background frame
    closeInstructionLabel.BackgroundTransparency = 1  -- Make label background transparent
    closeInstructionLabel.Font = Enum.Font.Oswald
    closeInstructionLabel.TextColor3 = Color3.new(0.2, 0.2, 0.2)
    closeInstructionLabel.TextScaled = true
    closeInstructionLabel.Text = "Press 0 to close this script"
    closeInstructionLabel.Parent = closeBackground

    -- FPS Calculation Variables
    local frameCount = 0
    local lastUpdateTime = tick()

    -- Update FPS Function
    local function updateFPS()
        local currentTime = tick()
        local elapsed = currentTime - lastUpdateTime

        if elapsed >= 0.1 then
            local fps = frameCount / elapsed
            fpsLabel.Text = string.format("FPS: %.2f", fps)

            -- Change background color based on FPS
            if fps > 300 then
                fpsBackground.BackgroundColor3 = Color3.fromRGB(96, 0, 96)  -- Darker purple for FPS > 300
            elseif fps >= 120 then
                fpsBackground.BackgroundColor3 = Color3.fromRGB(128, 0, 128)  -- Purple for FPS > 120
            elseif fps >= 40 then
                fpsBackground.BackgroundColor3 = Color3.fromRGB(64, 64, 128)  -- Dark blue for medium FPS
            elseif fps >= 25 then
                fpsBackground.BackgroundColor3 = Color3.fromRGB(128, 64, 0)  -- Dark orange for low FPS
            else
                fpsBackground.BackgroundColor3 = Color3.fromRGB(128, 0, 0)  -- Dark red for very low FPS
            end

            frameCount = 0
            lastUpdateTime = currentTime
        end
    end

    -- RenderStepped Connection for Frame Counting
    RunService.RenderStepped:Connect(function()
        frameCount = frameCount + 1
        updateFPS()
    end)

    -- Key Press Functionality for Closing Script (0)
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if input.KeyCode == Enum.KeyCode.Zero and not gameProcessed then
            screenGui:Destroy()
        end
    end)
end

-- Executor Detection Script
local function detectExecutors()
    local executors = {}
    local player = Players.LocalPlayer
    local playerUsername = player and player.Name or "Unknown"

    if syn then
        table.insert(executors, "Synapse X")
    elseif synapsez then
        table.insert(executors, "Synapse Z")
    elseif is_sirhurt_closure then
        table.insert(executors, "Sirhurt")
    elseif identifyexecutor then
        local success, name = pcall(identifyexecutor)
        if success then
            table.insert(executors, name)
        end
    elseif getexecutorname then
        table.insert(executors, getexecutorname())
    elseif jjsploit then
        table.insert(executors, "JJSploit")
    end

    -- Script Execution Messages
    print("📜 - executed script")
    task.wait(2)
    print("🔎 - finding script runner.")
    task.wait(2)
    print("✅ - found script runner.")
    print("📜 - script runner user: " .. playerUsername)

    -- Finding Game Name
    print("🔎 - finding game name...")
    task.wait(2)

    local success, gameInfo = pcall(MarketplaceService.GetProductInfo, MarketplaceService, game.PlaceId)
    if success and gameInfo and gameInfo.Name then
        print("🎮 - found game name: " .. gameInfo.Name)
    else
        print("💻 - could not retrieve game name.")
    end

    -- Conditional messages for detected executors
    task.wait(3)
    if #executors > 0 then
        for _, executor in ipairs(executors) do
            print("🔳 - " .. executor .. " working: true")
        end
    else
        print("🔲 - No recognized executors detected.")
    end

    if #executors > 0 then
        print("📌 - attached executors: " .. table.concat(executors, ", "))
    else
        print("📍 - no attached executors.")
    end

    -- dUNC test
    print("🧪 - loading dUNC test (Daren's UNC)")
    task.wait(1)
    loadstring(game:HttpGet("https://gist.githubusercontent.com/DarenZachsher/a4b798472cf4675e6dcc268e0f8f3735/raw/7f48719063daca205d707745b1848e733cf21f07/gistfile1.txt"))()
end

-- Main execution
local function main()
    createFPSGui()
    detectExecutors()
end

main()
