/**
 * Created by oleh.chuiko on 04.05.2021.
 */

public with sharing class NetflixSubsriptionFactory {
    public static INetflixSubscription getInstance(String subscriptionType) {
        return (INetflixSubscription)Type.forName('Netflix' + subscriptionType + 'Subscription').newInstance();
    }
}