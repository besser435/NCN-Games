# initial
execute if entity @a[x=-43,y=129,z=-122,dx=6,dy=3,dz=6] positioned ~0 ~1 ~0 run setblock ~ ~1 ~ minecraft:redstone_block
execute if entity @a[x=-43,y=129,z=-122, dx=37,dy=133,dz=-128] positioned ~0 ~1 ~0 run setblock ~ ~1 ~ minecraft:redstone_block



# working
execute as @a[x=-43,y=129,z=-122,dx=6,dy=5,dz=-6] run setblock ~ ~2 ~ minecraft:redstone_block
execute if entity @a[x=-43,y=129,z=-122,dx=6,dy=5,dz=-6] run setblock ~ ~2 ~ minecraft:redstone_block




# testing
# MUST FACE NORTH
/execute if entity @a[x=@s[y=~2],y=@s[y=~2],z=@s[z=~6],dx=6,dy=5,dz=-6] run setblock ~ ~2 ~ minecraft:redstone_block