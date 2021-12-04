int StartingConditional() {
	int int1;
	object oSpeaker = GetPCSpeaker();
	int1 = (GetGold(oSpeaker) > 99);
	return int1;
}

