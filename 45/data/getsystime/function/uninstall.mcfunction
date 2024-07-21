execute at 0e2f3600-0001-0001-0001-000e2f360000 run setblock ~ ~ ~ air
kill 0e2f3600-0001-0001-0001-000e2f360000
scoreboard objectives remove GetSysTime
data remove storage getsystime:values digit_str_array
data remove storage getsystime:values input
data remove storage getsystime:values temp
data remove storage getsystime:values time
datapack disable "file/get-systime.zip"