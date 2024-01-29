void main() {
	object oPC = GetFirstPC();
  if(GetLevelByClass(5, oPC) > 0)//scout
  {
    SetGlobalNumber("End_TraskTalk", 18);//8prev
  }
  else if(GetLevelByClass(4, oPC) > 0)//scoundrel
  {
    SetGlobalNumber("End_TraskTalk", 8);//18prev
  }
  else if(GetLevelByClass(3, oPC) > 0)//soldier
  {
    SetGlobalNumber("End_TraskTalk", 18);//18prev
  }
  DestroyObject(GetObjectByTag("end_trig02"));
  AddJournalQuestEntry("end_attack", 20, 1);
}

