execute if score @s levitation matches 2 run effect @s levitation 2 0 true
execute if score @s levitation matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:02"] } ] }

execute if score @s levitation matches 1 run effect @s levitation 2 0 true
execute if score @s levitation matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:02"] } ] }