function run(msg, matches)
local url , res = http.request('http://api.blacklife-team.ir/font?name='..matches[1]..'/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = 'Your TeXT : '..matches[1]..'\nText Design : '..jdat.result.name[1]..'\n@BlacklifeTM'
return text
end
return {
  patterns = {"^[#/!]design (.*)$"}, 
run = run 
}


