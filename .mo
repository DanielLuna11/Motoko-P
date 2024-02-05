// Definición del tipo de datos para un videojuego
type Videojuego = {
  nombre: Text;
  calificacion: Nat8;
};

// Declaración de una variable mutable para almacenar el videojuego actual
var videojuegoActual : ?Videojuego = null;

// Función para ingresar el nombre de un videojuego y dejar una calificación
public func ingresarCalificacion(nombre: Text, calificacion: Nat8) : Text {
  if calificacion > 0 && calificacion <= 10 {
    videojuegoActual := {nombre = nombre, calificacion = calificacion};
    return "Calificación del videojuego ingresada con éxito";
  } else {
    return "La calificación debe estar entre 1 y 10";
  };
};

// Función para obtener la información del videojuego actual
public func obtenerInformacion() : Text {
  switch (videojuegoActual) {
    null => "No hay información disponible",
    {nombre, calificacion} => "Nombre del videojuego: " # nombre # "\nCalificación: " # Nat8.toText(calificacion)
  };
};

// Ejemplo de uso
public func main() : async Text {
  let resultado = ingresarCalificacion("The Legend of Zelda", 9);
  let informacion = obtenerInformacion();

  return resultado # "\n" # informacion;
};
