@isTest
public class AccountValidatorTest {
    @isTest
    static void testValidateAccountName_ValidName() {
        // Test with a valid account name
        Test.startTest();
        // This should not throw an exception
        AccountValidator.validateAccountName('Valid Account Name');
        Test.stopTest();
        
        // If no exception is thrown, the test should pass
        System.assert(true); // This assertion is optional, as no exception means the test passes.
    }

    @isTest
    static void testValidateAccountName_InvalidName() {
        // Test with an invalid account name
        Test.startTest();
        try {
            AccountValidator.validateAccountName('Test Account');
            System.assert(false, 'Expected an exception for invalid account name.');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account name "Test Account" is not allowed.', e.getMessage());
        }
        Test.stopTest();
    }

    @isTest
    static void testValidateAccountName_EmptyName() {
        // Test with an empty account name
        Test.startTest();
        try {
            AccountValidator.validateAccountName('');
            System.assert(false, 'Expected an exception for empty account name.');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account name cannot be empty.', e.getMessage());
        }
        Test.stopTest();
    }

    @isTest
    static void testValidateAccountName_NullName() {
        // Test with a null account name
        Test.startTest();
        try {
            AccountValidator.validateAccountName(null);
            System.assert(false, 'Expected an exception for null account name.');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account name cannot be empty.', e.getMessage());
        }
        Test.stopTest();
    }
}