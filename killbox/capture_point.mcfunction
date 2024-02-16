# Execute as: function capture_point:capture_point
#
# Remove blocks if no players
execute positioned ~ ~2 ~ unless entity @a[dx=5,dy=3,dz=5] run setblock ~ ~-4 ~ minecraft:air
execute positioned ~ ~2 ~ unless entity @a[dx=5,dy=3,dz=5] run fill ~ ~ ~ ~6 ~ ~6 minecraft:stone
#
# Set blocks if players
# Current settings for a 7x7x4 capture point, assuming the CMD block is 2 blocks below the surface in the center
# Set the origin to the bottom left, set the BB size, then place redstone and set floor pattern
execute positioned ~ ~2 ~ if entity @a[dx=5,dy=3,dz=5] run setblock ~ ~-4 ~ minecraft:redstone_block
execute positioned ~ ~2 ~ if entity @a[dx=5,dy=3,dz=5] run fill ~ ~ ~ ~6 ~ ~6 minecraft:red_concrete
#
#
# In game CMD block commands:
# function ncn_killbox:capture_point
# tellraw @a {"text":"Team ","color":"white","extra":[{"text":"Red","color":"red"}," is under attack!"]}s
    