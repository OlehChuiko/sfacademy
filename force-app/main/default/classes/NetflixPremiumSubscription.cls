public with sharing class NetflixPremiumSubscription implements INetflixSubscription{

    public Integer getNumberOfScreens() {
        return 2;
    }
 
    public Integer getNumberOfShows() {
        return 2000;
    }
}