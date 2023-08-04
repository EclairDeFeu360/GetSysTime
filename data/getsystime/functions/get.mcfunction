# Detect if the system is broken
execute unless entity 0e2f3600-0001-0001-0001-000e2f360000 run tellraw @s [{"text":"/!\\ No setup please do ","color":"dark_red"},{"text":"/function getsystime:set","clickEvent":{"action":"run_command","value":"/function getsystime:set"},"hoverEvent": {"action":"show_text","contents": {"text": "Click to use","color": "yellow"}}},{"text":" /!\\"}]
execute at 0e2f3600-0001-0001-0001-000e2f360000 unless block ~ ~ ~ repeating_command_block run tellraw @s [{"text":"/!\\ Broken systeme detected! Please do ","color":"dark_red"},{"text":"/function getsystime:set","clickEvent":{"action":"run_command","value":"/function getsystime:set"},"hoverEvent": {"action":"show_text","contents": {"text": "Click to use","color": "yellow"}}},{"text":" /!\\"}]

# Get time
execute at 0e2f3600-0001-0001-0001-000e2f360000 run data modify storage getsystime:values input set string block ~ ~ ~ LastOutput 44 52

# Get hour
data modify storage getsystime:values temp set string storage getsystime:values input 0 1
function getsystime:convert
execute store result score $Hour GetSysTime run scoreboard players operation #digit GetSysTime *= #10 GetSysTime
data modify storage getsystime:values temp set string storage getsystime:values input 1 2
function getsystime:convert
scoreboard players operation $Hour GetSysTime += #digit GetSysTime

#Get minute
data modify storage getsystime:values temp set string storage getsystime:values input 3 4
function getsystime:convert
execute store result score $Minute GetSysTime run scoreboard players operation #digit GetSysTime *= #10 GetSysTime
data modify storage getsystime:values temp set string storage getsystime:values input 4 5
function getsystime:convert
scoreboard players operation $Minute GetSysTime += #digit GetSysTime

# Get second
data modify storage getsystime:values temp set string storage getsystime:values input 6 7
function getsystime:convert
execute store result score $Second GetSysTime run scoreboard players operation #digit GetSysTime *= #10 GetSysTime
data modify storage getsystime:values temp set string storage getsystime:values input 7 8
function getsystime:convert
scoreboard players operation $Second GetSysTime += #digit GetSysTime