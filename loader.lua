local HttpService = game:GetService("HttpService")

local scripts = {
    "https://api.luarmor.net/files/v4/loaders/a68ed82115534fb6ea10431a7fde53cf.lua",
    "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua",
    "https://api.luarmor.net/files/v4/loaders/64b255d858bf16bc967c86f0df12b78b.lua"
}

for i, url in ipairs(scripts) do
    local success, result = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if not success then
        warn("Script "..i.." failed: "..result)
    end
    task.wait(1)
end
