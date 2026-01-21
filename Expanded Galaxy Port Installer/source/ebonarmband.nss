int spotCheck()
{
  if (GetModuleName() == "ebo_m12aa" || GetModuleName() == "tar_m02af")
  {
    return TRUE;
  }
  return FALSE;
}
 
void main() {
  if (spotCheck() == TRUE) 
  {
    ShowPartySelectionGUI("armband", 0xFFFFFFFF, 0xFFFFFFFF);
  }
  else {
    if(GetIsInCombat(GetFirstPC()) && GetIsDead(GetFirstPC()))
    {
      BarkString(GetFirstPC(), 42402);
    }
    else
    {
      RemoveJournalQuestEntry("k_rapidtransit");
      DestroyObject(GetObjectByTag("K_LAST_LOCATION"), 0.0, FALSE, 0.0, 0);
      CreateObject(32, "g_lastlocal", GetLocation(GetFirstPC()),0);
      SetGlobalString("K_LAST_WAYPOINT", "K_LAST_LOCATION");
      SetGlobalString("K_LAST_MODULE", GetModuleName()); 
      if(GetGlobalBoolean("Tar_Destroyed") == FALSE)
      {
        StartNewModule("tar_m02af");
      }
      else
      {
        StartNewModule("ebo_m12aa");
      }
    }
  }
}