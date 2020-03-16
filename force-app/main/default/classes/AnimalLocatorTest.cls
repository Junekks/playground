@isTest
public class AnimalLocatorTest {
    
	@isTest static  void testGetCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
        String animalNameResponse = AnimalLocator.getAnimalNameById(1);
        System.assertEquals('chicken', animalNameResponse);
    }   
  
}