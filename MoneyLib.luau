-- Unluau v1.1.7c-alpha (modified by Lonegladiator)
-- FYI: Unluau v1 sucks, done my best but don't expect shit to be correct a lot of the time
-- discord: https://discord.gg/tVKEj3KwaX, site: lonegladiator.dev, guid: 1662de6a-be3a-4109-b588-18a3330ddd50
local upval0 = game:GetService("RunService")
local var0 = game:GetService("ReplicatedStorage")
local var1 = game:GetService("ServerStorage")
local upval1 = game:GetService("Players")
local upval2 = {}
local upval3 = {}
upval3.CashSymbol = "$"
upval3.Suffixes = { 
   "k", 
   "M", 
   "B", 
   "T", 
   "qd", 
   "Qn", 
   "sx", 
   "Sp", 
   "O", 
   "N", 
   "de", 
   "Ud", 
   "DD", 
   "tdD", 
   "qdD", 
   "QnD", 
   "sxD", 
   "SpD", 
   "OcD", 
   "NvD", 
   "Vgn", 
   "UVg", 
   "DVg", 
   "TVg", 
   "qtV", 
   "QnV", 
   "SeV", 
   "SPG", 
   "OVG", 
   "NVG", 
   "TGN", 
   "UTG", 
   "DTG", 
   "tsTG", 
   "qtTG", 
   "QnTG", 
   "ssTG", 
   "SpTG", 
   "OcTG", 
   "NoTG", 
   "QdDR", 
   "uQDR", 
   "dQDR", 
   "tQDR", 
   "qdQDR", 
   "QnQDR", 
   "sxQDR", 
   "SpQDR", 
   "OQDDr", 
   "NQDDr", 
   "qQGNT", 
   "uQGNT", 
   "dQGNT", 
   "tQGNT", 
   "qdQGNT", 
   "QnQGNT", 
   "sxQGNT", 
   "SpQGNT", 
   "OQQGNT", 
   "NQQGNT", 
   "SXGNTL", 
   "USXGNTL", 
   "DSXGNTL", 
   "TSXGNTL", 
   "QTSXGNTL", 
   "QNSXGNTL", 
   "SXSXGNTL", 
   "SPSXGNTL", 
   "OSXGNTL", 
   "NVSXGNTL", 
   "SPTGNTL", 
   "USPTGNTL", 
   "DSPTGNTL", 
   "TSPTGNTL", 
   "QTSPTGNTL", 
   "QNSPTGNTL", 
   "SXSPTGNTL", 
   "SPSPTGNTL", 
   "OSPTGNTL", 
   "NVSPTGNTL", 
   "OTGNTL", 
   "UOTGNTL", 
   "DOTGNTL", 
   "TOTGNTL", 
   "QTOTGNTL", 
   "QNOTGNTL", 
   "SXOTGNTL", 
   "SPOTGNTL", 
   "OTOTGNTL", 
   "NVOTGNTL", 
   "NONGNTL", 
   "UNONGNTL", 
   "DNONGNTL", 
   "TNONGNTL", 
   "QTNONGNTL", 
   "QNNONGNTL", 
   "SXNONGNTL", 
   "SPNONGNTL", 
   "OTNONGNTL", 
   "NONONGNTL", 
   "CENT", 
   "UNCENT"
}
local function upval4(arg1)
   local var0 = arg1:FindFirstChild("PlayerSettings")
   if var0 then
      local var0 = {}
      var0.ScientificNotation = var0.ScientificNotation.Value
      var0.MaxLivesSkipped = arg1.MaxLivesSkipped.Value
      var0.Rebirths = arg1.Rebirths.Value
      return var0
   end
   return {}
end

local function fun0(arg1)
   return math.floor(arg1 ^ 0.5714285714285714 * 38.48334897033503 / 1) * 0.00023999999999999998
end

local function upval5(arg1)
   if 0 > arg1 then
      local var0 = false
   end
   arg1 = math.abs(arg1)
   local var0 = pairs(upval3.Suffixes)
   for var152, var153 in  do
      local var0 = false
   end
   if not false then
      local var0 = false
   end
   local var1 = true and false
   return arg1
end

function upval3.FormatWithComma(arg1)
   return string.match(tostring(arg1), "^([^%d]*%d)(%d*)(.-)$") .. 
-- Unluau failed to decompile this operation.
   :reverse():gsub("(%d%d%d)", "%1,"):reverse() .. var172
end

function upval3.ShortToLong(arg1)
   local var0 = upval2[arg1]
   if var0 then
      return var0
   end
   local var1 = nil
   if string.find(arg1, "e%+") == nil then
      return var0
   else
      return var0
   end
   local upval0 = upval2
   
-- Unluau failed to decompile this local var name
   local improvised_57885  = var1
   return var1
end

function upval3.HandleLife(arg1)
   local var0 = tonumber(string.sub(tostring(arg1), string.len(tostring(arg1))))
   if arg1 <= 20 then
      if 10 <= arg1 then
         local var0 = "th"
      else
         local var0 = "th"
      end
   elseif 10 <= arg1 then
      local var0 = "th"
   else
      local var0 = "th"
   end
   local upval3 = upval3
   upval3 = arg1
   return upval3.FormatWithComma(upval3) .. nil
end

function upval3.CalculateLifeSkips(arg1, arg2)
   arg2 = math.clamp(arg2, 0, 20)
   local upval4 = upval3
   upval4 = arg1
   return upval4.RebornPrice(upval4) * 10 ^ (3 * arg2)
end

function upval3.LifeSkips(arg1, arg2)
   local upval6 = upval3
   upval6 = arg1
   for var224 = 20, 1, -1 do
      if upval6.RebornPrice(upval6) * 10 ^ (3 * var224) < arg2 then
         if var224 <= upval4(arg1).MaxLivesSkipped or 20 then
            return var224
         end
      end
   end
   return 0
end

function upval3.RebornPrice(arg1)
   local var0 = upval4(arg1).Rebirths
   if var0 then
      if var0 < 40 then
         return 2.5E+19 * (var0 + 1)
      end
      if var0 <= 5000 then
         return 2.5E+19 * (var0 + 1)
      end
      local var0 = 5000
      if 50000 <= var0 then
         return 2.5E+19 * (var0 + 1)
      end
      local var1 = var0 - var0
      if 5000 < var0 then
         return 2.5E+19 * (var0 + 1)
      end
      if (2.5E+19 * (math.floor(var0 / 5) * 2 + 1) * (1 + math.floor(var0 / 25) * 100) * (1 + math.floor(var0 / 500) * 1000)) ^ (1 + math.floor(var0 / 1) * 0.00023999999999999998 + 0) <= 1E+241 then
         return 2.5E+19 * (var0 + 1)
      end
      return 1E+241
   end
end

function upval3.HandleMoney(arg1)
   if upval0:IsClient() then
      if upval4(upval1.LocalPlayer).ScientificNotation then
         return upval3.CashSymbol .. string.format("%0.2e", arg1)
      end
   end
   local upval12 = upval3
   upval12 = arg1
   return upval12.CashSymbol .. upval5(upval12)
end

function upval3.DealWithPoints(arg1)
   if 0 > arg1 then
      local var0 = false
   end
   arg1 = math.abs(arg1)
   local var0 = pairs(upval3.Suffixes)
   for var152, var153 in  do
      local var0 = false
   end
   if not false then
      local var0 = false
   end
   local var1 = true and false
   return arg1
end

return upval3
