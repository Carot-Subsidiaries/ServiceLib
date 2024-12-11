local ServiceLib = {Libs = {}}
ServiceLib.__index = ServiceLib

local old;old=hookmetamethod(game,"__namecall",function(t,...)if t==game and getnamecallmethod()=="GetService"and ServiceLib.Libs[select(1,...)]then return ServiceLib.Libs[select(1,...)]end return old(t,...)end)

function ServiceLib.new(name: string, contents: table, location: Instance?)
    local self = setmetatable({}, ServiceLib)
    self.Contents = contents
    self.Lib = Instance.new("Folder", location or game)
    self.Lib.Name = name
    ServiceLib.Libs[name] = self.Lib

    setrawmetatable(self.Lib,{__namecall=function(t,...)return self.Contents[getnamecallmethod()](...)end})

    return self
end

function ServiceLib:Add(k: string, v: any)
    self.Contents[k] = v

    return self
end

return ServiceLib
