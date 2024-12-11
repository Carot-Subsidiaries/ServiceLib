# ServiceLib
Gone Today Back Tomorrow ;)

## Example Code

### Importing ServiceLib
```luau
local ServiceLib = loadstring(game:GetService("https://github.com/Carot-Subsidiaries/ServiceLib/raw/refs/heads/main/lib.luau"), "ServiceLib")()
```

### Creating a new service
```luau
ServiceLib.new(CustomLib, {Print = print})
--------------- Alternative code ---------------
local Service = ServiceLib.new(CustomLib, {})
Service:Add("Print", print)
--------------- Alternative code ---------------
ServiceLib.new("CustomLib", {}):Add("Print", print) 
```

### Accesing the service
```luau
game:GetService("CustomLib"):Print("works")
--------------- Alternative code ---------------
game.CustomLib:Print("works")
```
