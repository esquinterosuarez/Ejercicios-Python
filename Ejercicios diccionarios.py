# diccionario = {
#     "nombre": "Juan",
#     "edad": 25,
#     "ciudad": "Bogotá",
#     "profesion": "Ingeniero",
#     "hobbies": ["leer", "viajar", "programar"]}

# # claves (llaves) : valores
# # {}
# # [] listas

# #printo los valores del diccionario
# print(diccionario.values())
# #printo solo una llave especifica
# print(diccionario["hobbies"])

# #itero sobre una llave especifica:
# for x in diccionario["hobbies"]:
#     print(x)

# #printo solo valores
# print(diccionario.values())

# #printo las llaves
# print(diccionario.keys())

# #printo items
# print(diccionario.items())

# print(diccionario)

# for x,y in diccionario.items():
#     print(f"esta es la llave: {x}, y este es el valor: {y}.")


# diccionario["edad"]= 39

# for x,y in diccionario.items():
#     print(f"esta es la llave: {x}, y este es el valor: {y}.")

# print(diccionario.get("ciudad"))

# #para agregar una llave y un valor

# diccionario["telefono"]=123456
# print(diccionario)

# diccionario["telefono"]=54321
# print(diccionario)

# #para agregar una llave y un valor con .update

# diccionario.update({"correo":"es.qui@gmail.com"})
# print(diccionario)

# #Eliminar un item con .pop

# diccionario.pop("correo")
# print(diccionario)

# #printea las llaves que es el valor
# for x in diccionario:
#     print(diccionario[x])

# #printea valor y llave

# for y in diccionario:
#     print(y)

# people={
#         "name": "Ema",
#         "age": 24,
#         "city": "Medellin"
# }

# print(("name"), people["name"], ("city"), people["city"])

# producto={
#     "nombre":"Computador",
#      "precio": 1500000
# }

# producto["Marca"]="Lenovo"
# producto["precio"]=1800000
# print(producto)

# #Ejercicio 3-- poner con un input la llave y que traiga el valor

# estudiante={
#     "name": "Estefa",
#     "age": 24,
#     "subject": "Python"
# }

# user=input("Usuaria escriba por favor una clave: ")
# print(estudiante[user])

# #ejercicio 4-- muestre el diccionario

# notas = {
#     "matematicas": 4.5,
#     "español": 3.8,
#     "ingles": 4.2,
#     "programación": 5.0
# }

# for x, y in notas.items():
#     print(x, y)

#ejercicio 5-- par acceder a los items y arrojar info según cada uno

# stock={
#     "Zapatos":7,
#     "Camisetas rojas": 4,
#     "Busos negros": 0,
#     "Gorras planas": 10
# }

# for x,y in stock.items():
#     if y==0:
#         print("Producto agotado")
#     elif y< 5:
#         print(f"Tiene poco stock el producto, cantidad: , {y}")
#     elif y> 5:
#         print(f"Tiene el stock suficiente el producto, cantidad: , {y}")

# diccionario={"pares": [], "impares": []}
# numeros=[3,8,15,22,7,40,11]

# for x in numeros:
#     if x % 2==0:
#         diccionario["pares"].append(x)
#     else:
#         diccionario["impares"].append(x)
# print(diccionario["pares"], diccionario["impares"])