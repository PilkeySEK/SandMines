scoreboard players add vote_ad_time tmp 1

# the error is NOT an error btw
execute if score vote_ad_time tmp matches 12000.. run tellraw @a [{"text": "We worked hard on this game, we would really appreciate a ", "color": "green"}, {"text": "/vote", "clickEvent": {"action": "suggest_command", "value": "/vote"}, "hoverEvent": {"action": "show_text", "contents": "§4Click here to vote§r"}, "color": "light_purple"}, {"text": " :3", "color": "green"}]

execute if score vote_ad_time tmp matches 12000.. run scoreboard players set vote_ad_time tmp 0