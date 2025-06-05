public with sharing class AccountTriggerHandler {
  public static void CreateAccounts(List<Account> accts) {
    if (accts == null || accts.isEmpty()) {
      return;
    }
    for (Account a : accts) {
      if (a.ShippingState == a.BillingState) {
        System.debug('Shipping state matches billing state for account: ' + a.Name);
      }
    }
  }
}
