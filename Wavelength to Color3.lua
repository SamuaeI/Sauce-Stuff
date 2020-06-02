--@Sammmuael
--6/2/2020
local function ConvertWavelength(Wavelength, Color)
    if Wavelength >= 360 and Wavelength < 450 then -- Violet
        Color = Color3.fromRGB(156, 42, 255)
    elseif Wavelength >= 450 and Wavelength < 485 then -- Blue
        Color = Color3.fromRGB(0, 0, 255)
    elseif Wavelength >= 485 and Wavelength < 500 then -- Cyan
        Color = Color3.fromRGB(4, 175, 236)
    elseif Wavelength >= 500 and Wavelength < 565 then -- Green
        Color = Color3.fromRGB(85, 255, 0)
    elseif Wavelength >= 565 and Wavelength < 590 then -- Yellow
        Color = Color3.fromRGB(245, 205, 48)
    elseif Wavelength >= 590 and Wavelength < 625 then -- Orange
        Color = Color3.fromRGB(255, 85, 0)
    elseif Wavelength >= 625 and Wavelength < 740 then -- Red
        Color = Color3.fromRGB(255, 89, 89)
    end
    return Color
end
