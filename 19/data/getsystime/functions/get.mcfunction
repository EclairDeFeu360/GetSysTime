# Detect if the system is broken
execute unless entity 0e2f3600-0001-0001-0001-000e2f360000 run tellraw @s [{"text":"/!\\ No setup please do ","color":"dark_red"},{"text":"/function getsystime:set","clickEvent":{"action":"run_command","value":"/function getsystime:set"},"hoverEvent": {"action":"show_text","contents": {"text": "Click to use","color": "yellow"}}},{"text":" /!\\"}]
execute at 0e2f3600-0001-0001-0001-000e2f360000 unless block ~ ~ ~ repeating_command_block run tellraw @s [{"text":"/!\\ Broken systeme detected! Please do ","color":"dark_red"},{"text":"/function getsystime:set","clickEvent":{"action":"run_command","value":"/function getsystime:set"},"hoverEvent": {"action":"show_text","contents": {"text": "Click to use","color": "yellow"}}},{"text":" /!\\"}]

# Get time
execute at 0e2f3600-0001-0001-0001-000e2f360000 run data modify storage getsystime:values input set string block ~ ~ ~ LastOutput 10 18

# Get hour
data modify storage getsystime:values time.hour set string storage getsystime:values input 0 2

# Get minute
data modify storage getsystime:values time.minute set string storage getsystime:values input 3 5

# Get second
data modify storage getsystime:values time.second set string storage getsystime:values input 6 8

# Set time
function getsystime:convert with storage getsystime:values time