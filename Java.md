# Java Master Class

## Constructores semanticos (Named Constructors) y su uso para excepciones

El uso habitual para tener excepeciones customizadas en nuestras app en java suele tener las siguiente estructura:  

```java
    public GetRoomByIdController(RoomsService roomsService) {
        this.roomsService = roomsService;
    }
    @GetMapping("getroombyid/{targetId}")
    public RoomsModel getRoomById(@PathVariable String targetId) throws RoomManagerException {
        RoomsModel requestedRoom;
        try {
            requestedRoom = roomsService.findById(Long.parseLong(targetId));
            Logger.debug(requestedRoom.getCode());
        }
        catch (Exception e) {
            throw new RoomNotFoundException(targetId);
        }
        return requestedRoom;
    }
```

El gestor de la excepcion con nuestros mensajes de error customizados:  

```java
public class RoomNotFoundException extends RuntimeException{

    public RoomNotFoundException(long id) {
        super("Could not find room id " + id);
    }
    public RoomNotFoundException(String id) {
        super("Could not find room id " + id);
    }
}
```

La linea  ``` throw new RoomNotFoundException(targetId); ``` no hace que el codigo sea facil de entender, sabes que lanzamos una excepcion pero, queda corta de informacion y no es facil de leer. Ademas en la clase ``` RoomNotFoundException ``` tendremos que acabar con un buen numero de constructores que haran que la clase sea mas compleja de leer y dificil de mantener.  

Una mejor opcion es el uso de los constructores semanticos o named constructors. Hacen que el codigo aporte mas informacion, sea mas facil de entender, evita tener multiples constructores.

La clase ``` RoomNotFoundException ``` la refactorizamos de la siguiente manera:

```java
public class RoomManagerException extends RuntimeException implements Serializable {
    private RoomManagerException(Exception e, String errorMessage) {
        super(errorMessage, e);
    }

    public static RoomManagerException RoomNotFoundById(Exception e, String id) {
        return new RoomManagerException(e,"RoomNotFoundById. Room id = " + id + " NOT FOUND");

    }
}
```

Hacemos privado el constructor para evitar que se pueda crear a traves del metodo ```new```y creamos tantos metodos como excepciones customizadas necesitemos.  

Ahora refactorizamos el codigo que hace la llamada.  

```java
    public RoomsModel getRoomById(@PathVariable String targetId) throws RoomManagerException {
        RoomsModel requestedRoom;
        try {
            requestedRoom = roomsService.findById(Long.parseLong(targetId));
            Logger.debug(requestedRoom.getCode());
        }
        catch (Exception e) {
            throw RoomManagerException.RoomNotFoundById(e, targetId);
        }
        return requestedRoom;
    }
```

De esta forma podemo leer que ```RoomManagerException``` lanza una excepcion ```RoomNotFoundById```cuando el id de la room no se ha encontrado. Hemos mejorado la lectura del codigo, su compresion y el mantenimiento del mismo. Triple Win.  

Una mejor explicacion la encontraras en los siguientes videos:  

[Rigor Talks - PHP - #3 - Named Constructors I (Spanish)](https://youtu.be/LjEG7AR-MOg)  
[Rigor Talks - PHP - #3 - Named Constructors II (Spanish)](https://youtu.be/RE3cAEFSsDc)  
[Rigor Talks - PHP - #3 - Named Constructors III (Spanish)](https://youtu.be/w2CfVDtQGc0)  
[Rigor Talks - PHP - #3 - Named Constructors IV (Spanish)](https://youtu.be/210Ed5PeK4g)  

Esto ha sido gracias a una pequeña masterclass de Carlos Buenosvinos.  

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)