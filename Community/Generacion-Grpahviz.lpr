// Este es como un ejemplo d elas estructuras 
type
  // Nodo de la lista de usuarios
  PUsuario = ^TUsuario;
  TUsuario = record
    Nombre: string;
    Siguiente: PUsuario; // Puntero al siguiente usuario en la lista
  end;

  // Nodo de la lista de comunidades
  PComunidad = ^TComunidad;
  TComunidad = record
    Nombre: string;
    Usuarios: PUsuario; // Puntero a la cabecera de la lista de usuarios de esta comunidad
    Siguiente: PComunidad; // Puntero a la siguiente comunidad en la lista principal
  end;

  // Puntero a la cabecera de la lista de comunidades
  TListaComunidades = PComunidad;






  // Procedimiento para realizar el archivo DOT 

  procedure GenerarArchivoDOT(const ListaComunidades: TListaComunidades; const ArchivoSalida: string);
var
  F: TextFile;
  ComunidadActual: PComunidad;
  UsuarioActual: PUsuario;
begin
  AssignFile(F, ArchivoSalida);
  Rewrite(F);

  Writeln(F, 'digraph Comunidades {');
  Writeln(F, '  rankdir=LR;');
  Writeln(F, '  node [shape=box, style=filled, color=lightskyblue];');

  // Recorrer la lista de comunidades
  ComunidadActual := ListaComunidades;
  while ComunidadActual <> nil do
  begin
    // Crear el nodo para la comunidad
    Writeln(F, '  "' + ComunidadActual^.Nombre + '" [shape=Mrecord, fillcolor=lightgreen];');

    // Recorrer la lista de usuarios de la comunidad actual
    UsuarioActual := ComunidadActual^.Usuarios;
    while UsuarioActual <> nil do
    begin
      // Crear el nodo para el usuario
      Writeln(F, '  "' + UsuarioActual^.Nombre + '" [shape=oval, fillcolor=lightblue];');

      // Crear la conexión de la comunidad al usuario
      Writeln(F, '  "' + ComunidadActual^.Nombre + '" -> "' + UsuarioActual^.Nombre + '";');

      // Avanzar al siguiente usuario
      UsuarioActual := UsuarioActual^.Siguiente;
    end;

    // Avanzar a la siguiente comunidad
    ComunidadActual := ComunidadActual^.Siguiente;
  end;

  Writeln(F, '}');
  CloseFile(F);
end;



// Este seria un ejemplo de uso, ya con la estructura que ustedes crearon

var
  MiListaComunidades: TListaComunidades;
begin
  // Aquí iría el código para construir la lista enlazada de comunidades y sus usuarios

  // Llamar al procedimiento para generar el archivo
  GenerarArchivoDOT(MiListaComunidades, 'reporte_comunidades.dot');
  Writeln('Archivo reporte_comunidades.dot generado con éxito.');
end.
