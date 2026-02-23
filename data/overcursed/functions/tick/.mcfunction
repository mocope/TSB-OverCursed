#> overcursed:tick/
#
# 
#
# @within tag/function minecraft:tick

# first login
    execute as @a[tag=!OverCursedLogin0.0.0] at @s run function overcursed:login/

# void room
    function overcursed:the_void/tick/
