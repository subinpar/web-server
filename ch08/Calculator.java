package ch08;

public class Calculator {
	private int n1;
	private int n2;
	private String op;

	public long calc() {
		long result = 0;
		switch (op) {
		case "+":
			result = n1 + n2;
			break;
		case "-":
			result = n1 - n2;
			break;
		case "*":
			result = n1 * n2;
			break;
		case "/":
			result = n1 / n2;
			break;
		}
		return result;
	}

}
