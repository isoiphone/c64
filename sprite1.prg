10 rem sprite example 1
11 rem the hot air balloon
12 rem from c64 reference guide 4th ed
13 rem pg 146
30 vic=13*4096
35 pokevic+21,1
36 pokevic+33,14
37 pokevic+23,1
38 pokevic+29,1
40 poke2040,192
180 pokevic+0,100
190 pokevic+1,100
220 pokevic+39,1
250 fory=0to63
300 reada
310 poke192*64+y,a
320 nexty
330 dx=1:dy=1
340 x=peek(vic)
350 y=peek(vic+1)
360 ify=50ory=208thendy=-dy
380 ifx=24and(peek(vic+16)and1)=0thendx=-dx
400 ifx=40and(peek(vic+16)and1)=1thendx=-dx
420 ifx=255anddx=1thenx=-1:side=1
440 ifx=0anddx=-1thenx=256:side=0
460 x=x+dx
470 x=xand255
480 y=y+dy
485 pokevic+16,side
490 pokevic,x
510 pokevic+1,y
530 goto340
610 data0,127,0,1,255,192,3,255,224,3,231,224
620 data7,217,240,7,223,240,7,217,240,3,231,224
630 data3,255,224,3,255,224,2,255,160,1,127,64
640 data1,62,64,0,156,128,0,156,128,0,73,0,0,73,0
650 data0,62,0,0,62,0,0,62,0,0,28,0,0
