@isTest
global class ParkServiceMock implements WebServiceMock {
   global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        ParkService.byCountryResponse response_x = new ParkService.byCountryResponse();
        List<String> nationakParks = new list<String> {'Shiretoko National Park', 'Oze National Park', 'Hakusan National Park'};
        response_x.return_x = nationakParks;
        response.put('response_x', response_x); 
   }
}