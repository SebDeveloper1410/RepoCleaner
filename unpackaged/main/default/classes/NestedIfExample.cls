public class NestedIfExample {

    public String evaluateNumber(Integer number1) {
        String result = 'Number is ';

        // First level of nested if
        if (number1 != null) {
            if (number1 < 0) {
                result += 'negative.';
                if (number1 < 0) {
                result += 'negative.';
                    if (number1 < 0) {
                result += 'negative.';
                        if (number1 < 0) {
                result += 'negative.';
                            if (number1 < 0) {
                result += 'negative.';
                                if (number1 < 0) {
                result += 'negative.';
                                    if (number1 < 0) {
                result += 'negative.';
            }
            }
            }
            }
            }
            }
            } else {
                if (number1 == 0) {
                    result += 'zero.';
                } else {
                    if (number1 > 0 && number1 <= 10) {
                        result += 'between 1 and 10.';
                    } else {
                        // Second level of nested if
                        if (number1 > 10 && number1 <= 20) {
                            result += 'between 11 and 20.';
                        } else {
                            if (number1 > 20) {
                                result += 'greater than 20.';
                            }
                        }
                    }
                }
            }
        } else {
            result = 'Input number is null.';
        }

        return result;
    }
}