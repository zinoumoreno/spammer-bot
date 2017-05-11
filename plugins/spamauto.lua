local function run(msg, matches)
  local text = matches[1]
  local receiver = get_receiver(msg)
if is_admin1(msg) then
 for i=1,10 do
            send_large_msg(receiver, text)
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
