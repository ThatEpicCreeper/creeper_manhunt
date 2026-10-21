
effect give @a minecraft:regeneration 5 10 true
effect give @a minecraft:resistance 5 10 true
effect give @a minecraft:fire_resistance 5 10 true
effect give @a minecraft:saturation 5 10 true
execute as @a run damage @s 1 minecraft:out_of_world
effect give @a minecraft:saturation 5 10 true
time set 0

scoreboard players set dummy inGame 1
scoreboard players set dummy countdown 101
