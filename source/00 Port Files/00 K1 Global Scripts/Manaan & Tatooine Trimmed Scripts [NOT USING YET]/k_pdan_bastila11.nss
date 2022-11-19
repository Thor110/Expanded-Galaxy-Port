#include "k_inc_dan"
void main()
{
   // SignalEvent(GetObjectByTag(sBastilaTag),EventUserDefined(10));
   // SignalEvent(GetNearestObjectByTag("dan13_carth"),EventUserDefined(10));
   ExecuteScript("k_pdan_carthmv",GetObjectByTag("Carth"));
   ExecuteScript("k_pdan_bastmv",GetObjectByTag("Bastila"));
}
