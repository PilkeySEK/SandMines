execute store result score random tmp run random value 1..10000
execute if score random tmp matches 1..4999 run return run function code:mining/sand/treasure/common
execute if score random tmp matches 5000..7999 run return run function code:mining/sand/treasure/uncommon
execute if score random tmp matches 8000..8999 run return run function code:mining/sand/treasure/rare
execute if score random tmp matches 9000..9899 run return run function code:mining/sand/treasure/epic
execute if score random tmp matches 9900..10000 run return run function code:mining/sand/treasure/godly

## Chances (i think) (chances for getting x treasure while mining 1 sand block)
# No treasure:          99%
# Common treasure:      0.5%
# Uncommon treasure:    0.03%
# Rare treasure:        0.01%
# Epic treasure:        0.009%
# Godly treasure:       0.0001%