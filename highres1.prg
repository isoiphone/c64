1 rem from c64 reference guide 4th ed
2 rem pg 123+
5 base=2*4096:poke53272,peek(53272)or8
10 poke53265,peek(53265)or32
20 fori=basetobase+7999:pokei,0:next
30 fori=1024to2023:pokei,3:next
50 forx=0to319step.5
60 y=int(90+80*sin(x/10))
70 ch=int(x/8)
80 ro=int(y/8)
85 ln=yand7
90 by=base+ro*320+8*ch+ln
100 bi=7-(xand7)
110 pokeby,peek(by)or(2^bi)
120 nextx
125 poke1024,16
130 goto130
