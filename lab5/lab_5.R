dbinom(9, 10, 0.6) #Rozk�ad dwumianowy 
# szansa na osi�gni�cie 9 sukces�w w 10 pr�bach
#przy szansie na sukces 0.6

#Polska wygra w przynajmniej 5 meczach
dbinom(5,10,0.6)+dbinom(6,10,0.6)+dbinom(7,10,0.6)+dbinom(8,10,0.6)+dbinom(9,10,0.6)+dbinom(10,10,0.6)
1-pbinom(5,10,0.4)

#egz ze statystyki na 120 stud p=0.6
dbinom(30,120,0.6)
1-pbinom(59,120,0.6)
dbinom(0,120,0.6)
dbinom(120,120,0.6)

#1000 element�w szansa uszkodzenia to 0.001 
dbinom(2,1000,0.001)
1-pbinom(1,1000,0.001)
