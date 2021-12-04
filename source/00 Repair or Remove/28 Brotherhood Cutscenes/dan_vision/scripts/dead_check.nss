int StartingConditional() {
	object oGuard1 = GetObjectByTag("guard1", 0);
	object oGuard2 = GetObjectByTag("guard2", 0);
	object oGuard3 = GetObjectByTag("guard3", 0);
	if (((((!GetIsObjectValid(oGuard1)) || GetIsDead(oGuard1)) && ((!GetIsObjectValid(oGuard2)) || GetIsDead(oGuard2))) && ((!GetIsObjectValid(oGuard3)) || GetIsDead(oGuard3)))) {
		return 1;
	}
	return 0;
}

