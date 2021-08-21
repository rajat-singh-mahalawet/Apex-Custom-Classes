@isTest
public class TestVerifyDate {

    @isTest static void dateIn30(){
        Date dt = VerifyDate.CheckDates(Date.newInstance(2021, 01, 01) ,Date.newInstance(2021, 01, 15));
        system.assertEquals(Date.newInstance(2021, 01, 15),dt);
    }
    @isTest static void dateOut30(){
        Date dt = VerifyDate.CheckDates(Date.newInstance(2021, 01, 01) ,Date.newInstance(2021, 02, 15));
        system.assertEquals(Date.newInstance(2021, 01, 31),dt);
    }
    @isTest static void date2LessDate1(){
        Date dt = VerifyDate.CheckDates(Date.newInstance(2021, 01, 15) ,Date.newInstance(2021, 01, 01));
        system.assertEquals(Date.newInstance(2021, 01, 31),dt);
    }
}