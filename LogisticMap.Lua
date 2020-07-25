local function LogisticMap(r, x, trials)
  for i = 1, trials do
    wait()

    local NewX = r * x * (1 - x)
    x = NewX
    print(x)

    local Point = Instance.new("Part")
    Point.BrickColor = BrickColor.new("Really blue")
    Point.Material = Enum.Material.Neon
    Point.Anchored = true
    Point.Size = Vector3.new(0.25,0.25,0.25)
    Point.Parent = workspace
    Point.Position = Vector3.new(0,x,i*0.25)
  end
end

LogisticMap(4, 0.94, 100)
