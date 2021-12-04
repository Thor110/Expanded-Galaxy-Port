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
      ShowPartySelectionGUI("earmband", 0xFFFFFFFF, 0xFFFFFFFF);
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
      StartNewModule("ebo_m12aa");
    }
  }
}