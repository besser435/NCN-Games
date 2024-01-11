# NOTE: Not running this as a function/datapack, as I had numerous issues. It
# can also obsure error messages. Consider this file just a notepad of 
# the commands to run on the command blocks in the world.
#
#
# Remove blocks if no players
execute positioned ~ ~1 ~ if entity @a[dx=5,dy=3,dz=5] run setblock ~ ~-8 ~ minecraft:air
execute positioned ~ ~2 ~ if entity @a[dx=5,dy=3,dz=5] run fill ~ ~ ~ ~6 ~ ~6 minecraft:stone
#
# Set blocks if players
# Current settings for a 7x7x4 capture point, assuming the CMD block is 2 blocks below the surface in the center
# Set the origin to the bottom left, set the BB size, then place redstone and set floor pattern
execute positioned ~ ~1 ~ if entity @a[dx=5,dy=3,dz=5] run setblock ~ ~-8 ~ minecraft:redstone_block
execute positioned ~ ~2 ~ if entity @a[dx=5,dy=3,dz=5] run fill ~ ~ ~ ~6 ~ ~6 minecraft:red_concrete