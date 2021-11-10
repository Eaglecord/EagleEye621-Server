

tp @s -96 40 224 ~ 0
gamemode adventure @s
effect give @s invisibility 10 0 true

execute unless score @s NewPlayer matches 702.. run scoreboard players add @s NewPlayer 1
execute if score @s NewPlayer matches 701.. if score @s Accept_Rules matches 1.. run function server:newplayer/accept_rules

execute if score @s NewPlayer matches 1 run tellraw @s [{"text":"\n\n\n---RULES---\n\n\n","color": "gray","bold": true}]
execute if score @s NewPlayer matches 1 run tellraw @s [{"text":"1. Treat others with respect.\n","bold": true,"color":"gray"},{"text":"There’s no need to say or do things to make others feel bad or upset.\n","bold": false,"color":"gray"}]

execute if score @s NewPlayer matches 101 run tellraw @s [{"text":"2. Offensive content is not allowed.\n","bold": true,"color":"gray"},{"text":"While some minor amount of swearing is allowed, severe or frequent vulgarity, especially when directed at others, is not. Offensive item/mob names, skins, minecraft structures and usernames are not allowed.\n","bold": false,"color":"gray"}]

execute if score @s NewPlayer matches 201 run tellraw @s [{"text":"3. Spamming is not allowed.\n","bold": true,"color":"gray"},{"text":"Spamming is filling chat with multiple unneeded characters or messages. Don't do it.\n","bold": false,"color":"gray"}]

execute if score @s NewPlayer matches 301 run tellraw @s [{"text":"4. Cheating or hacking is not allowed.\n","bold": true,"color":"gray"},{"text":"Cheating in any form is not allowed. Anything that would give you an unfair advantage over other players is considered cheating. You will be provided a list of mods that are allowed. Ask a moderator first if a mod you wish to use is not on the list.\n","bold": false,"color":"gray"}]

execute if score @s NewPlayer matches 401 run tellraw @s [{"text":"5. Griefing is not allowed.\n","bold": true,"color":"gray"},{"text":"Griefing is considered destroying or changing another player’s property or buildings without their consent. Don’t do it.\n","bold": false,"color":"gray"}]

execute if score @s NewPlayer matches 501 run tellraw @s [{"text":"6. Stealing is not allowed.\n","bold": true,"color":"gray"},{"text":"Stealing is considered taking items from another player's property or chests without their consent. Don't do it.\n","bold": false,"color":"gray"}]

execute if score @s NewPlayer matches 601 run tellraw @s [{"text":"7. Don't make the server unplayable for others.\n","color": "gray","bold": true},{"text":"Don't intentionally lag or ruin the server experience for others.\n", "color": "gray", "bold": false}]

execute if score @s NewPlayer matches 701 run scoreboard players enable @s Accept_Rules
execute if score @s NewPlayer matches 701 run tellraw @s [{"text":"Accept the rules by typing ","color": "gray"},{"text":"/trigger Accept_Rules ", "color": "white"},{"text":"in chat.","color": "gray"}]