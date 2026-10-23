execute as @a[team=hunters] at @s if items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run function cmh:tracker/update
execute as @a[team=hunters] at @s if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run function cmh:tracker/update

execute as @a at @s run execute store result score @s dimension run data get entity @s Dimension 1

execute as @a[team=hunters] run scoreboard players set @s sameDim 0
execute as @a[team=hunters] at @s run execute if entity @a[team=runners,gamemode=!spectator,distance=0..] run scoreboard players set @s sameDim 1

execute if score dummy inGame matches 1.. run execute as @a[team=hunters,scores={sameDim=0}] at @s run title @s actionbar {"text":"No runners in your dimension!","color":"red"}
execute if score dummy inGame matches 1.. run execute as @a[team=hunters,scores={sameDim=1..}] at @s run title @s actionbar {"text":"","color":"red"}

execute as @a[team=hunters] at @s if items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run execute as @s[team=hunters,scores={sameDim=1..}] at @s run function cmh:tracker/update
execute as @a[team=hunters] at @s if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run execute as @s[team=hunters,scores={sameDim=1..}] at @s run function cmh:tracker/update

# spec same dim display
execute as @a[team=spec] run scoreboard players set @s sameDim 0
execute as @a[team=spec] at @s run execute if entity @a[team=runners,gamemode=!spectator,distance=0..] run scoreboard players set @s sameDim 1

execute if score dummy inGame matches 1.. run execute as @a[team=spec,scores={sameDim=0}] at @s run title @s actionbar {"text":"No runners in your dimension!","color":"red"}
execute if score dummy inGame matches 1.. run execute as @a[team=spec,scores={sameDim=1..}] at @s run title @s actionbar ["",{"selector":"@p[team=runners]","bold":true,"color":"aqua"},{"text":": ","bold":true,"color":"aqua"},{"score":{"name":"@p[team=runners]","objective":"specRunnerHP"},"bold":true,"color":"red"},{"text":"\u2665","bold":false,"color":"red"}]

