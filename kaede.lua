local window = Menu.CreateWindow("kaede", 2)
local ConVars = {
    sunset_override = CVar.FindVar("cl_csm_rot_override"),
    sunset_x = CVar.FindVar("cl_csm_rot_x"),
    sunset_y = CVar.FindVar("cl_csm_rot_y"),
    sunset_z = CVar.FindVar("cl_csm_rot_z")
}
local MenuElements = {
    Sunsetmode = window:AddCheckbox("Sunset mode", false),
    MvmRecorded = window:AddCheckbox("Mvm Records [Download]", false)
}
local Windows = {
}
window:NextColumn()
ChatScriptPrint = function (text)
    return Utils.ChatPrint(string.format("kaede + | %s", text))
end
ChatScriptPrint("Stay kawai with us!")
local Createmove = function ()
    if MenuElements.Sunsetmode:GetValue() then
        ConVars.sunset_override:SetInt(1)
        ConVars.sunset_x:SetInt(30)
        ConVars.sunset_y:SetInt(100)
        ConVars.sunset_z:SetInt(10)
    else
        ConVars.sunset_override:SetInt(0)
    end
end
Hooks.RegisterCallback("OnCreateMove", Createmove)
