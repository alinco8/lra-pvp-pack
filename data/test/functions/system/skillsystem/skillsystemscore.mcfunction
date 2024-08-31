#クールタイム減少
scoreboard players remove @a[scores={cooltime=1..}] cooltime 1
#つたの枯れる時間減少
scoreboard players remove @e[tag=tuta_pos,scores={tutatime=0..}] tutatime 1

scoreboard players set @a stand 1
scoreboard players set @a[scores={sneak=1..}] stand 0

#honoukaihiscoreクリア
scoreboard players remove @a[scores={honoukaihi=1..},tag=honou] honoukaihi 1
#actiontimeスコア カウントダウン
scoreboard players remove @e[tag=!noremove,scores={actiontime=0..}] actiontime 1

scoreboard players remove @a[scores={effecttime=1..}] effecttime 1

scoreboard players add @a[scores={running=1..}] runcount 1

function test:skill/battou/battouscore