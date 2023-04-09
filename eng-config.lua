--[[....................................]]--
--[[       Config by i3ucky#4415        ]]--
--[[            wildfired.de            ]]--
--[[....................................]]--

Config = {}

--[[ Command ]]--
Config.Command = "medmdt"

--[[ Allowed Jobs ]]--
Config.Jobs = {"doctor","doctor2","doctor3","doctor4","doctorsb","doctorbw"}

--[[ Offices ]]--
Config.UseOffice = false
Config.Open = { 
	['key'] = 0xD9D0E1C0, -- SPACE
	['text'] = "~e~[SPACE] ~q~to open archive",
	} 
Config.Office = {
    [1] = {
        coords={-304.10, 829.9, 120.0}, -- Valentine
    },
    [2] = {
        coords={-325.81, 819.8, 118.0}, -- Valentine 2
    }
}

--[[ Notifys ]]--
Config.Notify = {  
	['1'] = "The changes have been saved.",
	['2'] = "The report changes have been saved.",
	['3'] = "Report was deleted successfully.",
	['4'] = "A new report has been submitted.",
	['5'] = "",
	['6'] = "",
	['7'] = "This report cannot be found.",
	['8'] = "Note saved.",
	['9'] = "Note deleted.",
	} 
