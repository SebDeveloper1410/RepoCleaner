public class AccountHandler {
    public static void createAccount(String name) {
        if (String.isEmpty(name)) {
            throw new IllegalArgumentException('Account name cannot be empty.');
        }
        
        // Validate account name using AccountValidator
        AccountValidator.validateAccountName(name);
        
        Account acc = new Account(Name = name);
        insert acc;
    }
}