10 PRINT "RESOLUÇÃO DE EQUAÇÃO DO SEGUNDO GRAU"
20 INPUT "Digite o valor de a: "; a
30 INPUT "Digite o valor de b: "; b
40 INPUT "Digite o valor de c: "; c
50 LET delta = b*b - 4*a*c
60 IF delta < 0 THEN GOTO 140
70 LET x1 = (-b + SQR(delta)) / (2*a)
80 LET x2 = (-b - SQR(delta)) / (2*a)
90 PRINT "raiz x1:"
100 print x1
110 PRINT "raiz x2:"
120 print x2
130 END
140 PRINT "A equação não tem raízes reais."
150 END
