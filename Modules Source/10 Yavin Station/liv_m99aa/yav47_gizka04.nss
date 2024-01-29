void main() {
	ChangeToStandardFaction(OBJECT_SELF, 1);
	AssignCommand(GetPCSpeaker(), ActionAttack(GetObjectByTag("yav47_gizka", 0), 0));
}

