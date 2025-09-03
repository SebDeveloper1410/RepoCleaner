public class AccountHandler {
    public static void createAccount(String name) {
        if (String.isEmpty(name)) {
// Comment Aftter creating the branch
            throw new IllegalArgumentException('Account name cannot be empty.');
        }
        
        Account acc = new Account(Name = name);
        insert acc;

// Comment Aftter creating the branch
    }
}

// Test Deployment
