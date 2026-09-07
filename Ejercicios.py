# #PUNTO1

# Y=(input("Usuaria ingrese 5 nombres ")).split(",")

# Z=Y
# B="andrea"
# posicion="nada"
# for X in Z:
#     if X.strip().lower()==B:
#         posicion=Y.index(X)
#         print(f"El nombre {B} está en la lista")
#         break
    
# if posicion=="nada":
#     print("No está en la lista")
# else:
#     print(f"La posicion es {posicion}")


# #PUNTO2 
# num=str(input("Usuaria escriba una palabra "))

# num_2=num[::-1]
# if num==num_2:
#     print("Es palindromo")
# else:
#     print("No es palindromo")
    
# #PUNTO3

# Y=(input("Usuaria ingrese 5 numeros, separados por comas ")).split(",")
# pares=[]
# impares=[]
# suma_pares=0
# suma_impares=0

# for X in Y:

#     X=int(X)
#     if X % 2 == 0:
#         pares.append(X)
#         suma_pares=suma_pares+X
#     else:
#         X % 2 != 0
#         impares.append(X)
#         suma_impares=suma_impares+X

# print("La suma de pares es ", suma_pares)
# print("La suma de impares es ",suma_impares)

# if suma_pares>suma_impares:
#     print("La suma de pares es mayor")
# else:
#     print("La suma de impares es mayor")

# #PUNTO4

# lista=[1,2,3,4,5]
# pares=[]
# impares=[]

# for X in lista:
#     if X % 2 == 0:
#         pares.append(X)
        
#     else:
#         X % 2 != 0
#         impares.append(X)

# print(pares)
# print(impares)

#PUNTO5

# Y=["La","vida", "es", "buena"]
# new=[X.split() for X in Y]
# palabra=[]
# contador=0

# for letras in Y:
    
#     if len(letras)>=5:
#         palabra.append(letras)
#         contador=contador+1
#         break
# else: 
#      print("No hay palabras que cumplan la condición")

# print(palabra)        
# print(Y)
# print("La cantidad de palabras filtradas es", contador)

#PUNTO6

# contraseña=(input("Señor usuario por favor ingrese la contraseña "))
# valida=False
# longitud=False
# digito=False
# may=False
# while valida==False:
#     contador=0
#     for X in contraseña:
#            contador+=1
#            if contador>8:
#             longitud=True
#     for X in contraseña:
#            if X in ("1","2","3","4","5","6","7","8","9","0"):
#             digito=True
#     for X in contraseña:
#            if X in ("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"):
#             may=True
#     if may==True and digito==True and longitud==True:
#             valida=True
#             print("contraseña correcta")
#     else:
#         print("Debe ingresar otra contraseña")

# Enunciado: Tienes una lista de precios: [15000, 42000, 8000, 63000, 21000]. Recórrela con for y calcula el total a pagar, aplicando un 10% de descuento a cada producto cuyo precio sea mayor a 30.000. Imprime el total final y cuántos productos tuvieron descuento.

# lista=[15000, 42000, 8000, 63000, 21000]
# suma=0
# contador=0

# for x in lista:
#     if x>30000:
#         descuento+=x*0.1
#         contador=contador+1
#     else:
#         suma+=x
# print("Los productos con descuentos son ", contador)     
# print("La suma total a pagar es ", suma)  

# Enunciado: Tienes una lista de temperaturas: [22, 19, 31, 15, 27, 33, 18]. Recórrela con for y encuentra el valor más alto y el más bajo, sin usar las funciones max() ni min(). Imprime ambos.

# tem=[22, 19, 31, 15, 27, 33, 18]

# numero_menor=tem[0]
# numero_mayor=tem[0]

# for x in tem:
#     if x>numero_mayor:
#         numero_mayor=x   
#     if x<numero_menor:
#         numero_menor=x
        
# print(numero_mayor)
# print(numero_menor)


    

