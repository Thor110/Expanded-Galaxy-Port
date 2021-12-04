void main() {
	ChangeFactionByFaction(5, 1);
	object oKor37_bridge1 = GetObjectByTag("kor37_bridge1", 0);
	object oKor37_bridge2 = GetObjectByTag("kor37_bridge2", 0);
	object oKor37_bridge3 = GetObjectByTag("kor37_bridge3", 0);
	object oKor37_bridge4 = GetObjectByTag("kor37_bridge4", 0);
	object oPC = GetFirstPC();
	if ((!GetIsDead(oKor37_bridge1))) {
		DelayCommand(0.5, AssignCommand(oKor37_bridge1, ActionAttack(oPC, 0)));
	}
	if ((!GetIsDead(oKor37_bridge2))) {
		DelayCommand(0.5, AssignCommand(oKor37_bridge2, ActionAttack(oPC, 0)));
	}
	if ((!GetIsDead(oKor37_bridge3))) {
		DelayCommand(0.5, AssignCommand(oKor37_bridge3, ActionAttack(oPC, 0)));
	}
	if ((!GetIsDead(oKor37_bridge4))) {
		DelayCommand(0.5, AssignCommand(oKor37_bridge4, ActionAttack(oPC, 0)));
	}
	if ((((GetIsDead(oKor37_bridge1) && GetIsDead(oKor37_bridge2)) && GetIsDead(oKor37_bridge3)) && GetIsDead(oKor37_bridge4))) {
		object oArea = GetArea(OBJECT_SELF);
		MusicBattleStop(oArea);
		DelayCommand(0.1, MusicBackgroundPlay(oArea));
	}
}

