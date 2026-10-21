
effect give @a minecraft:regeneration 5 10 true
effect give @a minecraft:resistance 5 10 true
effect give @a minecraft:fire_resistance 5 10 true
effect give @a minecraft:saturation 5 10 true
execute as @a run damage @s 1 minecraft:out_of_world
effect give @a minecraft:saturation 5 10 true
effect give @a minecraft:weakness 5 10 true
effect give @a minecraft:mining_fatigue 5 10 true
time set 0
execute as @a[team=spec] at @s run gamemode spectator @s
execute as @r[team=runner] at @s run spawnpoint @a ~ ~ ~
execute as @r[team=runner] at @s run setworldspawn ~ ~ ~

xp set @a 0 levels
xp set @a 0 points

scoreboard players enable @a getCompass

scoreboard players set @a runnerID -1
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 0
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 1
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 2
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 3
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 4
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 5
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 6
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 7
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 8
scoreboard players set @r[team=runner,scores={runnerID=..-1}] runnerID 9

# initialise scoreboards
execute store result score dummy runnersAlive run team list runners
scoreboard players set @a trackingRunner 0

scoreboard players set dummy inGame 1
scoreboard players set dummy countdown 101
