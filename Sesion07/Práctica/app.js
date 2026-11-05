const aprendiz = {
    nombre: "Estefania Quintero",
    ficha: 3534466,
    jornada: "Noche",
    activo: true
};

console.log(aprendiz);
console.table(aprendiz);

console.log(aprendiz.nombre);     
console.log(aprendiz["jornada"]);    

const campo = "ficha";
console.log(aprendiz[campo]); 

aprendiz.jornada = "Tarde";          // cambiar
aprendiz.ciudad = "Medellín";        // agregar
delete aprendiz.activo;              // borrar
console.log(aprendiz.telefono);      // undefined: no existe
console.table(aprendiz);


const productos = [
    { codigo: "P01", nombre: "Cuaderno", precio: 4500, stock: 20 },
    { codigo: "P02", nombre: "Lápiz", precio: 1200, stock: 0 },
    { codigo: "P03", nombre: "Borrador", precio: 800, stock: 35 }
];

console.table(productos);
console.log(productos[0].nombre);
console.log(productos[2].precio);

productos.push({ codigo: "P04", nombre: "Regla", precio: 2000, stock: 10 });
console.table(productos);

let buscado = prompt("Código del producto:") ?? "";
let encontrado = null;

for (const p of productos) {
    if (p.codigo === buscado.toUpperCase()) {
        encontrado = p;
        break;
    }
    }

    if (encontrado) {
    console.log(`${encontrado.nombre}: $${encontrado.precio}`);
    } else {
    console.log("No existe ese código");
    }