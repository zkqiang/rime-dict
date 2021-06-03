--[[
time_translator: 将 `/time` 翻译为当前时间
--]]

local function translator(input, seg)
   if (input == "/time") then
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), ""))
      yield(Candidate("time", seg.start, seg._end, os.date("%Y-%m-%d %H:%M:%S"), ""))
      yield(Candidate("time", seg.start, seg._end, os.date("%H时%M分%S秒"), ""))
      yield(Candidate("time", seg.start, seg._end, os.date("%Y年%m月%d日%H时%M分%S秒"), ""))
   end
end

return translator
