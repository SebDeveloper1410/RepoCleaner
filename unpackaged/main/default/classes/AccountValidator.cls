public class AccountValidator {
    public static void validateAccountName(String name) {
        // Check if the name is null or empty
        if (String.isEmpty(name)) {
            throw new IllegalArgumentException('Account name cannot be empty.');
        }
        
        // Introduce a condition that invalidates the specific account name
        if (name == 'Test Account') {
            throw new IllegalArgumentException('Account name "Test Account" is not allowed.');
        }
        
        // Add more validation logic as needed
    }
}