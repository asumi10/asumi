local library = loadstring(game:HttpGet("https://github.com/asumi10/asumi/blob/main/main.lua?raw=true"))()


local window = library:init("    ASUMİ HUB", true, Enum.KeyCode.RightShift, true)

window:Divider("Player")

local sectionA = window:Section("Fly")

sectionA:Divider("Başlık")

sectionA:Button("Tıkla bana!", function()
   print("Button clicked.")
end)

sectionA:Switch("Fly", false, function(a)
   print(a)
end)

window:Divider("Bildirim")

local sectionB = window:Section("Bildirim Testi")

sectionB:Divider("Bildirim Test Butonları")

sectionB:Button("Kayan Hata Bildirimi", function()
   window:TempNotify("Hata!", "Uyarı Mesajı", "rbxassetid://12608259004")
end)

sectionB:Button("Bildirim 1", function() window:Notify("Merhaba!", "Ben Bildirimim", "Buton 1", "rbxassetid://12608259004",
   function()
       print(1)
   end)
end)

sectionB:Button("Bildirim 2", function() window:Notify2("Merhaba!", "Ben Bildirimim", "Buton 1", "Buton 2", "rbxassetid://12608259004",
   function()
       print(1)
   end,
   function()
       print(2)
   end)
end)

window:GreenButton(function()
   print("You clicked the green button!")
end)

sectionA:Select()
