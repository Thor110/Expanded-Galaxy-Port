void main(){
  int iAllDead = 0;
  string sCreature = "";
  string sCreatureTag = "";
  object oCreature;
  if(GetIsObjectValid(GetObjectByTag("kas24_poffice_01")) == TRUE)
  {
    if(GetIsDead(GetObjectByTag("kas24_poffice_01")) == TRUE)
    {
      iAllDead++;
    }
  }
  else
  { // Let's assume they're dead since they no longer exist...
    iAllDead++;
  }
  int iCount;
  for(iCount = 0; iCount < 6; iCount++) {
    sCreatureTag = "kas24_pgener_0" + IntToString(iCount);
    oCreature = GetObjectByTag(sCreatureTag);
    if(GetIsObjectValid(oCreature) == TRUE)
    {
      if(GetIsDead(oCreature) == TRUE)
      {
        iAllDead++;
      }
    }
    else
    { // Let's assume they're dead since they no longer exist...
      iAllDead++;
    }
  }
  if(iAllDead == 6)
  {
    SetLocalBoolean(GetArea(OBJECT_SELF), 3, 1);
    AddJournalQuestEntry("kas24_removepoachers", 40, 1);
    if (GetJournalEntry("kas24_tachpoaching") > 0) {
      AddJournalQuestEntry("kas24_tachpoaching", 50, 1);
    }
  }
}