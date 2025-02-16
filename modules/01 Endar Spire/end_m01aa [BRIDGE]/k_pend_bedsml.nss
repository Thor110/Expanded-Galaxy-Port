int StartingConditional() {
	object oPC = GetFirstPC();
	if(((GetLevelByClass(1, oPC) > 0) && (GetGender(oPC) == 0)) || ((GetLevelByClass(2, oPC) > 0) && (GetGender(oPC) == 1)))
  return TRUE;
return FALSE;
}

