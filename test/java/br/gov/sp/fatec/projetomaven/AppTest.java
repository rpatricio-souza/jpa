package br.gov.sp.fatec.projetomaven;

import org.junit.Test;
import static org.junit.Assert.*;

/**
 * Unit test for simple App.
 */
public class AppTest
{

    /**
     * Rigourous Test :-)
     */
    @Test
    public void testSoma()
    {
        Calculadora calc = new Calculadora(8,2);
        assertTrue(calc.adicao() == 10);
        assertTrue(calc.subtracao() == 6);
        assertTrue(calc.multiplicacao()==16);
        assertTrue(calc.divisao()==4);
    }
}
