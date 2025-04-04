return {
    ["require"] = function() return pcall(function() require(0) end) end,
    ["cache.invalidate"] = function() return pcall(function() return cache.invalidate and cache.invalidate("test") end) end,
    ["cache.iscached"] = function() return pcall(function() return cache.iscached and cache.iscached("test") end) end,
    ["cache.replace"] = function() return pcall(function() return cache.replace and cache.replace("test", {}) end) end,
    ["cloneref"] = function() return pcall(function() return cloneref(game) end) end,
    ["compareinstances"] = function() return pcall(function() return compareinstances(game, game) end) end,
    ["clonefunction"] = function() return pcall(function() return clonefunction(function() end) end) end,
    ["crypt.generatebytes"] = function() return pcall(function() return crypt.generatebytes(5) end) end,
    ["crypt.generatekey"] = function() return pcall(function() return crypt.generatekey() end) end,
    ["getrenv"] = function() return pcall(function() return getrenv() ~= nil end) end,
    ["crypt.decrypt"] = function()
        return pcall(function()
            local encrypted = crypt.encrypt("AES", "hi", "key1234567890123")
            local decrypted = crypt.decrypt("AES", encrypted, "key1234567890123")
            return decrypted == "hi"
        end)
    end,
    ["crypt.encrypt"] = function()
        return pcall(function()
            local encrypted = crypt.encrypt("AES", "hi", "key1234567890123")
            return typeof(encrypted) == "string"
        end)
    end,
    ["crypt.hash"] = function() return pcall(function() return crypt.hash("md5", "test") ~= nil end) end,
    ["base64_encode"] = function() return pcall(function() return base64_encode("hello") == "aGVsbG8=" end) end,
    ["base64_decode"] = function() return pcall(function() return base64_decode("aGVsbG8=") == "hello" end) end,
    ["debug.getconstant"] = function()
        return pcall(function()
            local f = function() return 123 end
            return debug.getconstant(f, 1) == 123
        end)
    end,
    ["debug.getconstants"] = function() return pcall(function() return #debug.getconstants(function() return 1 end) > 0 end) end,
    ["debug.getinfo"] = function() return pcall(function() return debug.getinfo(function() end).what ~= nil end) end,
    ["debug.getproto"] = function() return pcall(function() return debug.getproto(function() end, 1) end) end,
    ["debug.getprotos"] = function() return pcall(function() return type(debug.getprotos(function() end)) == "table" end) end,
    ["debug.getstack"] = function() return pcall(function() return debug.getstack(1) ~= nil end) end,
    ["debug.getupvalue"] = function() local a = 5; local f = function() return a end; return pcall(function() return debug.getupvalue(f, 1) ~= nil end) end,
    ["debug.getupvalues"] = function() return pcall(function() return #debug.getupvalues(function() local x = 1 end) > 0 end) end,
    ["debug.setconstant"] = function()
        return pcall(function()
            local f = function() return 1 end
            debug.setconstant(f, 1, 2)
            return f() == 2
        end)
    end,
    ["debug.setstack"] = function() return pcall(function() debug.setstack(1, {}) end) end,
    ["getgc"] = function() return pcall(function() return type(getgc(true)) == "table" end) end,
    ["getgenv_access"] = function() return pcall(function() return type(getgenv().print) == "function" end) end,
    ["getloadedmodules"] = function() return pcall(function() return #getloadedmodules() > 0 end) end,
    ["getrunningscripts"] = function() return pcall(function() return #getrunningscripts() > 0 end) end,
    ["getscripts"] = function() return pcall(function() return #getscripts() > 0 end) end,
    ["getsenv"] = function()
        return pcall(function()
            local s = getsenv(game:GetService("Players").LocalPlayer.PlayerGui)
            return typeof(s) == "table"
        end)
    end,
    ["hookfunction"] = function()
        return pcall(function()
            local f = function() return "a" end
            local h = hookfunction(f, function() return "b" end)
            return f() == "b" and h() == "a"
        end)
    end,
    ["hookmetamethod"] = function() return pcall(function() hookmetamethod(game, "__namecall", function(...) return ... end) end) end,
    ["iscclosure"] = function() return pcall(function() return iscclosure(function() end) ~= nil end) end,
    ["isexecutorclosure"] = function() return pcall(function() return isexecutorclosure(function() end) ~= nil end) end,
    ["islclosure"] = function() return pcall(function() return islclosure(function() end) == true end) end,
    ["newcclosure"] = function() return pcall(function() return typeof(newcclosure(function() end)) == "function" end) end,
    ["setreadonly"] = function() return pcall(function() setreadonly({}, true) end) end,
    ["checkcaller"] = function() return pcall(function() checkcaller() return true end) end,
    ["lz4compress"] = function() return pcall(function() return typeof(lz4compress("hi")) == "string" end) end,
    ["lz4decompress"] = function()
        return pcall(function()
            local c = lz4compress("hi")
            return lz4decompress(c) == "hi"
        end)
    end,
    ["fireclickdetector"] = function()
        return pcall(function()
            local part = Instance.new("Part", workspace)
            local click = Instance.new("ClickDetector", part)
            fireclickdetector(click)
            part:Destroy()
            return true
        end)
    end,
    ["getscriptclosure"] = function() return pcall(function() return getscriptclosure(function() end) ~= nil end) end,
    ["request"] = function()
        return pcall(function()
            local r = request({Url="http://example.com", Method="GET"})
            return r ~= nil
        end)
    end,
    ["getcallbackvalue"] = function() return pcall(function() return getcallbackvalue(function() end) end) end,
    ["getconnections"] = function() return pcall(function() return type(getconnections(game.DescendantAdded)) == "table" end) end,
    ["listfiles"] = function() return pcall(function() return type(listfiles("dunc_tests")) == "table" end) end,
    ["writefile"] = function() return pcall(function() writefile("dunc_tests/test.txt", "ok") return true end) end,
    ["isfolder"] = function() return pcall(function() return isfolder("dunc_tests") end) end,
    ["makefolder"] = function() return pcall(function() makefolder("dunc_tests") return true end) end,
    ["appendfile"] = function() return pcall(function() appendfile("dunc_tests/test.txt", "more") return true end) end,
    ["isfile"] = function() return pcall(function() return isfile("dunc_tests/test.txt") end) end,
    ["delfolder"] = function() return pcall(function() delfolder("dunc_tests") return true end) end,
    ["delfile"] = function() return pcall(function() delfile("dunc_tests/test.txt") return true end) end,
    ["loadfile"] = function() return pcall(function() return type(loadfile("dunc_tests/test.txt")) == "function" end) end,
    ["getcustomasset"] = function() return pcall(function() return typeof(getcustomasset("rbxassetid://0")) == "string" end) end,
    ["gethui"] = function() return pcall(function() return typeof(gethui()) == "Instance" end) end,
    ["gethiddenproperty"] = function() return pcall(function() return gethiddenproperty(game, "CreatorId") ~= nil end) end,
    ["sethiddenproperty"] = function() return pcall(function() sethiddenproperty(workspace, "StreamingEnabled", true) end) end,
    ["getrawmetatable"] = function() return pcall(function() return type(getrawmetatable(game)) == "table" end) end,
    ["isreadonly"] = function() return pcall(function() return isreadonly(getrawmetatable(game)) ~= nil end) end,
    ["getnamecallmethod"] = function() return pcall(function() return getnamecallmethod() ~= nil end) end,
    ["setscriptable"] = function() return pcall(function() setscriptable(game, "Name", true) end) end,
    ["isscriptable"] = function() return pcall(function() return isscriptable(game, "Name") ~= nil end) end,
    ["getinstances"] = function() return pcall(function() return #getinstances() > 0 end) end,
    ["getnilinstances"] = function() return pcall(function() return type(getnilinstances()) == "table" end) end,
    ["fireproximityprompt"] = function() return pcall(function()
        local p = Instance.new("ProximityPrompt")
        fireproximityprompt(p)
        return true
    end) end,
    ["setrawmetatable"] = function() return pcall(function() setrawmetatable(game, getrawmetatable(game)) end) end,
    ["getthreadidentity"] = function() return pcall(function() return getthreadidentity() >= 0 end) end,
    ["setthreadidentity"] = function() return pcall(function() setthreadidentity(2) return true end) end,
    ["getrenderproperty"] = function() return pcall(function() return getrenderproperty(workspace, "Gravity") ~= nil end) end,
    ["setrenderproperty"] = function() return pcall(function() setrenderproperty(workspace, "Gravity", 100) end) end,
    ["Drawing.new"] = function() return pcall(function() return typeof(Drawing.new("Text")) == "table" end) end,
    ["Drawing.Fonts"] = function() return pcall(function() return type(Drawing.Fonts) == "table" end) end,
    ["cleardrawcache"] = function() return pcall(function() cleardrawcache() return true end) end,
    ["loadstring"] = function() return pcall(function() return loadstring("return 1+1")() == 2 end) end,
    ["WebSocket.connect"] = function() return pcall(function() return typeof(WebSocket.connect) == "function" end) end,
    ["debug.setupvalue"] = function() return pcall(function() debug.setupvalue(function() return end, 1, 2) end) end,
    ["readfile"] = function() return pcall(function() return typeof(readfile) == "function" end) end,
    ["getscriptbytecode"] = function() return pcall(function() return getscriptbytecode(function() end) ~= nil end) end,
    ["getcallingscript"] = function() return pcall(function() return typeof(getcallingscript()) == "Instance" end) end,
    ["isrenderobj"] = function() return pcall(function()
        local obj = Drawing.new("Text")
        return isrenderobj(obj)
    end) end,
    ["firetouchinterest"] = function() return pcall(function()
        local p1 = Instance.new("Part", workspace)
        local p2 = Instance.new("Part", workspace)
        firetouchinterest(p1, p2, 0)
        return true
    end) end,
    ["firesignal"] = function() return pcall(function()
        firesignal(game.DescendantAdded, workspace)
        return true
    end) end,
    ["decompile"] = function() return pcall(function() return typeof(decompile(function() end)) == "string" end) end,
    ["restorefunction"] = function() return pcall(function() restorefunction(function() end) return true end) end,
    ["getscripthash"] = function() return pcall(function() return getscripthash(function() end) ~= nil end) end,
    ["identifyexecutor"] = function() return pcall(function() return type(identifyexecutor()) == "string" end) end,
    ["filtergc"] = function() return pcall(function() return typeof(filtergc) == "function" end) end,
    ["getfunctionhash"] = function() return pcall(function() return getfunctionhash(function() end) ~= nil end) end,
    ["replicatesignal"] = function() return pcall(function() return typeof(replicatesignal) == "function" end) end
