@isTest
public class ExamplePageControllerTest {
    @isTest
    private static void testController() {
        PageReference pageReference = Page.SuccessPage;
        Test.setCurrentPage(pageReference);

        ExamplePageController controller = new ExamplePageController();
        String nextPage = controller.save().getUrl();
        System.assertEquals('/apex/failpage?error=noParam',nextPage);

        ApexPages.currentPage().getParameters().put('qp', 'yyyy');

        controller = new ExamplePageController();
        controller.setLastName('L');
        controller.setFirstName('F');
        controller.setCompany('LFCorporations');
        controller.setEmail('lf@gmail.com');
        nextPage = controller.save().getUrl();
        System.assertEquals('apex/successpage', nextPage);
        List<Lead> leads = [SELECT Id, Email FROM Lead WHERE Company = 'LFCorporations'];
        System.assertEquals('lf@gmail.com', leads[0].Email);
    }
}