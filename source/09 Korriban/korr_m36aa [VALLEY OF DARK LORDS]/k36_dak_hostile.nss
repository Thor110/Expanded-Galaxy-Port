void main() {
	ChangeToStandardFaction(OBJECT_SELF, 1);
	object oPC = GetFirstPC();
	ActionAttack(oPC, 0);
}

