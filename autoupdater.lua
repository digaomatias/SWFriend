local currentVersion = dofile(localPath.."version.lua")
local getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/digaomatias/SWFriend/master/version.lua"))
local latestVersion = getNewestVersion()

function automaticUpdates ()
    if autoUpdate == true then
      if currentVersion == latestVersion then
        toast ("You are up to date!")
      else
        httpDownload("https://raw.githubusercontent.com/digaomatias/SWFriend/master/version.lua", localPath .."version.lua")
        httpDownload("https://raw.githubusercontent.com/digaomatias/SWFriend/master/swfriend.lua", localPath .."Palbot.lua")
        httpDownload("https://raw.githubusercontent.com/digaomatias/SWFriend/master/imageupdater.lua", localPath .."imageupdater.lua")
        scriptExit("SWFriend finished updating!")
      end
    end
  end