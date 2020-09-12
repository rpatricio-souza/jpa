package br.gov.sp.fatec.projetomaven;

public class Calculadora {
    
    private float n1, n2;
    
    public Calculadora (float n1, float n2) {
        this.n1 = n1;
        this.n2 = n2;
    }
    
    public Calculadora() {
        this(1, 1);
    }
    
    public float adicao() {
        return n1 + n2;
    }
    
    public float subtracao() {
		return n1 - n2;
	}

    public float multiplicacao() {
		return n1 * n2;
	}
    
    public float divisao() {
		return n1 / n2;
	}
}
