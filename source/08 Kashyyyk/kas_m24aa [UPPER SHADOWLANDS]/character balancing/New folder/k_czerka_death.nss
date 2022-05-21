void main(){
  if(GetIsDead(GetObjectByTag("kas24_pgener_01")) && GetIsDead(GetObjectByTag("kas24_pgener_02")) &&
    GetIsDead(GetObjectByTag("kas24_pgener_03")) && GetIsDead(GetObjectByTag("kas24_pgener_04")) && GetIsDead(GetObjectByTag("kas24_pgener_05"))) {
    //SetGlobalNumber("kas_PoachersDead",5);
    AddJournalQuestEntry("kas24_removepoachers", 40, 1);
    if ((GetJournalEntry("kas24_tachpoaching") > 0)) {
      AddJournalQuestEntry("kas24_tachpoaching", 50, 1);
    }
  }
}