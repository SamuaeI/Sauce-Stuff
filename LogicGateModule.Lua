local LogicGateModule = {}

function LogicGateModule.ANDGate(InputA,InputB)
  if InputA == 1 and InputB == 1 then
    return 1
  else
    return 0 
  end
end

function LogicGateModule.NANDGate(InputA,InputB)
  if InputA == 1 and InputB == 1 then
    return 0
  else
    return 1
  end
end

function LogicGateModule.ORGate(InputA,InputB)
  if InputA == 1 then
    return 1
  elseif InputB == 1 then
    return 1
  else
    return 0
  end
end

function LogicGateModule.XORGate(InputA,InputB)
  if InputA ~= InputB then
    return 1
  else
    return 0
  end
end

function LogicGateModule.NOTGate(InputA)
  if InputA == 0 then
    return 1
  elseif InputA == 1 then
    return 0
  end
end

function LogicGateModule.NORGate(InputA,InputB)
  if InputA == 0 and InputB == 0 then
    return 1
  elseif InputA == 0 and InputB == 1 then
    return 0
  elseif InputA == 1 and InputB == 0 then
    return 0
  elseif InputA == 1 and InputB == 1 then
    return 0
  end
end

function LogicGateModule.XNORGate(InputA,InputB)
  if InputA == InputB then
    return 1
  else
    return 0
  end
end

return LogicGateModule
