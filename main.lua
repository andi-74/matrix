Matrix = LibStub("AceAddon-3.0"):NewAddon("Matrix", "AceConsole-3.0")

function Matrix:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("MatrixDB", tbl_defaults, true)
    LibStub("AceConfig-3.0"):RegisterOptionsTable("Matrix", tbl_options, {"matrix", "mx"} )
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Matrix")
    self:SetEnabledState(self.db.profile.enable)
end

function Matrix:OnEnable()
    self:Print("Matrix is enabled!")
end

function Matrix:OnDisable()
    self:Print("Matrix is disabled.")
end