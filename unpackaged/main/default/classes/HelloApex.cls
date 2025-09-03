public class HelloApex {
    // Method to greet a single person
    public static String greet(String name) {
        return 'failing, ' + name ;
    }
    
    // Method to greet multiple people
    public static String greetMultiple(List<String> names) {
        if (names == null || names.isEmpty()) {
            return 'failing!';
        }
        
        String greeting = 'failing';
        for (String name : names) {
            greeting += ', ' + name;
        }
        greeting += '!';
        return greeting;
    }

   
}