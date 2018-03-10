local SWUpdater = {};

function SWUpdater:update(currentVersion)
    local getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/digaomatias/SWFriend/master/version.lua"))
    local latestVersion = getNewestVersion()
    if currentVersion == latestVersion then
        toast ("You are up to date!")
    else
        httpDownload("https://raw.githubusercontent.com/digaomatias/SWFriend/master/version.lua", localPath .."version.lua")
        httpDownload("https://raw.githubusercontent.com/digaomatias/SWFriend/master/swfriend.lua", localPath .."swfriend.lua")
        scriptExit("SWFriend finished updating!")
    end
end


return SWUpdater;