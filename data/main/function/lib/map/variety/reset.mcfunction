# 地图内变量
execute if score $map data matches 1 run fill 1183 13 1137 1197 13 1123 bone_block replace pearlescent_froglight
execute if score $map data matches 2 run fill 1049 41 -999 1053 41 -995 red_candle[lit=false] replace red_candle
execute if score $map data matches 3 run fill -870 20 1100 -868 20 1098 obsidian replace crying_obsidian
execute if score $map data matches 4 run fill 1980 80 2101 2000 80 2101 air
execute if score $map data matches 4 run fill 2002 80 2101 2005 80 2101 air

# 修复地图内“变量”
execute if score $map data matches 3 run clone -827 9 1199 -850 17 1221 -814 30 1204 strict
execute if score $map data matches 3 run clone -853 9 1211 -862 11 1221 -822 30 1193 strict
execute if score $map data matches 3 run clone -827 9 1186 -859 14 1196 -815 27 1181 strict
execute if score $map data matches 3 run clone -865 9 1207 -878 12 1221 -782 27 1080 strict
execute if score $map data matches 3 run clone -862 9 1186 -877 10 1204 -852 13 1131 strict
execute if score $map data matches 3 run clone -867 15 1192 -877 16 1204 -867 21 1121 strict
execute if score $map data matches 3 run clone -853 9 1200 -859 11 1207 -871 45 1069 strict
execute if score $map data matches 3 run clone -853 14 1210 -862 17 1221 -702 50 1162 strict