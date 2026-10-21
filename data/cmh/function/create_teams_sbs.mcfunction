
# create relevant scoreboards
scoreboard objectives add runnersAlive dummy
scoreboard objectives add runnersHeadStart dummy
scoreboard objectives add headStartLeft dummy
scoreboard objectives add onDeath deathCount
scoreboard objectives add getCompass trigger
scoreboard objectives add specRunnerHP health
scoreboard objectives add trackingRunner dummy
scoreboard objectives add countdown dummy
scoreboard objectives add inGame dummy
scoreboard objectives add dimension dummy
scoreboard objectives add runnerID dummy
scoreboard objectives add useCompass minecraft.used:minecraft.compass
scoreboard objectives add manhunt-options trigger

# create teams
team add hunters
team add runners
team add spec

team modify hunters color red
team modify runners color aqua
team modify spec color gray

team modify hunters seeFriendlyInvisibles true
team modify runners seeFriendlyInvisibles true
team modify spec seeFriendlyInvisibles true

team modify hunters friendlyFire true
team modify runners friendlyFire true
team modify spec friendlyFire true

team modify hunters prefix {"text":"[Hunter \ud83d\udde1] ","color":"red"}
team modify runners prefix {"text":"[Runner \ud83c\udfc3] ","color":"aqua"}
team modify spec prefix {"text":"[Spectator \ud83d\udc41] ","color":"gray"}