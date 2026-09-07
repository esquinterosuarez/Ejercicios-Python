# letra=input("digite una letra ")
# ASCCI=ord(letra)
# if ASCCI<=90:
#     print("Letra ingresada es mayuscula ")
# else:
#     print("Letra ingresada es minuscula ")

letra=input("digite una letra ")
ASCCI=ord(letra)
if ASCCI>=65 and ASCCI<=90:
    letraM=chr(ASCCI+32)
    print("Letra minuscula es ",letraM)
elif ASCCI>=97 and ASCCI<=122:
    letraJ=chr(ASCCI)
    print("Letra es ", letraJ)
else: 
    print("No es una letra")
    