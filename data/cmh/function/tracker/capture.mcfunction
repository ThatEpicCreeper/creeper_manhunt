execute store result storage cmh:tracker x int 1 run data get entity @a[team=runners,gamemode=!spectator,sort=nearest,limit=1] Pos[0] 1
execute store result storage cmh:tracker y int 1 run data get entity @a[team=runners,gamemode=!spectator,sort=nearest,limit=1] Pos[1] 1
execute store result storage cmh:tracker z int 1 run data get entity @a[team=runners,gamemode=!spectator,sort=nearest,limit=1] Pos[2] 1

execute if dimension minecraft:overworld run data modify storage cmh:tracker dimension set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage cmh:tracker dimension set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage cmh:tracker dimension set value "minecraft:the_end"