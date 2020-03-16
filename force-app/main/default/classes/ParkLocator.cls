public class ParkLocator {
    public static List<String> country (String countryName) {
        ParkService.ParksImplPort country = 
            new ParkService.ParksImplPort();
        return country.byCountry(countryName);
    }
}