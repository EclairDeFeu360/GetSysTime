# Inspired by AmberW's "NBT string to scoreboard number reader" on the MCC Discord server.
data modify storage getsystime:values digit_str_array set value ["9", "8", "8", "7", "7", "7", "6", "6", "6", "6", "5", "5", "5", "5", "5", "4", "4", "4", "4", "4", "4", "3", "3", "3", "3", "3", "3", "3", "2", "2", "2", "2", "2", "2", "2", "2", "1", "1", "1", "1", "1", "1", "1", "1", "1", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]

execute store result score #digit GetSysTime run data modify storage getsystime:values digit_str_array[] set from storage getsystime:values temp

scoreboard players remove #digit GetSysTime 45