package com;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculatorTest {
    int a= 2;
    int b = 6;
    @Test
    public void evaluateSum() {
        Calculator calculator = new Calculator();
        int sum = calculator.evaluateSum(a,b);
        assertEquals(8, sum);
    }

    @Test
    public void evaluateDifference() {
        Calculator calculator = new Calculator();
        int sum = calculator.evaluateDifference(a,b);
        assertEquals(4, sum);
    }


    @Test
    public void evaluateproduct() {
        Calculator calculator = new Calculator();
        int sum = calculator.evaluateproduct(a,b);
        assertEquals(12, sum);
    }

    @Test
    public void evaluateDivision() {
        Calculator calculator = new Calculator();
        int sum = calculator.evaluateDivision(a,b);
        assertEquals(2, sum);
    }
}
