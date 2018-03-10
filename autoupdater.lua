currentVersion = dofile(localPath.."version.lua")
getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/digaomatias/SWFriend/master/version.lua"))
latestVersion = getNewestVersion()

SWUpdater = {}
SWUpdater.__index = SWUpdater

function SWUpdater:create()
   local updater = {}             -- our new object
   setmetatable(acnt,SWUpdater)  -- make SWUpdater handle lookup
   --acnt.balance = balance      -- initialize our object
   return updater
end

function SWUpdater:update()
    if currentVersion == latestVersion then
        toast ("You are up to date!")
    else
        httpDownload("https://raw.githubusercontent.com/digaomatias/SWFriend/master/version.lua", localPath .."version.lua")
        httpDownload("https://raw.githubusercontent.com/digaomatias/SWFriend/master/swfriend.lua", localPath .."Palbot.lua")
        httpDownload("https://raw.githubusercontent.com/digaomatias/SWFriend/master/imageupdater.lua", localPath .."imageupdater.lua")
        scriptExit("SWFriend finished updating!")
    end
end