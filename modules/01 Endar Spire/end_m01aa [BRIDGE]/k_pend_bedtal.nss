int StartingConditional() {
	object oPC = GetFirstPC();//male soldier
	if((GetLevelByClass(0, oPC) > 0) && (GetGender(oPC) == 0))
  return TRUE;
return FALSE;
}

