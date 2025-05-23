# ===== 时间线控制器 =====
# 该函数仅当时间线启用后执行

# --- 需要启用的时间线文件 ---
# execute if ... run function ... // 当时间线启用后按照特定条件执行


# 1-5：启用并时间流逝
execute if score timeline active matches 1..5 run scoreboard players add timeline time 1

# --- 时间线函数文件列表 ---
execute as @a[scores={chapter=0,section=0}] at @s if entity @a[scores={chapter=0,section=0},r=1,rm=0.01] run effect @s invisibility 1 0 true

execute as @a[scores={chapter=0,section=0}] at @s if entity @a[scores={chapter=0,section=0},r=1,rm=0.01] run replaceitem entity @s[hasitem={item=chainmail_boots,location=slot.armor.feet,quantity=0}] slot.armor.feet 0 chainmail_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

execute as @a[scores={chapter=0,section=0}]  at @s if entity @a[rm=1,scores={chapter=0,section=0}] run effect @s invisibility 0 2 true
execute as @a[scores={chapter=0,section=0}]  at @s if entity @a[rm=1,scores={chapter=0,section=0}] run replaceitem entity @s slot.armor.feet 0 air

# execute as @a at @s run fill ~-15 ~-10 ~-15   ~15 ~10 ~15 minecraft:white_concrete replace minecraft:cyan_terracotta
# execute as @a at @s run fill ~-15 ~-10 ~-15   ~15 ~10 ~15 minecraft:white_concrete replace brown_mushroom_block ["huge_mushroom_bits"=15]



execute if entity @a[scores={chapter=0,section=0}] run function hall/entrance/timeline

execute if entity @a[scores={chapter=0,section=1}] run function levels/01/timeline
execute if entity @a[scores={chapter=1,section=1}] run function levels/11/timeline
execute if entity @a[scores={chapter=1,section=2}] run function levels/12/timeline
execute if entity @a[scores={chapter=1,section=3}] run function levels/13/timeline
execute if entity @a[scores={chapter=1,section=4}] run function levels/14/timeline
execute if entity @a[scores={chapter=1,section=5}] run function levels/15/timeline