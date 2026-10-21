
execute if score dummy countdown matches -10.. run scoreboard players remove dummy countdown 1

execute if score dummy inGame matches 1 run execute if score dummy countdown matches 60.. run title @a times 0 21 1
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 100 run title @a title {"text":"5","bold":true,"color":"green"}
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 80 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 80 run title @a title {"text":"4","bold":true,"color":"green"}
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 60 run title @a title {"text":"3","bold":true,"color":"green"}
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5 
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 40 run title @a title {"text":"2","bold":true,"color":"yellow"}
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 20 run title @a title {"text":"1","bold":true,"color":"red"}
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 0 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 0 run execute as @a at @s run execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 0.6
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 0 run effect give @a minecraft:saturation 1 10 true

execute if score dummy inGame matches 1 run execute if score dummy countdown matches 1.. run execute as @a[team=!spec] at @s run attribute @s minecraft:movement_speed modifier add begin -100 add_value
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 1.. run execute as @a[team=!spec] at @s run attribute @s minecraft:jump_strength modifier add begin -100 add_value
execute if score dummy inGame matches 1 run execute if score dummy countdown matches 1.. run execute as @a[team=!spec] at @s run gamemode adventure @s

execute if score dummy inGame matches 1 run execute unless score dummy countdown matches 1.. run execute as @a[team=!spec] at @s run gamemode survival @s
execute if score dummy inGame matches 1 run execute unless score dummy countdown matches 1.. run execute as @a[team=!spec] at @s run attribute @s minecraft:movement_speed modifier remove begin
execute if score dummy inGame matches 1 run execute unless score dummy countdown matches 1.. run execute as @a[team=!spec] at @s run attribute @s minecraft:jump_strength modifier remove begin
