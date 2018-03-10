----------Modules loading-------------
localPath = scriptPath()
toast ("Loading common lib")
commonLib = loadstring(httpGet("https://raw.githubusercontent.com/AnkuLua/commonLib/master/commonLib.lua"))()
toast ("Loading class lib")
dofile(localPath .. "lib/class.lua")
toast ("Loading updater")
local SWUpdater = require(localPath .. "autoupdater")

---------Script auto-update----------
toast ("Executing update")
currentVersion = dofile(localPath.."version.lua")
SWUpdater.update(currentVersion)

