$execute if score @s temp matches 1.. run tag @a[tag=pending,distance=..$(heed)] add heed
$execute if score @s temp2 matches 1.. run tag @a[tag=pending,distance=..$(warn),team=!guardian] add warn

# 判定：处于气息探测范围内时
$execute if entity @a[team=soul,scores={talent_1=8},tag=pending,tag=interact_purple,tag=interacting,distance=..$(warn)] run effect give @s glowing 1 0
$execute if entity @a[team=soul,scores={talent_2=8},tag=pending,tag=interact_purple,tag=interacting,distance=..$(warn)] run effect give @s glowing 1 0