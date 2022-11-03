Matrix = LibStub("AceAddon-3.0"):NewAddon("Matrix", "AceConsole-3.0", "AceConfig-3.0")


function MyAddon:OnInitialize()
    -- Code that you want to run when the addon is first loaded goes here.
end

function MyAddon:OnEnable()
    Matrix:Print("Enabled")
end

function MyAddon:OnDisable()
    Matrix:Print("Disabled")
end