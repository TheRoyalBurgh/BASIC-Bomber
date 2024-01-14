10 BORDER 0: PAPER 0: INK 7: CLS
  20 PRINT AT 0,0;"CHOOSE GAME"
  30 PRINT AT 3,0;"1  - BOMBER"
  40 PRINT AT 5,0;"2 - CAR CRASH"
  50 PRINT AT 7,0;"3 - MAZE"
  60 PLOT 0,0: DRAW 250,0: DRAW 0,175
  70 PLOT 0,10: DRAW 250,0: DRAW 0,165: PLOT 240,0: DRAW 0,175
  80 IF INKEY$= "1" THEN GO TO 120
  90 IF INKEY$= "2" THEN GO TO 370
 100 IF INKEY$= "3" THEN GO TO 510
 110 GO TO 70
 120 CLS
 130 PRINT AT 20,12;"████"
 140 PRINT AT 19,12;" █ "
 150 FOR F=0 TO 22
 160 PRINT AT 0,F;"██▄"
 170 PAUSE 9
 180 IF INKEY$=" " THEN GO TO 220
 190 PRINT AT 0,F;"   "
 200 NEXT F
 210 GO TO 130
 220 FOR X=1 TO 19
 230 PRINT AT X,F;"▝"
 240 PAUSE 8
 250 PRINT AT X,F;" "
 260 NEXT X
 270 LET rand=RND*4
 280 IF F=11 THEN FOR N=30 TO 50: INK 5: PLOT 100,RND*N: PLOT 100,RND*N: PLOT 101,RND*N+1: PLOT 109,RND*N+9: PLOT 105,RND*N+20 : NEXT N
 290 IF F=12 THEN FOR N=30 TO 50: INK 5: PLOT 100,RND*N: PLOT 106,RND*N+1: PLOT 101,RND*N+4: PLOT 103,RND*N+9 : NEXT N: PRINT AT 2,0;"HIT"
 300 IF F=13 THEN FOR N=30 TO 50: INK 5: PLOT 100,RND*N: PLOT 100,RND*N: PLOT 101,RND*N+1 : NEXT N
 310 IF F=14 THEN FOR N=30 TO 50: INK 5: PLOT 115,RND*N: PLOT 118,RND*N: PLOT 120,RND*N+1 : NEXT N
 320 IF F=15 THEN FOR N=30 TO 50: INK 5: PLOT 120,RND*N: PLOT 118,RND*N: PLOT 121,RND*N+9 : NEXT N
 330 IF  F<10 OR F>14 THEN PRINT AT 2,0;"MISS": FOR X=20 TO 1 STEP -1: PRINT AT X,rand;"▄" : PAUSE 5: PRINT AT X,rand;" ": NEXT X
 340 IF rand =F THEN PRINT AT 4,0;"YOURE DEAD": PRINT AT 0,F;"      "
 350 PAUSE 100
 360 GO TO 10
 370 CLS
 380 BORDER 0: PAPER 0: INK 7: CLS
 390 FOR F=0 TO 60 STEP 3: PLOT 0,F: DRAW 230,0: NEXT F: FOR F=0 TO 230 STEP 3: PLOT F,0: DRAW 0,60: NEXT F
 400 LET R=RND
 410 FOR F=20 TO 0 STEP -1
 420 IF INKEY$="P" THEN LET R=R-1: PRINT AT R,0;"█▖": PRINT AT R+1,0;"  "
 430 IF INKEY$="L" THEN LET R=R+1: PRINT AT R,0;"█▖": PRINT AT R-1,0;"  "
 440 LET X=RND*2
 450 PRINT AT X,F;"▄█"
 460 PAUSE 330
 470 PRINT AT X,F;"  "
 480 IF F=1 AND R=X THEN PRINT "OH DEAR"
 490 NEXT F
 500 GO TO 10
 510 REM MAZE
 520 REM
 530 REM
 540 REM
 550 BORDER 7: INK 0: PAPER 7: CLS
 560 PRINT "WELCOME TO THE MAZE"
 570 PRINT AT 3,0;"KEYS ARE"
 580 PRINT AT 5,0;"Q - LEFT"
 590 PRINT AT 7,0;"W - RIGHT"
 600 PRINT AT 9,0;"L - DOWN"
 610 PRINT AT 11,0;"P - UP"
 620 PRINT AT 13,0;"S - TO START"
 630 PRINT AT 16,0;"* - THIS IS YOU"
 640 PRINT AT 18,0;"# - THIS IS EXIT"
 650 PRINT AT 20,0;"MONSTER IS HIDDEN"
 660 IF INKEY$="S" THEN GO TO 680
 670 GO TO 660
 680 LET LEVEL =1
 690 LET DEXIT =INT (RND*18)
 700 IF DEXIT =0 THEN GO TO 690
 710 LET REXIT =INT (RND*28)
 720 IF REXIT=0 THEN GO TO 710
 730 LET MED=2
 740 LET MODD=INT (RND*18)
 750 IF MODD  =0 THEN GO TO 740
 760 LET MOR= INT (RND*29)
 770 IF MOR  =0 THEN GO TO 740
 780 LET MER=2
 790 CLS : BORDER 0: PAPER 0: INK 7: CLS
 800 PRINT AT 0,0;"█████████████████████████████████"
 810 PRINT AT 21,0;"████████████████████████████████"
 820 FOR F=0 TO 20: PRINT AT F,0;"█": PRINT AT F,31;"█": PRINT AT RND*20,RND*30;"█": NEXT F
 830 PRINT AT MODD,MOR;" "
 840 LET A=30
 850 LET AB=0
 860 LET ABC=21
 870 PRINT AT MED,MER;"*"
 880 PRINT AT DEXIT,REXIT;"#"
 890 IF INKEY$="L" THEN LET MED=MED+1: PRINT AT MED-1,MER;" ": PRINT AT MED,MER;"*"
 900 IF INKEY$="P" THEN LET MED=MED-1: PRINT AT MED+1,MER;" ": PRINT AT MED,MER;"*"
 910 IF INKEY$="W" THEN LET MER=MER+1: PRINT AT MED,MER-1;" ": PRINT AT MED,MER;"*"
 920 IF INKEY$="Q" THEN LET MER=MER-1: PRINT AT MED,MER+1;" ": PRINT AT MED,MER;"*"
 930 IF A=MER-1 THEN PRINT AT 21,0;"CANT GO ANY FURTHER RIGHT": PRINT AT MED,MER;" ": LET MER =MER-1:
 940 IF AB=MER-1 THEN PRINT AT MED,MER;" ": LET MER =MER-1:
 950 IF MER=MOR AND  MED=MODD THEN CLS : PRINT AT 10,0;"YOU ARE DEAD": PLOT 100,30: DRAW 0,50: DRAW 35,5, -PI : DRAW 0,-56: DRAW -35,0: PAUSE 1: PRINT AT 12,13;"RIP":: FOR F=67 TO 35 STEP -4: PLOT 103,F: DRAW RND*26,1,PI/7 : NEXT F: PAUSE 150: CLS : GO TO 550
 960 IF REXIT=MER AND  DEXIT=MED THEN CLS : PRINT AT 10,0;"YOU HAVE FOUND EXIT": PRINT AT 12,0;"NEW MAZE" : PAUSE 100: CLS : FOR X=100 TO 170: PLOT X,0 : DRAW 0,100:: NEXT X: INK 0: FOR F=0 TO 1: CIRCLE 105,50,F: NEXT F: INK 7: PRINT "DOOR FOR NEXT LEVEL": PAUSE 50: INK 0: FOR X=100 TO 170: PLOT X,0: DRAW 0,100: NEXT X: PAUSE 20: INK 7: : LET LEVEL=LEVEL+1: PAUSE 200: GO TO 690
 970 GO TO 830
 980 REM
 990 REM
1000 REM FOOTBALL
1180 CLS