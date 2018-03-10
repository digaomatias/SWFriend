localPath = scriptPath()
toast ("Loading common lib")
commonLib = loadstring(httpGet("https://raw.githubusercontent.com/AnkuLua/commonLib/master/commonLib.lua"))()
toast ("Loading updater")
-- Script auto-update
dofile(localPath .. "autoupdater.lua")
toast ("Executing update")
updater = SWUpdater:create()
updater:update()

