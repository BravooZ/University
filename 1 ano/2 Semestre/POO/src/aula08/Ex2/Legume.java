package aula08.Ex2;

public class Legume extends Alimento implements Vegetariano {

    private String nome;

    public Legume(String nome, double proteina, double calorias, double peso) {
        super(proteina, calorias, peso);
        this.nome = nome;
    }

    @Override
    public String toString() {
        return "Legume " + nome + "," + super.toString();
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Legume other = (Legume) obj;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        return true;
    }

    
}
