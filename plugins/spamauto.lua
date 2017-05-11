local function run(msg, matches)
  local text = matches[1]
  local b = 1
if is_admin1(msg) then
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  return text
end
end

return {
  patterns = {
    "^(.*)$"
  }, 
 run = run,
 moderated = true
}
