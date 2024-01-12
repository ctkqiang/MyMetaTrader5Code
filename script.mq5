//+------------------------------------------------------------------+
//|                                                     ctkqiang.mq5 |
//|                                         Copyright 2024, ctkqiang |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, ctkqiang"
#property link      "https://www.mql5.com"
#property version   "1.00"

#import "Trade\TradeEx.mqh"
   bool AccountInfo(int type, double &value);
#import

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
void OnStart()
{
    // Declare variables to store account information
    double balance;
    double equity;
    double margin; 
    double freeMargin;

    if (AccountInfo(ACCOUNT_BALANCE, balance) && AccountInfo(ACCOUNT_EQUITY, equity) && AccountInfo(ACCOUNT_MARGIN, margin) && AccountInfo(ACCOUNT_FREEMARGIN, freeMargin))
    {
        Print("Balance: ", balance);
        Print("Equity: ", equity);
        Print("Margin: ", margin);
        Print("Free Margin: ", freeMargin);
    }
    else
    {
        Print("Error getting account information!");
    }
}
//+------------------------------------------------------------------+