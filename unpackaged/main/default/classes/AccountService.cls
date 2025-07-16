public class AccountService {
    // List of invalid account names
    private static final Set<String> INVALID_ACCOUNT_NAMES = new Set<String>{
        'Invalid Account', 'Test Account', 'Sample Account'
    };

    // Method to create a new account
    public static void createNewAccount(String name) {
        // Validate the input
        if (String.isBlank(name)) {
            throw new IllegalArgumentException('Account name cannot be empty.');
        }

        // Check for invalid account names
        if (INVALID_ACCOUNT_NAMES.contains(name)) {
            throw new IllegalArgumentException('Account name "' + name + '" is not allowed.');
        }

        // Call the AccountHandler to create an account
        AccountHandler.createAccount(name);
    }
}