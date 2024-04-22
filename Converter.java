package currencyConverterLogicClasses;


public class Converter {
	public static double convertCurrency(double amount, String currency) {

		if ("eur".equalsIgnoreCase(currency)) {
			return amount * 0.01098;
		}else if ("usd".equalsIgnoreCase(currency))
				return amount * 0.01201;
		else if ("yen".equalsIgnoreCase(currency))
			return amount * 1.71368;
		else if ("pound".equalsIgnoreCase(currency))
			return amount * 0.0095;
		else if ("rune".equalsIgnoreCase(currency))
			return amount * 0.00212;
		else if ("aed".equalsIgnoreCase(currency))
			return amount * 0.04409;
		else if ("aud".equalsIgnoreCase(currency))
			return amount * 0.01781;


			return amount;
		}
	}
