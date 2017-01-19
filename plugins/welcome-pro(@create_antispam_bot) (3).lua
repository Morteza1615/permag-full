do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
     local text = 'سلام.خوش آمدید :)'..'\n'..'\n'
     ..'مشخصات شما'..'\n'
    ..'> نام :  '..msg.action.user.print_name..'\n'
    ..'> یوزرنیم  : @'..(msg.action.user.username or "---")..'\n'
    ..'> شناسه : '..msg.action.user.id..'\n'
    ..'-------------'..'\n'
    ..'* نام گروه : '..msg.to.title..'\n'
    ..'* شناسه گروه : '..msg.to.id..'\n'
    ..'-------------'..'\n'
    ..'> نام معرف شما : '..msg.from.print_name..'\n'
    ..'> یوزرنیم معرف شما : @'..(msg.from.username or "---")..'\n'
    ..'> شناسه معرف شما : '..msg.from.id..'\n'
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
        local text = 'سلام.خوش آمدید :)'..'\n'..'\n'
     ..'مشخصات شما'..'\n'
    ..'> نام  :  '..msg.from.print_name..'\n'
    ..'> یوزرنیم : @'..(msg.from.username or "ندارید!")..'\n'
    ..'> شناسه : '..msg.from.id..'\n'
    ..'-------------'..'\n'
    ..'* نام گروه : '..msg.to.title..'\n'
    ..'* شناسه گروه : '..msg.to.id..'\n'
        return reply_msg(msg.id, text, ok_cb, false)
  end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
    },
 run = run
}
end

