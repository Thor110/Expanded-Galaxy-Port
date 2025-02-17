int StartingConditional() {
	object oPC = GetFirstPC();
	if(((GetLevelByClass(4, oPC) > 0) && (GetGender(oPC) == 0)) || ((GetLevelByClass(5, oPC) > 0) && (GetGender(oPC) == 1)))
  return TRUE;
return FALSE;
}

