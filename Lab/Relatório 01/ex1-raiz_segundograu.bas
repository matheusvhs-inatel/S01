10 REM MATHEUS VIEIRA - GES - 525
20 PRINT "RESOLUÇÃO DE EQUAÇÃO DO SEGUNDO GRAU"
30 INPUT "Digite o valor de a: "; a
40 INPUT "Digite o valor de b: "; b
50 INPUT "Digite o valor de c: "; c
60 LET delta = b*b - 4*a*c
70 IF delta < 0 THEN GOTO 140
80 LET x1 = (-b + SQR(delta)) / (2*a)
90 LET x2 = (-b - SQR(delta)) / (2*a)
100 PRINT "raiz x1:"
120 print x1
130 PRINT "raiz x2:"
140 print x2
150 END
160 PRINT "A equação não tem raízes reais."
170 END
