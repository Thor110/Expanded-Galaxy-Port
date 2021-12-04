int hoCheck()
{
  if ((GetModuleName() == "tar_m02af")) {
    return TRUE;
  }
  return FALSE;
}



void main() {
  if (hoCheck()==TRUE) 
  {
    if (GetStringLength(GetGlobalString("K_LAST_WAYPOINT")) <= 1)
    {
      RemoveJournalQuestEntry("k_rapidtransit");
    }
    else
    {
      ShowPartySelectionGUI("tarmband", 0xFFFFFFFF, 0xFFFFFFFF);
    }
  }
  else {
    if(GetIsInCombat(GetFirstPC())&&GetIsDead(GetFirstPC()))
    {
      BarkString(GetFirstPC(),42402);
    }
    else
    {
      object oPC = GetFirstPC();
      object object1 = GetNearestObject(OBJECT_TYPE_WAYPOINT, oPC, 1);
      string string1 = GetTag(object1);
      SetGlobalString("K_LAST_WAYPOINT", string1);
      SetGlobalString("K_LAST_MODULE",GetModuleName()); 
      StartNewModule("tar_m02af");
    }
  }
}