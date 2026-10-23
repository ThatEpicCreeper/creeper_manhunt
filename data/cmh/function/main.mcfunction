
# create teams and scoreboards
function cmh:create_teams_sbs

# runner tracking
function cmh:runner_tracking

# game start logic
function cmh:game_start

# compass logic
function cmh:tracker/tick

# death give compass
execute as @a[scores={onDeath=1..}] at @s run function cmh:give_self_compass
execute as @a[scores={onDeath=1..},team=runners] run scoreboard players remove dummy runnersAlive 1
execute as @a[scores={onDeath=1..},team=runners] run gamemode spectator @s
execute as @a[scores={onDeath=1..}] run scoreboard players set @s onDeath 0

# trigger compass
execute as @a[scores={getCompass=1..}] at @s run function cmh:give_self_compass
execute as @a[scores={getCompass=1..}] run scoreboard players set @s getCompass 0
scoreboard players enable @a getCompass

# end game
execute if score dummy inGame matches 1 run execute if score dummy runnersAlive matches 0 run function cmh:end_game
