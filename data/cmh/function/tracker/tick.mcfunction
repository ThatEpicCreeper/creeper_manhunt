execute as @a[team=hunters] at @s if items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run function cmh:tracker/update
execute as @a[team=hunters] at @s if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run function cmh:tracker/update

execute as @a at @s run execute store result score @s dimension run data get entity @s Dimension 1

execute as @a[team=hunters] run scoreboard players set @s sameDim 0
execute as @a[team=hunters] at @s if dimension minecraft:overworld if entity @a[team=runners,gamemode=!spectator] run scoreboard players set @s sameDim 1
execute as @a[team=hunters] at @s if dimension minecraft:the_nether if entity @a[team=runners,gamemode=!spectator] run scoreboard players set @s sameDim 1
execute as @a[team=hunters] at @s if dimension minecraft:the_end if entity @a[team=runners,gamemode=!spectator] run scoreboard players set @s sameDim 1

execute as @a[team=hunters] if dimension minecraft:overworld if entity @a[team=runners,gamemode=!spectator] run scoreboard players set @s sameDim 1
execute as @a[team=hunters] if dimension minecraft:the_nether if entity @a[team=runners,gamemode=!spectator] run scoreboard players set @s sameDim 1
execute as @a[team=hunters] if dimension minecraft:the_end if entity @a[team=runners,gamemode=!spectator] run scoreboard players set @s sameDim 1

execute as @a[team=hunters,scores={sameDim=0}] run title @s actionbar {"text":"No runners in your dimension!","color":"red"}

