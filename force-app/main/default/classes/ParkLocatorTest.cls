@isTest
private class ParkLocatorTest {
    @isTest static void testCallout() {              
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String name = 'Japan';
        List<String> result = ParkLocator.country(name);
        List<String> nationakParks = new list<String> {'Shiretoko National Park', 'Oze National Park', 'Hakusan National Park'};
        System.assertEquals(nationakParks, result); 
    }
}