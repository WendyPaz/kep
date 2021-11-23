
package modelo;

public class ListaSE {

    private Nodo primerNodo;
    private Nodo ultimoNodo;
    private int n;  

    public ListaSE() {
        primerNodo = null;
        ultimoNodo = null;
        n = 0;
    }

    public void agregar(Municipio dato) {
        Nodo nuevoNodo = new Nodo(dato);
        if (primerNodo == null) {
            primerNodo = nuevoNodo;
        } else {
            ultimoNodo.siguiente = nuevoNodo;
        }
        ultimoNodo = nuevoNodo;
        n++;
    }

    public Municipio obtener(int indice) {
        if (indice >= 0 && indice < n) {
            Nodo actual = primerNodo;
            while (indice > 0) {
                actual = actual.siguiente;
                indice--;
            }
            return actual.dato;
        }
        throw new IndexOutOfBoundsException("" + indice);

    }

    public int tamanio() {
        return n;
    }
    
    
    public String toString() {
        String texto = "";
        if (primerNodo != null) {
            Nodo actual = primerNodo;
            while (actual.siguiente != null) {
                texto += actual.dato + ", ";
                actual = actual.siguiente;
            }
            texto += actual.dato;
        }
        return texto;
    }
}
