#marka ='Peugeot'
#ilosc_drzwi =5
#print ('Samochod' + marka + 'ma' +str(ilosc_drzwi) + 'drzwi')
#print(marka.upper())
#print(marka.lower())
#print ('Samochod' + marka + 'ma' +str(ilosc_drzwi) + 'drzwi')

#dziecko ='corka'
#wiek =12
#print ('Moja' + dziecko + 'ma' +str(wiek) + 'lat')

zwierzeta =['kot', 'golab']
ilosc_nog =[4,2]
for z in zwierzeta:
    print (z)
for il in ilosc_nog:
    print (il)
print ("Dlugosc: {0}" .format(len(zwierzeta)))

for idx in range(len(zwierzeta)) :
    print ( "idx: " +str(idx) + ":" + zwierzeta [idx])
    print (zwierzeta[idx] + "ma ilosc nog" +str (ilosc_nog [idx]))
