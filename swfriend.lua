localPath = scriptPath()
toast ("Loading common lib")
commonLib = loadstring(httpGet("https://raw.githubusercontent.com/AnkuLua/commonLib/master/commonLib.lua"))()
toast ("Loading class lib")
dofile(localPath .. "lib/class.lua")
toast ("Loading updater")
-- Script auto-update
dofile(localPath .. "autoupdater.lua")
toast ("Executing update")
currentVersion = dofile(localPath.."version.lua")
updater = SWUpdater(currentVersion)
updater:update()

