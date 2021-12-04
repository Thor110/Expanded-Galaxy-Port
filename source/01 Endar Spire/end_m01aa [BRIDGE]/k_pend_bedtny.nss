int StartingConditional() {
	object oPC = GetFirstPC();//female soldier
	if((GetLevelByClass(3, oPC) > 0) && (GetGender(oPC) == 1))
  return TRUE;
return FALSE;
}

