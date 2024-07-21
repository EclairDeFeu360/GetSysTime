gamerule sendCommandFeedback true

execute at 0e2f3600-0001-0001-0001-000e2f360000 run setblock ~ ~ ~ air
kill 0e2f3600-0001-0001-0001-000e2f360000

setblock ~ ~ ~ repeating_command_block[conditional=false,facing=up]{auto: 1b, Command: "help me", TrackOutput: 1b, CustomName: '"GetSysTime"'}
execute align xyz run summon marker ~.5 ~.5 ~.5 {UUID: [I; 237975040, 65537, 65550, 792068096]}