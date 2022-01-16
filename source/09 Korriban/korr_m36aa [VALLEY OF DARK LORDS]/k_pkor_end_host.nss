void main() {
	object oPC = GetFirstPC();
	object oKor36_kor35 = GetObjectByTag("kor36_kor35", 0);
	AssignCommand(oKor36_kor35, ActionCloseDoor(oKor36_kor35));
	SetLocked(oKor36_kor35, 1);
	SetGlobalBoolean("KOR_END_HOSTILE", 1);
	ChangeFactionByFaction(5, 1);
	ChangeFactionByFaction(2, 1);
	DelayCommand(0.5, ActionAttack(oPC, 0));
}

