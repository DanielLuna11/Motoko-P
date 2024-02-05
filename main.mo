// Definición del tipo de datos para un videojuego
type Videojuego = {
  nombre: Text;
  calificacion: Nat8;
};

// Declaración de una variable mutable para almacenar el videojuego actual
var videojuegoActual : Videojuego = {nombre = ""= calificacion = 0};

// Función para ingresar el nombre de un videojuego
public func ingresarNombre(nombre: Text) : Text {
  videojuegoActual.nombre := nombre;
  return "Nombre del videojuego ingresado con éxito";
};

// Función para dejar una calificación al videojuego actual
public func dejarCalificacion(calificacion: Nat8) : Text {
  if calificacion > 0 && calificacion <= 10 {
    videojuegoActual.calificacion := calificacion;
    return "Calificación del videojuego ingresada con éxito";
  } else {
    return "La calificación debe estar entre 1 y 5";
  };
};

// Función para obtener la información del videojuego actual
public func obtenerInformacion() : Text {
  return "Nombre del videojuego: " # videojuegoActual.nombre # "\nCalificación: " # Nat8.toText(videojuegoActual.calificacion);
};

// Ejemplo de uso
public func main() : async Text {
  let resultadoNombre = ingresarNombre("Super Mario");
  let resultadoCalificacion = dejarCalificacion(8);

  let informacion = obtenerInformacion();

  return resultadoNombre # "\n" # resultadoCalificacion # "\n" # informacion;
};
