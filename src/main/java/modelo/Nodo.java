

package modelo;

public class Nodo {

    Municipio dato;
    Nodo siguiente;
    
    public Nodo(Municipio dato) {
        this.dato = dato;
        this.siguiente = null;
    }

    public Nodo(Municipio dato, Nodo siguiente) {
        this.dato = dato;
        this.siguiente = siguiente;
    }
}
