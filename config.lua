--[[....................................]]--
--[[       Config by i3ucky#4415        ]]--
--[[            wildfired.de            ]]--
--[[....................................]]--

Config = {}

--[[ Command ]]--
Config.Command = "medmdt"

--[[ Item ]]--
Config.UsableItem = true
Config.Item = "medbook" -- Itemname in Database

--[[ Allowed Jobs ]]--
Config.Jobs = {"doctor","doctor2","doctor3","doctor4","doctorsb","doctorbw"}

--[[ Offices ]]--
Config.UseOffice = false
Config.Open = { 
	['key'] = 0xD9D0E1C0, -- SPACE
	['text'] = "~e~[SPACE] ~q~um Archiv zu öffnen",
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
	['1'] = "Die Änderungen  wurden gespeichert.", 
	['2'] = "Die Änderungen des Berichts wurden gespeichert.",
	['3'] = "Bericht wurde erfolgreich gelöscht.",
	['4'] = "Ein neuer Bericht wurde eingereicht.",
	['5'] = "", 
	['6'] = "",
	['7'] = "Dieser Bericht kann nicht gefunden werden.",
	['8'] = "Notiz gespeichert.",
	['9'] = "Notiz gelöscht.",
	} 