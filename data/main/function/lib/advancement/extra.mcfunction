execute at @s run playsound block.vault.eject_item player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#FF9944",bold:true},{translate:"ms.info.extra_unlock",fallback:"新装饰品解锁！按 [%s] 并在装饰品页签中查看",with:[{keybind:"key.advancements"}],bold:false}]