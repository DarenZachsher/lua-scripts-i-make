print(
    [[                                                                                      
            ddddddd                                                                  
            d:::::d  UUUUUUU     UUUUUUU NNNNNNNN        NNNNNNNN        CCCCCCCCCCCCC
            d:::::d  U:::::U     U:::::U N:::::::N       N::::::N     CCC::::::::::::C
            d:::::d  U:::::U     U:::::U N::::::::N      N::::::N   CC:::::::::::::::C
            d:::::d  U:::::U     U:::::U N:::::::::N     N::::::N  C:::::CCCCCCCC::::C
    ddddddddd:::::d  U:::::U     U:::::U N::::::::::N    N::::::N C:::::C       CCCCCC
  dd::::::::::::::d  U:::::D     D:::::U N:::::::::::N   N::::::N C:::::C              
 d::::::::::::::::d  U:::::D     D:::::U N:::::::N::::N  N::::::N C:::::C              
d:::::::ddddd:::::d  U:::::D     D:::::U N::::::N N::::N N::::::N C:::::C              
d::::::d    d:::::d  U:::::D     D:::::U N::::::N  N::::N:::::::N C:::::C              
d:::::d     d:::::d  U:::::D     D:::::U N::::::N   N:::::::::::N C:::::C              
d:::::d     d:::::d  U:::::D     D:::::U N::::::N    N::::::::::N C:::::C              
d:::::d     d:::::d  U::::::U   U::::::U N::::::N     N:::::::::N C:::::C       CCCCCC
d::::::ddddd::::::dd U:::::::UUU:::::::U N::::::N      N::::::::N  C:::::CCCCCCCC::::C
 d:::::::::::::::::d  UU:::::::::::::UU  N::::::N       N:::::::N   CC:::::::::::::::C
  d:::::::::ddd::::d    UU:::::::::UU    N::::::N        N::::::N     CCC::::::::::::C
   ddddddddd   ddddd      UUUUUUUUU      NNNNNNNN         NNNNNNN        CCCCCCCCCCCCC
]]
)

wait(1)
print("⌛ Grabbing executor name...")
wait(1)

local executorName = identifyexecutor and identifyexecutor() or "Unknown Executor"

print("✅ Starting dUNC...")
wait(2)

local totalTests = 0
local passedTests = 0
local failedTests = 0

-- record start time
local startTime = os.clock() -- record the start time

-- round second to 2 number places
local function round(num)
    return math.floor(num * 100 + 0.5) / 100
end

local function testFeature(name, func)
    totalTests = totalTests + 1
    local success, result = pcall(func)

    if success then
        if result then
            print(name .. ": ✅ true")
            passedTests = passedTests + 1
        else
            print(name .. ": ❌ false (result is nil)")
            failedTests = failedTests + 1
        end
    else
        print(name .. ": ❌ false (error: " .. tostring(result) .. ")")
        failedTests = failedTests + 1
    end

    wait(0.2) -- Adding a small delay to control output speed
end

--- Other Functions Testing
testFeature(
    "debug.getconstant",
    function()
        return debug and debug.getconstant
    end
)
testFeature(
    "debug.getconstants",
    function()
        return debug and debug.getconstants
    end
)
testFeature(
    "debug.getinfo",
    function()
        return debug and debug.getinfo
    end
)
testFeature(
    "debug.getproto",
    function()
        return debug and debug.getproto
    end
)
testFeature(
    "debug.getprotos",
    function()
        return debug and debug.getprotos
    end
)
testFeature(
    "debug.getstack",
    function()
        return debug and debug.getstack
    end
)
testFeature(
    "debug.getupvalue",
    function()
        return debug and debug.getupvalue
    end
)
testFeature(
    "debug.getupvalues",
    function()
        return debug and debug.getupvalues
    end
)
testFeature(
    "debug.setconstant",
    function()
        return debug and debug.setconstant
    end
)
testFeature(
    "debug.setstack",
    function()
        return debug and debug.setstack
    end
)
testFeature(
    "debug.setupvalue",
    function()
        return debug and debug.setupvalue
    end
)

-- Cache Functions
testFeature(
    "cache.invalidate",
    function()
        return cache and cache.invalidate and type(cache.invalidate) == "function"
    end
)

testFeature(
    "cache.iscached",
    function()
        return cache and cache.iscached and type(cache.iscached) == "function"
    end
)

testFeature(
    "cache.replace",
    function()
        return cache and cache.replace and type(cache.replace) == "function"
    end
)

-- Cloning Functions
testFeature(
    "cloneref",
    function()
        return cloneref and type(cloneref) == "function"
    end
)

testFeature(
    "compareinstances",
    function()
        return compareinstances and type(compareinstances) == "function"
    end
)

testFeature(
    "clonefunction",
    function()
        return clonefunction and type(clonefunction) == "function"
    end
)

-- Cryptography Functions
testFeature(
    "crypt.generatebytes",
    function()
        return crypt and crypt.generatebytes and type(crypt.generatebytes) == "function"
    end
)

testFeature(
    "crypt.generatekey",
    function()
        return crypt and crypt.generatekey and type(crypt.generatekey) == "function"
    end
)

testFeature(
    "getrenv",
    function()
        return getrenv and type(getrenv) == "function"
    end
)

testFeature(
    "crypt.decrypt",
    function()
        return crypt and crypt.decrypt and type(crypt.decrypt) == "function"
    end
)

testFeature(
    "crypt.encrypt",
    function()
        return crypt and crypt.encrypt and type(crypt.encrypt) == "function"
    end
)

testFeature(
    "crypt.hash",
    function()
        return crypt and crypt.hash and type(crypt.hash) == "function"
    end
)

-- Base64 Functions
testFeature(
    "base64_encode",
    function()
        return base64_encode and type(base64_encode) == "function"
    end
)

testFeature(
    "base64_decode",
    function()
        return base64_decode and type(base64_decode) == "function"
    end
)

-- Global Functions
testFeature(
    "getgc",
    function()
        return getgc and type(getgc) == "function"
    end
)

testFeature(
    "getgenv",
    function()
        return getgenv and type(getgenv) == "function"
    end
)

testFeature(
    "getloadedmodules",
    function()
        return getloadedmodules and type(getloadedmodules) == "function"
    end
)

testFeature(
    "getrunningscripts",
    function()
        return getrunningscripts and type(getrunningscripts) == "function"
    end
)

testFeature(
    "getscripts",
    function()
        return getscripts and type(getscripts) == "function"
    end
)

testFeature(
    "getsenv",
    function()
        return getsenv and type(getsenv) == "function"
    end
)

-- Hook Functions
testFeature(
    "hookfunction",
    function()
        return hookfunction and type(hookfunction) == "function"
    end
)

testFeature(
    "hookmetamethod",
    function()
        return hookmetamethod and type(hookmetamethod) == "function"
    end
)

-- Function Type Checks
testFeature(
    "iscclosure",
    function()
        return iscclosure and type(iscclosure) == "function"
    end
)

testFeature(
    "isexecutorclosure",
    function()
        return isexecutorclosure and type(isexecutorclosure) == "function"
    end
)

testFeature(
    "islclosure",
    function()
        return islclosure and type(islclosure) == "function"
    end
)

testFeature(
    "newcclosure",
    function()
        return newcclosure and type(newcclosure) == "function"
    end
)

-- Read-Only Functions
testFeature(
    "setreadonly",
    function()
        return setreadonly and type(setreadonly) == "function"
    end
)

testFeature(
    "checkcaller",
    function()
        return checkcaller and type(checkcaller) == "function"
    end
)

-- Compression Functions
testFeature(
    "lz4compress",
    function()
        return lz4compress and type(lz4compress) == "function"
    end
)

testFeature(
    "lz4decompress",
    function()
        return lz4decompress and type(lz4decompress) == "function"
    end
)

-- Input/Output Functions
testFeature(
    "fireclickdetector",
    function()
        return fireclickdetector and type(fireclickdetector) == "function"
    end
)

testFeature(
    "getscriptclosure",
    function()
        return getscriptclosure and type(getscriptclosure) == "function"
    end
)

testFeature(
    "request",
    function()
        return request and type(request) == "function"
    end
)

testFeature(
    "getcallbackvalue",
    function()
        return getcallbackvalue and type(getcallbackvalue) == "function"
    end
)

testFeature(
    "getconnections",
    function()
        return getconnections and type(getconnections) == "function"
    end
)

testFeature(
    "listfiles",
    function()
        return listfiles and type(listfiles) == "function"
    end
)

testFeature(
    "writefile",
    function()
        return writefile and type(writefile) == "function"
    end
)

testFeature(
    "isfolder",
    function()
        return isfolder and type(isfolder) == "function"
    end
)

testFeature(
    "makefolder",
    function()
        return makefolder and type(makefolder) == "function"
    end
)

testFeature(
    "appendfile",
    function()
        return appendfile and type(appendfile) == "function"
    end
)

testFeature(
    "isfile",
    function()
        return isfile and type(isfile) == "function"
    end
)

testFeature(
    "delfolder",
    function()
        return delfolder and type(delfolder) == "function"
    end
)

testFeature(
    "delfile",
    function()
        return delfile and type(delfile) == "function"
    end
)

testFeature(
    "loadfile",
    function()
        return loadfile and type(loadfile) == "function"
    end
)

-- Custom Asset Functions
testFeature(
    "getcustomasset",
    function()
        return getcustomasset and type(getcustomasset) == "function"
    end
)

-- Hidden Property Functions
testFeature(
    "gethiddenproperty",
    function()
        return gethiddenproperty and type(gethiddenproperty) == "function"
    end
)

testFeature(
    "sethiddenproperty",
    function()
        return sethiddenproperty and type(sethiddenproperty) == "function"
    end
)

-- Metatable Functions
testFeature(
    "getrawmetatable",
    function()
        return getrawmetatable and type(getrawmetatable) == "function"
    end
)

testFeature(
    "isreadonly",
    function()
        return isreadonly and type(isreadonly) == "function"
    end
)

testFeature(
    "getnamecallmethod",
    function()
        return getnamecallmethod and type(getnamecallmethod) == "function"
    end
)

testFeature(
    "setscriptable",
    function()
        return setscriptable and type(setscriptable) == "function"
    end
)

testFeature(
    "isscriptable",
    function()
        return isscriptable and type(isscriptable) == "function"
    end
)

testFeature(
    "getinstances",
    function()
        return getinstances and type(getinstances) == "function"
    end
)

testFeature(
    "getnilinstances",
    function()
        return getnilinstances and type(getnilinstances) == "function"
    end
)

-- Input Functions
testFeature(
    "fireproximityprompt",
    function()
        return fireproximityprompt and type(fireproximityprompt) == "function"
    end
)

-- Metatables
testFeature(
    "setrawmetatable",
    function()
        return setrawmetatable and type(setrawmetatable) == "function"
    end
)

testFeature(
    "getthreadidentity",
    function()
        return getthreadidentity and type(getthreadidentity) == "function"
    end
)

testFeature(
    "setthreadidentity",
    function()
        return setthreadidentity and type(setthreadidentity) == "function"
    end
)

-- Render Functions
testFeature(
    "getrenderproperty",
    function()
        return getrenderproperty and type(getrenderproperty) == "function"
    end
)

testFeature(
    "setrenderproperty",
    function()
        return setrenderproperty and type(setrenderproperty) == "function"
    end
)

-- Drawing Functions
testFeature(
    "Drawing.new",
    function()
        return Drawing and Drawing.new and type(Drawing.new) == "function"
    end
)

testFeature(
    "Drawing.Fonts",
    function()
        return Drawing and Drawing.Fonts and type(Drawing.Fonts) == "table"
    end
)

testFeature(
    "cleardrawcache",
    function()
        return cleardrawcache and type(cleardrawcache) == "function"
    end
)

-- Scripting Support Functions
testFeature(
    "loadstring",
    function()
        return loadstring and type(loadstring) == "function"
    end
)

testFeature(
    "WebSocket.connect",
    function()
        return WebSocket and WebSocket.connect and type(WebSocket.connect) == "function"
    end
)

testFeature(
    "readfile",
    function()
        return readfile and type(readfile) == "function"
    end
)

testFeature(
    "getscriptbytecode",
    function()
        return getscriptbytecode and type(getscriptbytecode) == "function"
    end
)

testFeature(
    "getcallingscript",
    function()
        return getcallingscript and type(getcallingscript) == "function"
    end
)

testFeature(
    "isrenderobj",
    function()
        return isrenderobj and type(isrenderobj) == "function"
    end
)

testFeature(
    "firetouchinterest",
    function()
        return firetouchinterest and type(firetouchinterest) == "function"
    end
)

testFeature(
    "firesignal",
    function()
        return firesignal and type(firesignal) == "function"
    end
)

testFeature(
    "decompile",
    function()
        return decompile and type(decompile) == "function"
    end
)

testFeature(
    "restorefunction",
    function()
        return restorefunction and type(restorefunction) == "function"
    end
)

testFeature(
    "getscripthash",
    function()
        return getscripthash and type(getscripthash) == "function"
    end
)

testFeature(
    "identifyexecutor",
    function()
        return identifyexecutor and type(identifyexecutor) == "function"
    end
)

testFeature(
    "filtergc",
    function()
        return filtergc and type(filtergc) == "function"
    end
)

testFeature(
    "replicatesignal",
    function()
        return replicatesignal and type(replicatesignal) == "function"
    end
)

testFeature(
    "getfunctionhash",
    function()
        return getfunctionhash and type(getfunctionhash) == "function"
    end
)

testFeature(
    "gethui",
    function()
        return gethui and type(gethui) == "function"
    end
)

--level
local getidentity = getthreadidentity or syn and syn.get_thread_identity or get_thread_identity

if getidentity then
    local success, level = pcall(getidentity)
    if success then
		print("finding executor level: ⌛")
        print("executor level: ✅ (".. level..")")

        if level == 8 then
            "access to a lot of scripts"
        elseif level == 7 then
            "a little less access than level 8"
        elseif level == 6 then
            "not that much access"
        elseif level == 5 then
            "little bit access"
        elseif level == 4 then
            "little less access"
        elseif level == 3 then
            "not enough access"
        else
            "very limited access"
        end
    else
        print("getthreadidentity: ❌ is not supported ● "..executorName)
    end
else
    print("getthreadidentity: ❌ false not supported ● "..executorName)
end

-- end time
local endTime = os.clock() -- record the end time
local elapsedTime = round(endTime - startTime) -- round the time

-- print percantage
local successRate = math.floor((passedTests / totalTests) * 100 + 0.5)

local version = "1.3.0"

print("✅ Passed the test with " .. successRate .. "% success rate (" .. passedTests .. " out of " .. totalTests .. ")")
print("❌ Total tests failed: " .. failedTests)
print("")
print("this test was made by daren (kys, all the inco pastes/unc fakers)")
print("Finished the test in " .. elapsedTime .. " seconds")
print("dUNC, VERSION " .. version .. " • " .. executorName)
