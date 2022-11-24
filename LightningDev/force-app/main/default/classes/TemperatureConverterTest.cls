@isTest
private class TemperatureConverterTest 
{
 @isTest static void testwarmtemp()
 {
     decimal celsuis=TempConv.fahrenheitTocelsuis(70);
     system.assertEquals(21.1111111111111111111111111111111, celsuis);
 }
    @isTest static void testfreezingpoint()
    {
        decimal celsuis= TempConv.fahrenheitTocelsuis(32);
        system.assertEquals(0, celsuis);
    }
    @isTest static void testboilingingpoint()
    {
        decimal celsuis= TempConv.fahrenheitTocelsuis(212);
        system.assertEquals(100, celsuis,'Boiling point temperature is not expected.');
    }
}