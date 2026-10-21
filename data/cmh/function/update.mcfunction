
# Only update if at least one eligible runner is in this dimension.
execute if entity @a[team=runners,gamemode=!spectator,sort=nearest,limit=1] run function cmh:tracker/capture

# Update whichever hand contains the tracker.
execute if items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run function cmh:apply_main
execute if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data={cmh_runner_tracker:1b}] run function cmh:apply_offhand
