do

function run(msg, matches)
       if not is_admin1(msg) then
              return " "
		end
  local sps = matches[1]
  local sp = 'done by BlackLifeTM'

for i=1, 30000, 1 do

sp = '\n'..sps..'\n'..sp
i = i + 1

end

return sp

end

return {
    patterns = {

      "[!/#]spam (.*)$"
    },
    run = run,
}

end
