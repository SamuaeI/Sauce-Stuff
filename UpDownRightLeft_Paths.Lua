--@Sammmuael
--7/19/2020

-- NOTICE, Inefficient due to the lack of collision detection

local function CreatePath(Amount, Direction)
 local PreviousPosition

 for i = 1, Amount do
   wait()
   local Dot = Instance.new("Part")
   Dot.Parent = workspace
   Dot.Anchored = true
   Dot.Shape = Enum.PartType.Ball
   Dot.Size = Vector3.new(1,1,1)

 if PreviousPosition == nil then
    Dot.Position = Vector3.new(0,0,0)
    PreviousPosition = Dot.Position
  elseif PreviousPosition ~= nil then
    if Direction == "Up" then
      Dot.Position = PreviousPosition + Vector3.new(0,1,0)
    elseif Direction == "Down" then
      Dot.Position = PreviousPosition + Vector3.new(0,-1,0)
    elseif Direction == "Right" then
      Dot.Position = PreviousPosition + Vector3.new(1,0,0)
    elseif Direction == "Left" then
      Dot.Position = PreviousPosition + Vector3.new(-1,0,0)
    end
    PreviousPosition = Dot.Position
  end
end
end

-- Randomly Generate Directions & Amounts
local DirectionTypes = {"Up", "Down", "Left", "Right"}
local RNGAmount = 100

for i = 1, RNGAmount do
 wait()
 local RandomDirection = DirectionTypes[math.random(1,4)]
 print(RandomDirection)
 CreatePath(math.random(1, 50), RandomDirection)
end

