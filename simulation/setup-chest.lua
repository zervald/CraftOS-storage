periphemu.create("left", "chest")
Chest1 = peripheral.wrap("left")
if Chest1 == nil then
  error("No chest found on the left side.", 0)
end
local added = Chest1.setItem(1, { name = "minecraft:diamond", count = 64 })
print("Added " .. added .. " Diamonds")
Chest1.list()
