/*
 * Access Specifier : to give the security or access to the class, method or variable
 * 
 * 1. global :: If you want to call apex class outside the salesforce so that time we use this.
 * 				Note: In integration we use Global AccessSpecifier
 * 2. public :: If you want to call apex class anywhere inside the salesforce so that time we use this.
 * 3. private :: If you dont want to give permission or access to the class we can call it in inside the salesforce.
 * 4. protected :: If you dont want to give access to the class in Parent class
*/

/*
Class: keyword : is a collection of data members and methods.

*/
public class FirstClass {

    //single line
    /*
	Multiple line
	*/
    public String stdName= 'shilpi raj';
    public String stdPhone= '64877976';
    
    public FirstClass(){
        //java : System.out.println();
        System.debug('Hello World!');
        System.debug('Student Name= '+stdName); //if you wont assign any value, it will take null as value
        System.debug('Student Phone= '+stdPhone);
    }
    public void firstMethod(){
        System.debug('I am in First Method');
        System.debug('Student Name= '+stdName); //if you wont assign any value, it will take null as value
        System.debug('Student Phone= '+stdPhone);
    }
}