public class ParkLocator {
    public static String[] country(String ctry)
    {
        ParkService.ParksImplPort myPark = new ParkService.ParksImplPort();
         String[] parksname = myPark.byCountry(ctry);
        return parksname;
    }
}