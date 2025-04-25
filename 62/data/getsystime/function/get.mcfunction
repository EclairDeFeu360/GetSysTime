# Detect if the system is broken
execute unless entity 0e2f3600-0001-0001-0001-000e2f360000 run tellraw @s [{"text":"/!\\ No setup please do ","color":"dark_red"},{"text":"/function getsystime:set","click_event":{"action":"run_command","command":"/function getsystime:set"},"hover_event": {"action":"show_text","value": {"text": "Click to use","color": "yellow"}}},{"text":" /!\\"}]
execute at 0e2f3600-0001-0001-0001-000e2f360000 unless block ~ ~ ~ repeating_command_block run tellraw @s [{"text":"/!\\ Broken systeme detected! Please do ","color":"dark_red"},{"text":"/function getsystime:set","click_event":{"action":"run_command","command":"/function getsystime:set"},"hover_event": {"action":"show_text","value": {"text": "Click to use","color": "yellow"}}},{"text":" /!\\"}]

# Get time
execute at 0e2f3600-0001-0001-0001-000e2f360000 run data modify storage getsystime:values input set from block ~ ~ ~ LastOutput.text

# Get hour
data modify storage getsystime:values time.hour set string storage getsystime:values input 1 3

# Get minute
data modify storage getsystime:values time.minute set string storage getsystime:values input 4 6

# Get second
data modify storage getsystime:values time.second set string storage getsystime:values input 7 9

# Set time
function getsystime:convert with storage getsystime:values time