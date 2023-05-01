--[[....................................]]--
--[[       Config by i3ucky#4415        ]]--
--[[            wildfired.de            ]]--
--[[....................................]]--

Config = {}

--[[ Command ]]--
Config.Command = "medmdt"

--[[ Command ]]--
Config.Item = "medbook"

--[[ Allowed Jobs ]]--
Config.Jobs = {"doctor","pinkerton"}

--[[ Offices ]]--
Config.UseOffice = false
Config.Open = { 
	['key'] = 0xD9D0E1C0, -- SPACE
	['text'] = "~e~[SPACE] ~q~to open archive",
	} 
Config.Office = {

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