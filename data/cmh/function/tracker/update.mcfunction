execute if entity @a[team=runners,gamemode=!spectator,sort=nearest,limit=1] run function cmh:tracker/capture

execute if entity @a[team=runners,gamemode=!spectator,sort=nearest,limit=1] if items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run function cmh:tracker/apply_main with storage cmh:tracker

execute if entity @a[team=runners,gamemode=!spectator,sort=nearest,limit=1] if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run function cmh:tracker/apply_offhand with storage cmh:tracker