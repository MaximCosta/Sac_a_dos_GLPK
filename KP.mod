#modele du sac a dos

#donnees

param M; #capacite du sac

param n; #nombre d'objets

param t{i in 1..n}; #taille du bloc i

param v{i in 1..n}; #valeur du bloc i

#variable xi=1 si bloc i est choisi

var x{1..n} binary;

#objectif

maximize f :sum {i in 1..n} v[i]*x[i];

#contraintes

subject to

capacite : sum{i in 1..n} t[i]*x[i] <= M;

printf "---Debut de la resolution ---\n";

solve;

printf "---Fin de la resolution ---\n";

display x;

data;

#volume maximum du sac-à-dos

param M := 6404180;

#nombre de blocs

param n := 24;

#taille des blocs

param t := 1 382745,
           2 799601,
           3 909247,
           4 729069,
           5 467902,
           6 44328,
           7 34610,
	       8 698150,
           9 823460,
           10 903959,
           11 853665,
           12 551830,
           13 610856,
           14 670702,
           15 488960,
           16 951111,
           17 323046,
           18 446298,
           19 931161,
           20 31385,
           21 496951,
           22 264724,
           23 224916,
           24 169684;

#valeur des blocs

param v :=1 825594,
		  2 1677009,
		  3 1676628,
		  4 1523970,
		  5 943972,
		  6 97426,
		  7 69666,
		  8 1296457,
		  9 1679693,
		  10 1902996,
		  11 1844992,
		  12 1049289,
		  13 1252836,
		  14 1319836,
		  15 953277,
		  16 2067538,
		  17 675367,
		  18 853655,
		  19 1826027,
		  20 65731,
		  21 901489,
		  22 577243,
		  23 466257,
		  24 369261;

end;
