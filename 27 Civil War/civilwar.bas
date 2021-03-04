2 PRINT TAB(26) "CIVIL WAR"
4 PRINT TAB(15) "CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
6 PRINT : PRINT : PRINT
20 REM ORIGINAL GAME DESIGN: CRAM, GOODIE, HIBBARD LEXINGTON H.S.
30 REM MODIFICATIONS: G. PAUL, R. HESS (TIES), 1973
50  DIM S(4),C$(14),M1(14),M2(14),C1(14),C2(14),M(14)
60  REM UNION INFO ON LIKELY CONFEDERATE STRATEGY
70  S(1)=25 : S(2)=25 : S(3)=25 : S(4)=25
82  REM READ HISTORICAL DATA.
84  FOR D=1 TO 14
86  READ C$(D),M1(D),M2(D),C1(D),C2(D),M(D)
88  NEXT D
89  LET D=RND(-1)
90  PRINT
100  PRINT "DO YOU WANT INSTRUCTIONS";
110  INPUT X$
120  IF X$="YES" THEN 160
130  IF X$="NO" THEN 370
140  PRINT "YES OR NO -- ";
150  GOTO 110
160  PRINT : PRINT : PRINT : PRINT
170  PRINT "THIS IS A CIVIL WAR SIMULATION."
180  PRINT "TO PLAY TYPE A RESPONSE WHEN THE COMPUTER ASKS."
190  PRINT "REMEMBER THAT ALL FACTORS ARE INTERRELATED AND THAT YOUR"
200  PRINT "RESPONSES COULD CHANGE HISTORY. FACTS AND FIGURES USED ARE"
210  PRINT "BASED ON THE ACTUAL OCCURRENCE. MOST BATTLES TEND TO RESULT"
220  PRINT "AS THEY DID IN THE CIVIL WAR, BUT IT ALL DEPENDS ON YOU!!"
230  PRINT
240  PRINT "THE OBJECT OF THE GAME IS TO WIN AS MANY BATTLES AS ";
245  PRINT "POSSIBLE."
250  PRINT
260  PRINT "YOUR CHOICES FOR DEFENSIVE STRATEGY ARE:"
270  PRINT "        (1) ARTILLERY ATTACK"
280  PRINT "        (2) FORTIFICATION AGAINST FRONTAL ATTACK"
290  PRINT "        (3) FORTIFICATION AGAINST FLANKING MANEUVERS"
300  PRINT "        (4) FALLING BACK"
310  PRINT " YOUR CHOICES FOR OFFENSIVE STRATEGY ARE:"
320  PRINT "        (1) ARTILLERY ATTACK"
330  PRINT "        (2) FRONTAL ATTACK"
340  PRINT "        (3) FLANKING MANEUVERS"
350  PRINT "        (4) ENCIRCLEMENT"
360  PRINT "YOU MAY SURRENDER BY TYPING A '5' FOR YOUR STRATEGY."
370  PRINT : PRINT : PRINT : PRINT "ARE THERE TWO GENERALS PRESENT ";
380  PRINT "(ANSWER YES OR NO)";
390  INPUT B$
400  IF B$="YES" THEN 430
410  IF B$ <> "NO" THEN 380
420  PRINT : PRINT "YOU ARE THE CONFEDERACY.   GOOD LUCK!"
425  PRINT
430  LET D=1
440  IF B$ <> "YES" THEN 460
450  LET D=2
460  PRINT "SELECT A BATTLE BY TYPING A NUMBER FROM 1 TO 14 ON"
470  PRINT "REQUEST.  TYPE ANY OTHER NUMBER TO END THE SIMULATION."
480  PRINT "BUT '0' BRINGS BACK EXACT PREVIOUS BATTLE SITUATION"
490  PRINT "ALLOWING YOU TO REPLAY IT"
500  PRINT
510  PRINT "NOTE: A NEGATIVE FOOD$ ENTRY CAUSES THE PROGRAM TO "
520  PRINT "USE THE ENTRIES FROM THE PREVIOUS BATTLE"
530  PRINT
540  PRINT "AFTER REQUESTING A BATTLE, DO YOU WISH ";
550  PRINT "BATTLE DESCRIPTIONS ";
560  PRINT "(ANSWER YES OR NO)";
570  INPUT X$
580  IF X$="YES" THEN 600
590  IF X$ <> "NO" THEN 560
600  L=0:W=0:R1=0:Q1=0:M3=0:M4=0:P1=0:P2=0:T1=0:T2=0
610  F(2)=0:H(2)=0:B(2)=0:R2=0:Q2=0:C6=0:F=0:W0=0:Y=0:Y2=0:U=0:U2=0
620  PRINT : PRINT : PRINT
630  PRINT "WHICH BATTLE DO YOU WISH TO SIMULATE";
640  INPUT A
650  IF A <> 0 THEN 660
655  IF R <> 0 THEN 1140
660  IF A <=0 THEN 2860
665  IF A >= 15 THEN 2860
670  LET C$=C$(A)
680  LET M1=M1(A)
690  LET M2=M2(A)
700  LET C1=C1(A)
710  LET C2=C2(A)
720  LET M=M(A)
960  LET U=0
970  REM  INFLATION CALC
980  LET I1=10+(L-W)*2
990  LET I2=10+(W-L)*2
1000  REM - MONEY AVAILABLE
1010  LET D(1)=100*INT((M1*(100-I1)/2000)*(1+(R1-Q1)/(R1+1))+.5)
1020  LET D(2)=100*INT(M2*(100-I2)/2000+.5)
1030  IF B$ <> "YES" THEN 1050
1040  LET D(2)=100*INT((M2*(100-I2)/2000)*(1+(R2-Q2)/(R2+1))+.5)
1050  REM - MEN   AVAILABLE
1060  LET M5=INT(M1*(1+(P1-T1)/(M3+1)))
1070  LET M6=INT(M2*(1+(P2-T2)/(M4+1)))
1080  LET F1=5*M1/6
1090  PRINT : PRINT : PRINT : PRINT : PRINT
1100  PRINT "THIS IS THE BATTLE OF ";C$
1110  IF X$="NO" THEN 1150
1120  IF A>11 THEN 1130
1125  ON A GOTO 3580,3620,3650,3690,3720,3750,3780,3800,3830,3860,3890
1130  ON A-11 GOTO 3920,3950,3980
1140  PRINT C$" INSTANT REPLAY"
1150  PRINT
1160  PRINT " ","CONFEDERACY"," UNION"
1170  PRINT "MEN"," "M5," "M6
1180  PRINT "MONEY","$";D(1),"$";D(2)
1190  PRINT "INFLATION"," ";I1+15;"%"," ";I2;"%"
1195  PRINT
1200  REM - ONLY IN PRINTOUT IS CONFED INFLATION = I1+15%
1210  REM - IF TWO GENERALS, INPUT CONFED. FIRST
1220  FOR I=1 TO D
1230  IF B$ <> "YES" THEN 1260
1240  IF I=2 THEN 1260
1250  PRINT "CONFEDERATE GENERAL---";
1260  PRINT "HOW MUCH DO YOU WISH TO SPEND FOR"
1270  PRINT " - FOOD......";
1280  INPUT F
1290  IF F >= 0 THEN 1360
1300  IF R1 <> 0 THEN 1330
1310  PRINT "NO PREVIOUS ENTRIES"
1320  GOTO 1270
1330  PRINT "ASSUME YOU WANT TO KEEP SAME ALLOCATIONS"
1340  PRINT
1350  GOTO 1510
1360  LET F(I)=F
1370  PRINT " - SALARIES..";
1380  INPUT H(I)
1390  LET N=1
1400  IF H(I)<0 THEN 1490
1410  PRINT " - AMMUNITION";
1420  INPUT B(I)
1430  LET N=2
1440  IF B(I)<0 THEN 1490
1450  PRINT
1460  IF F(I)+H(I)+B(I) <= D(I) THEN 1510
1470  PRINT "THINK AGAIN! YOU HAVE ONLY $"D(I)
1480  GOTO 1270
1490  PRINT "NEGATIVE VALUES NOT ALLOWED."
1500  ON N GOTO 1370,1410
1510  IF B$ <> "YES" THEN 1550
1520  IF I=2 THEN 1550
1530  PRINT "UNION GENERAL---";
1540  NEXT I
1550  FOR Z=1 TO D
1560  IF B$ <> "YES" THEN 1620
1570  ON Z GOTO 1580,1600
1580  PRINT "CONFEDERATE ";
1590  GOTO 1620
1600  PRINT "      UNION ";
1610  REM - FIND MORALE
1620  LET O=((2*F(Z)^2+H(Z)^2)/F1^2+1)
1630  IF O<10 THEN 1660
1640  PRINT "MORALE IS HIGH"
1650  GOTO 1700
1660  IF O<5 THEN 1690
1670  PRINT "MORALE IS FAIR"
1680  GOTO 1700
1690  PRINT "MORALE IS POOR"
1700  IF B$ <> "YES" THEN 1760
1710  LET O(Z)=O
1720  NEXT Z
1730  LET O2=O(2)
1740  LET O=O(1)
1750  PRINT "CONFEDERATE GENERAL---";
1760  REM - ACTUAL OFF/DEF BATTLE SITUATION
1770  IF M <> 3 THEN 1800
1780  PRINT "YOU ARE ON THE OFFENSIVE"
1790  GOTO 1840
1800  IF M <> 1 THEN 1830
1810  PRINT "YOU ARE ON THE DEFENSIVE"
1820  GOTO 1840
1830  PRINT "BOTH SIDES ARE ON THE OFFENSIVE "
1840  PRINT
1850  REM - CHOOSE STRATEGIES
1860  IF B$ <> "YES" THEN 1910
1870  FOR I=1 TO 2
1880  ON I GOTO 1890,1920
1890  PRINT "CONFEDERATE STRATEGY ";
1900  GOTO 1920
1910  PRINT "YOUR STRATEGY ";
1920  INPUT Y
1930  IF ABS(Y-3)<3 THEN 1960
1940  PRINT "STRATEGY";Y;"NOT ALLOWED."
1950  GOTO 1910
1960  IF B$="YES" THEN 2000
1970  IF Y=5 THEN 2830
1980  GOSUB 3110
1990  GOTO 2170
2000  IF I=2 THEN 2040
2010  LET Y1=Y
2020  PRINT "UNION STRATEGY ";
2030  NEXT I
2040  LET Y2=Y
2050  LET Y=Y1
2060  IF Y2=5 THEN 2020
2070  REM : SIMULATED LOSSES-NORTH
2080  LET C6=(2*C2/5)*(1+1/(2*(ABS(Y2-Y)+1)))
2090  LET C6=C6*(1.28+(5*M2/6)/(B(2)+1))
2100  LET C6=INT(C6*(1+1/O2)+.5)
2110  REM - IF LOSS > MEN PRESENT, RESCALE LOSSES
2120  LET E2=100/O2
2130  IF INT(C6+E2)<M6 THEN 2190
2140  LET C6=INT(13*M6/20)
2150  LET E2=7*C6/13
2160  LET U2=1
2170  REM - CALCULATE SIMULATED LOSSES
2180  PRINT
2190  PRINT : PRINT : PRINT ,"CONFEDERACY","UNION"
2200  LET C5=(2*C1/5)*(1+1/(2*(ABS(Y2-Y)+1)))
2210  LET C5=INT(C5*(1+1/O)*(1.28+F1/(B(1)+1))+.5)
2220  LET E=100/O
2230  IF C5+100/O<M1*(1+(P1-T1)/(M3+1)) THEN 2270
2240  LET C5=INT(13*M1/20*(1+(P1-T1)/(M3+1)))
2250  LET E=7*C5/13
2260  LET U=1
2270  IF D=1 THEN 2500
2280  PRINT "CASUALTIES",C5,C6
2290  PRINT "DESERTIONS",INT(E),INT(E2)
2300  PRINT
2310  IF B$ <> "YES" THEN 2350
2320  PRINT "COMPARED TO THE ACTUAL CASUALTIES AT "C$
2330  PRINT "CONFEDERATE:"INT(100*(C5/C1)+.5)"% OF THE ORIGINAL"
2340  PRINT "UNION:      "INT(100*(C6/C2)+.5)"% OF THE ORIGINAL"
2350  PRINT
2360  REM - 1 WHO ONE
2370  IF U <> 1 THEN 2380
2375  IF U2=1 THEN 2460
2380  IF U=1 THEN 2420
2390  IF U2=1 THEN 2440
2400  IF C5+E=C6+E2 THEN 2460
2410  IF C5+E<C6+E2 THEN 2440
2420  PRINT "THE UNION WINS "C$
2430  GOTO 2600
2440  PRINT "THE CONFEDERACY WINS "C$
2450  GOTO 2660
2460  PRINT "BATTLE OUTCOME UNRESOLVED"
2470  LET W0=W0+1
2480  IF A=0 THEN 2790
2490  GOTO 2680
2500  LET C6=INT(17*C2*C1/(C5*20))
2510  LET E2=5*O
2520  GOTO 2280
2530  PRINT "YOUR CASUALTIES WERE "INT(100*(C5/C1)+.5)"% OF "
2540  PRINT "THE ACTUAL CASUALTIES AT ";C$
2550  PRINT
2560  REM - FIND WHO WON
2570  IF U=1 THEN 2590
2580  IF C5+E<17*C2*C1/(C5*20)+5*O THEN 2630
2590  PRINT "YOU LOSE ";C$
2600  IF A=0 THEN 2790
2610  LET L=L+1
2620  GOTO 2680
2630  PRINT "YOU WIN ";C$
2640  REM - CUMULATIVE BATTLE FACTORS WHICH ALTER HISTORICAL
2650  REM  RESOURCES AVAILABLE.IF A REPLAY DON'T UPDATE.
2660  IF A=0 THEN 2790
2670  LET W=W+1
2680  LET T1=T1+C5+E
2690  LET T2=T2+C6+E2
2700  LET P1=P1+C1
2710  LET P2=P2+C2
2720  LET Q1=Q1+(F(1)+H(1)+B(1))
2730  LET Q2=Q2+(F(2)+H(2)+B(2))
2740  LET R1=R1+M1*(100-I1)/20
2750  LET R2=R2+M2*(100-I2)/20
2760  LET M3=M3+M1
2770  LET M4=M4+M2
2780  GOSUB 3300
2790  U=0:U2=0
2800  PRINT "---------------"
2810  GOTO 620
2820  REM------FINISH OFF
2830  PRINT "THE CONFEDERACY HAS SURRENDERED"
2840  GOTO 2860
2850  PRINT "THE UNION HAS SURRENDERED."
2860  PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
2870  PRINT "THE CONFEDERACY ";
2880  PRINT "HAS WON "W" BATTLES AND LOST "L
2890  IF Y=5 THEN 2940
2900  IF Y2=5 THEN 2920
2910  IF W <= L THEN 2940
2915  IF Y=5 THEN 2940
2920  PRINT "THE CONFEDERACY HAS WON THE WAR"
2930  GOTO 2950
2940  PRINT "THE UNION HAS WON THE WAR"
2950  PRINT
2960  IF R1=0 THEN 3100
2970  PRINT "FOR THE "W+L+W0" BATTLES FOUGHT (EXCLUDING RERUNS)"
2980  PRINT " "," "," ";
2990  PRINT "CONFEDERACY"," UNION"
3000  PRINT "HISTORICAL LOSSES",INT(P1+.5),INT(P2+.5)
3010  PRINT "SIMULATED LOSSES",INT(T1+.5),INT(T2+.5)
3020  PRINT
3030  PRINT "    % OF ORIGINAL",INT(100*(T1/P1)+.5),INT(100*(T2/P2)+.5)
3040  IF B$="YES" THEN 3100
3050  PRINT
3060  PRINT "UNION INTELLIGENCE SUGGESTS THAT THE SOUTH USED "
3070  PRINT "STRATEGIES 1, 2, 3, 4 IN THE FOLLOWING PERCENTAGES"
3080  PRINT S(1);S(2);S(3);S(4)
3090  REM---------------------------------
3100  STOP
3110  REM - UNION STRATEGY IS COMPUTER CHOSEN
3120  PRINT "UNION STRATEGY IS ";
3130  IF A <> 0 THEN 3180
3140  INPUT Y2
3150  IF Y2 <=0 THEN 3160
3155  IF Y2<5 THEN 3290
3160  PRINT "ENTER 1 , 2 ,3 , OR 4 (USUALLY PREVIOUS UNION STRATEGY)"
3170  GOTO 3140
3180  LET S0=0
3190  LET R=100*RND(0)
3200  FOR I=1 TO 4
3210  LET S0=S0+S(I)
3220  REM - IF ACTUAL STRATEGY INFO IS IN PROGRAM DATA STATEMENTS
3230  REM   THEN R-100 IS EXTRA WEIGHT GIVEN TO THAT STATEGY.
3240  IF R<S0 THEN 3270
3250  NEXT I
3260  REM - IF ACTUAL STRAT. IN,THEN HERE IS Y2= HIST. STRAT.
3270  LET Y2=I
3280  PRINT Y2
3290  RETURN
3300  REM LEARN  PRESENT STRATEGY, START FORGETTING OLD ONES
3310  REM - PRESENT STRATEGY OF SOUTH GAINS 3*S, OTHERS LOSE S
3320  REM   PROBABILITY POINTS, UNLESS A STRATEGY FALLS BELOW 5%.
3330  LET S=3
3340  LET S0=0
3350  FOR I=1 TO 4
3360  IF S(I) <= 5 THEN 3390
3370  LET S(I)=S(I)-S
3380  LET S0=S0+S
3390  NEXT I
3400  LET S(Y)=S(Y)+S0
3410  RETURN
3420  REM - HISTORICAL DATA...CAN ADD MORE (STRAT.,ETC) BY INSERTING
3430  REM   DATA STATEMENTS AFTER APPRO. INFO, AND ADJUSTING READ
3440  DATA "BULL RUN",18000,18500,1967,2708,1
3450  DATA "SHILOH",40000.,44894.,10699,13047,3
3460  DATA "SEVEN DAYS",95000.,115000.,20614,15849,3
3470  DATA "SECOND BULL RUN",54000.,63000.,10000,14000,2
3480  DATA "ANTIETAM",40000.,50000.,10000,12000,3
3490  DATA "FREDERICKSBURG",75000.,120000.,5377,12653,1
3500  DATA "MURFREESBORO",38000.,45000.,11000,12000,1
3510  DATA "CHANCELLORSVILLE",32000,90000.,13000,17197,2
3520  DATA "VICKSBURG",50000.,70000.,12000,19000,1
3530  DATA "GETTYSBURG",72500.,85000.,20000,23000,3
3540  DATA "CHICKAMAUGA",66000.,60000.,18000,16000,2
3550  DATA "CHATTANOOGA",37000.,60000.,36700.,5800,2
3560  DATA "SPOTSYLVANIA",62000.,110000.,17723,18000,2
3570  DATA "ATLANTA",65000.,100000.,8500,3700,1
3580  PRINT "JULY 21, 1861.  GEN. BEAUREGARD, COMMANDING THE SOUTH, MET"
3590  PRINT "UNION FORCES WITH GEN. MCDOWELL IN A PREMATURE BATTLE AT"
3600  PRINT "BULL RUN. GEN. JACKSON HELPED PUSH BACK THE UNION ATTACK."
3610  GOTO 1150
3620  PRINT "APRIL 6-7, 1862.  THE CONFEDERATE SURPRISE ATTACK AT"
3630  PRINT "SHILOH FAILED DUE TO POOR ORGANIZATION."
3640  GOTO 1150
3650  PRINT "JUNE 25-JULY 1, 1862.  GENERAL LEE (CSA) UPHELD THE"
3660  PRINT "OFFENSIVE THROUGHOUT THE BATTLE AND FORCED GEN. MCCLELLAN"
3670  PRINT "AND THE UNION FORCES AWAY FROM RICHMOND."
3680  GOTO 1150
3690  PRINT "AUG 29-30, 1862.  THE COMBINED CONFEDERATE FORCES UNDER";
3695  PRINT " LEE"
3700  PRINT "AND JACKSON DROVE THE UNION FORCES BACK INTO WASHINGTON."
3710  GOTO 1150
3720  PRINT "SEPT 17, 1862.  THE SOUTH FAILED TO INCORPORATE MARYLAND"
3730  PRINT "INTO THE CONFEDERACY."
3740  GOTO 1150
3750  PRINT "DEC 13, 1862.  THE CONFEDERACY UNDER LEE SUCCESSFULLY"
3760  PRINT "REPULSED AN ATTACK BY THE UNION UNDER GEN. BURNSIDE."
3770  GOTO 1150
3780  PRINT "DEC 31, 1862.  THE SOUTH UNDER GEN. BRAGG WON A CLOSE ";
3785  PRINT "BATTLE."
3790  GOTO 1150
3800  PRINT "MAY 1-6, 1863.  THE SOUTH HAD A COSTLY VICTORY AND LOST"
3810  PRINT "ONE OF THEIR OUTSTANDING GENERALS, 'STONEWALL' JACKSON."
3820  GOTO 1150
3830  PRINT "JULY 4, 1863.  VICKSBURG WAS A COSTLY DEFEAT FOR THE SOUTH"
3840  PRINT "BECAUSE IT GAVE THE UNION ACCESS TO THE MISSISSIPPI."
3850  GOTO 1150
3860  PRINT "JULY 1-3, 1863.  A SOUTHERN MISTAKE BY GEN. LEE AT ";
3865  PRINT "GETTYSBURG"
3870  PRINT "COST THEM ONE OF THE MOST CRUCIAL BATTLES OF THE WAR."
3880  GOTO 1150
3890  PRINT "SEPT. 15, 1863. CONFUSION IN A FOREST NEAR CHICKAMAUGA LED"
3900  PRINT "TO A COSTLY SOUTHERN VICTORY."
3910  GOTO 1150
3920  PRINT "NOV. 25, 1863. AFTER THE SOUTH HAD SIEGED GEN. ROSENCRANS'"
3930  PRINT "ARMY FOR THREE MONTHS, GEN. GRANT BROKE THE SIEGE."
3940  GOTO 1150
3950  PRINT "MAY 5, 1864.  GRANT'S PLAN TO KEEP LEE ISOLATED BEGAN TO"
3960  PRINT "FAIL HERE, AND CONTINUED AT COLD HARBOR AND PETERSBURG."
3970  GOTO 1150
3980  PRINT "AUGUST, 1864.  SHERMAN AND THREE VETERAN ARMIES CONVERGED"
3990  PRINT "ON ATLANTA AND DEALT THE DEATH BLOW TO THE CONFEDERACY."
4000  GOTO 1150
4010  END
