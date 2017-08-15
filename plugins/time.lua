function run(msg, matches)
local url , res = http.request('http://api.blacklife-team.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = 'Time | ساعت : '..jdat.result.time..'\nDate | تاریخ : '..jdat.result.date..'\n@BlacklifeTM'
return text
end
local time1 = jdat.result.time
if time1 == 01:20:00 then
local sudo = 255317894
send_large_msg(sudo, 'Lets Start New Day! 00:00\n@BlackLifeTM',ok_cb, false)
end
return {
  patterns = {"^[/!]([Tt][iI][Mm][Ee])$"}, 
run = run 
}

