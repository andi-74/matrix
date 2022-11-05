tbl_defaults = {
    profile = {
        enable = true
    }
}

tbl_options = {
    name = "Matrix", handler = Matrix, type = 'group',
    get = "getValue", set = "setValue",
    args = {
        descrip = {
            name = "Customize raid frames - for healers ♥", type = "description", order = 0
        },
        enable = {
            name = "Enable", type = "toggle", order = 100, desc = "Enables the addon",
            get = "getEnabled",
            set = "setEnabled"
        }
    }
}

function Matrix:getEnabled(info)
    return self:IsEnabled()
end

function Matrix:setEnabled(info, value)
    self.db.profile[info[#info]] = value
    if value then self:Enable()
    else self:Disable() end
end

function Matrix:getValue(info)
    return self.db.profile[info]
end

function Matrix:setValue(info, value)
    self.db.profile[info[#info]] = value
end