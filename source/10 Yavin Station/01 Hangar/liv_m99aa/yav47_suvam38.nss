int StartingConditional() {
	int int1 = (((GetGlobalNumber("YAV_SUVAM_NUM") < 10) && (GetGlobalBoolean("YAV_SUVAMD") == 0)) && ((GetHasSpell(6, GetPCSpeaker()) == 1) || (GetHasSpell(14, GetPCSpeaker()) == 1)));
	return int1;
}

