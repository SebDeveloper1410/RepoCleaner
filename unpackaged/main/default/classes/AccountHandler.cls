public class AccountHandler {
    public static void createAccount(String name) {
        if (String.isEmpty(name)) {
            throw new IllegalArgumentException('Account name cannot be empty.');
        }
        
        Account acc = new Account(Name = name);
        insert acc;
    }
}

// Test Deployment