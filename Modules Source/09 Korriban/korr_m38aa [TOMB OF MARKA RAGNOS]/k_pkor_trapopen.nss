void main() {
	object oKor38_door7stat;
	object oKor38a_trapdroid;
	int int1;
	object oPC = GetFirstPC();
	ActionPauseConversation();
	int1 = 0;
	while ((int1 < 3)) {
		oKor38_door7stat = GetObjectByTag("kor38_door7stat", int1);
		SetLocked(oKor38_door7stat, 0);
		AssignCommand(oKor38_door7stat, ActionOpenDoor(oKor38_door7stat));
		oKor38a_trapdroid = GetObjectByTag("kor38a_trapdroid", int1);
		ChangeToStandardFaction(oKor38a_trapdroid, 1);
		AssignCommand(oKor38a_trapdroid, ActionAttack(oPC, 0));
		(int1++);
	}
	ActionWait(3.0);
	ActionResumeConversation();
}

