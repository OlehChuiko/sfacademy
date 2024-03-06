/**
 * Created by ochuiko on 11/2/2019.
 */

public with sharing class XSSController {

    public String latestComment;
    public String newComment{get;set;}
    public List<Comment__c> getComments(){
        List<Comment__c> comments = [
            SELECT Id,
                   Name,
                   Text1__c,
                   CreatedDate,
                   CreatedBy.Name
            FROM Comment__c
            ORDER BY CreatedDate DESC
        ];
        if(!comments.isEmpty()){ 
            latestComment = comments.get(0).Text1__c;
        }
        return comments;
    }
    public String getLatestComment(){
        return latestComment;
    }
    public PageReference save(){
        Comment__c c = new Comment__c();
        c.Text1__c = newComment;
        insert c;
        newComment = '';
        return ApexPages.currentPage();
    }

    //<img src=x onerror="alert(document.cookie);"></img>
    //JSENCODE(HTMLENCODE(LatestComment))
}