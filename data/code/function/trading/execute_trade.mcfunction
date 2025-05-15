# Other's items 1: -109 113 50
# Your items 1:    -111 113 50
# Other's items 2: -107 113 50
# Your items 2:    -105 113 50

# swap items
data modify storage tmp Items set from block -111 113 50 Items
data modify block -111 113 50 Items set from block -105 113 50 Items
data modify block -105 113 50 Items set from storage tmp Items

data remove block -111 113 50 Lock
data remove block -105 113 50 Lock

data modify block -109 113 50 Lock set value "random string of letters it doesnt even matter 9832987432982347979384217908243"
data modify block -107 113 50 Lock set value "random string of letters it doesnt even matter 9832987432982347979384217908243"

tellraw @a[tag=trading_now] {"text": "You can now take your newly earned items out of the chest! Run /trigger spawn when you're done.", "color": "aqua"}

bossbar set trading_time_left players

tag @a remove trading_now
tag @a remove trading_now.confirmed
tag @a remove trading_now.trader1
tag @a remove trading_now.trader2