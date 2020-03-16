public class AnimalLocator {
    public static String getAnimalNameById(Integer IDNumber)
    {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        String endpoint = 'https://th-apex-http-callout.herokuapp.com/animals/'+ IDNumber;
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String animalName = '';
        if (response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animal = (Map<String, Object>) results.get('animal');
            animalName = string.valueof(animal.get('name'));
            System.debug(animalName); 
        }
        return animalName;
	}
}