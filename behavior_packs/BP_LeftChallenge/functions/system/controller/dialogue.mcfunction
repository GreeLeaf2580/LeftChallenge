# ===== 剧情线控制器 =====
# <!> 注意：该函数仅当剧情线启用后执行

# --- 计时 ---
scoreboard players add dialogue time 1

# --- 锁定相机视角对话 ---
# 当active.dialogue为6-10的启用状态，锁定视角
execute if score dialogue active matches 6..10 as @a at @e[name=playerPosition] facing entity @e[name=facingPosition] feet run tp @s ~~~~~

# --- 需要启用的剧情线文件 ---

