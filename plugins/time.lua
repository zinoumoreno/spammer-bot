function run(msg, matches)
local url , res = http.request('http://api.blacklife-team.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = 'Time | ساعت : '..jdat.result.time..'\nDate | تاریخ : '..jdat.result.date..'\n@BlacklifeTM'
return text
end
return {
  patterns = {"^[/!]([Tt][iI][Mm][Ee])$"}, 
run = run 
}

