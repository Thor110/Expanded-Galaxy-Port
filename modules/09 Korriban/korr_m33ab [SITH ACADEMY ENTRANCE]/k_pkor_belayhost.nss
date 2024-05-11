void main() {
	object oPC = GetFirstPC();
	ChangeToStandardFaction(OBJECT_SELF, 1);
	DelayCommand(0.5, ActionAttack(oPC, 0));
}

