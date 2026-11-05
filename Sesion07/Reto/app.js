const catalogo = [
    { codigo: "A1", nombre: "Shampoo para rizadas",categoria: "PA1", precio: 45000, stock: 10 },
    { codigo: "A2", nombre: "Mantequilla corporal", categoria: "PA2", precio: 20000, stock: 5 },
    { codigo: "A3", nombre: "Blanqueador facial", categoria: "PA3", precio: 800, stock: 0 },
    { codigo: "A4", nombre: "Aceite para el cabello", categoria: "PA4",precio: 80000, stock: 25 },
    { codigo: "A5", nombre: "Acondicionador", categoria: "PA5",precio: 90000, stock: 0 }
];

console.table(catalogo)

function buscarPorCodigo(codigo) {
    let buscador = null
    for (const x of catalogo) {
        if (x.codigo===codigo) {
            buscador=x;
            break;
        }
    }
    if (buscador) {
    console.log (`${buscador.nombre}: $${buscador.precio}`);
    } else {
    console.log ("No existe ese código");
    }
}

buscarPorCodigo("A2")

function contarAgotados(stock) {
    let contador= 0
    for (const x of catalogo) {
        if (x.stock===0) {
            contador+=1
        }
}
    if (contador > 0) {
        console.log(`La cantidad de productos agotados es ${contador}`);
    } else {
        console.log("No hay productos agotados");
    }
    
}

contarAgotados()

function valorInventario() {
    let valor_inventario=0
    for (const x of catalogo) {
    valor_inventario += x.precio * x.stock
    }
    return valor_inventario;
}

console.log(`El valor total del inventario es  ${valorInventario()}`)

function menu() {
    let opcion;

    do {
        opcion = prompt(
            "Opciones\n" +
            "1. Buscar producto por código\n" +
            "2. Contar productos agotados\n" +
            "3. Valor del inventario\n" +
            "4. Salir\n\n" +
            "Elige una opción:"
        );

        switch (opcion) {
            case "1":
                const codigo = prompt("Ingrese el código a buscar:");
                buscarPorCodigo(codigo);
                break;
            case "2":
                contarAgotados();
                break;
            case "3":
                console.log(`Valor del inventario: $${valorInventario()}`);
                break;
            case "4":
                console.log("Fin");
                break;
            default:
                console.log("Opción no válida, intenta de nuevo");
        }
    } while (opcion !== "4");
}

menu();