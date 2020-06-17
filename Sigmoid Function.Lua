local function Sigmoid(x)
	return 1/(1 + math.exp(-x))
end

-- testing sigmoid function
-- Outputs: 0.6456563062258
print(Sigmoid(0.6)) 
