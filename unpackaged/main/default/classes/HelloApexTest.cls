@isTest
public class HelloApexTest {
    @isTest
    static void testGreet() {
        // Arrange 
        String name = 'World';
        
        // Act
        String result = HelloApex.greet(name);
        
        // Assert
        System.assertEquals('Hello, World!', result, 'The greeting message is incorrect.');
    }
    
    @isTest
    static void testGreetMultiple() {
        // Arrange
        List<String> names = new List<String>{'Alice', 'Bob', 'Charlie'};
        
        // Act
        String result = HelloApex.greetMultiple(names);
        
        // Assert
        System.assertEquals('Hello, Alice, Bob, Charlie!', result, 'The multiple greeting message is incorrect.');
    }
    
    @isTest
    static void testGreetMultipleEmpty() {
        // Act
        String result = HelloApex.greetMultiple(new List<String>());
        
        // Assert
        System.assertEquals('Hello, everyone!', result, 'The greeting for empty list is incorrect.');
    }


}