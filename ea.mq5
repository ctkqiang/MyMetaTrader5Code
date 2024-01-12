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
//| Expert initialization function On Start                          |
//+------------------------------------------------------------------+
void getAccountInfo()
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
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
{
//--- create timer
   EventSetTimer(60);

   if (TimeCurrent() % 60 == 0)
   {
        getAccountInfo();
   }
   
//---
   return(INIT_SUCCEEDED);
}
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
{
//--- destroy timer
   EventKillTimer();
   
}
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
{
//---
   
}
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
{
//---
   
}
//+------------------------------------------------------------------+
//| Trade function                                                   |
//+------------------------------------------------------------------+
void OnTrade()
{
//---
   
}
//+------------------------------------------------------------------+
//| TradeTransaction function                                        |
//+------------------------------------------------------------------+
void OnTradeTransaction(const MqlTradeTransaction& trans, const MqlTradeRequest& request, const MqlTradeResult& result)
{
//---
   
}
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id, const long &lparam, const double &dparam, const string &sparam)
{
//---
   
}
//+------------------------------------------------------------------+
//| BookEvent function                                               |
//+------------------------------------------------------------------+
void OnBookEvent(const string &symbol)
{
//---
   
}
//+------------------------------------------------------------------+
