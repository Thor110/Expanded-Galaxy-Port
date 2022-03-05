int spotCheck()
{
    if ((GetModuleName() == "ebo_m12aa")) {
    return TRUE;
  }
  return FALSE;
}
 
void main() {
  if (spotCheck()==TRUE) 
  {
    if (GetStringLength(GetGlobalString("K_LAST_WAYPOINT")) <= 1)
    {
      RemoveJournalQuestEntry("k_rapidtransit");
    }
    else
    {
      ShowPartySelectionGUI("armband", 0xFFFFFFFF, 0xFFFFFFFF);
    }
  }
  else {
    if(GetIsInCombat(GetFirstPC())&&GetIsDead(GetFirstPC()))
    {
      BarkString(GetFirstPC(),42402);
    }
    else
    {
      if(!GetIsObjectValid(GetObjectByTag("K_LAST_LOCATION")))
      {
        CreateObject(32,"g_lastlocal",GetLocation(GetFirstPC()),0);
      }
      else
      {
        DestroyObject(GetObjectByTag("K_LAST_LOCATION"),0.0,FALSE,0.0,0);
        CreateObject(32,"g_lastlocal",GetLocation(GetFirstPC()),0);
      }
      SetGlobalString("K_LAST_WAYPOINT", "K_LAST_LOCATION");
      SetGlobalString("K_LAST_MODULE",GetModuleName()); 
      StartNewModule("ebo_m12aa");
    }
  }
}