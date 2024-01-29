int StartingConditional() {
	int int1;
	object oSpeaker = GetPCSpeaker();
	int1 = (GetGold(oSpeaker) > 24);
	return int1;
}

