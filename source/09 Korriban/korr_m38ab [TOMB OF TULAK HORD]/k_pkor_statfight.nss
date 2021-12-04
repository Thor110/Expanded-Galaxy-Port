void main() {
	ChangeToStandardFaction(OBJECT_SELF, 1);
	object oSpeaker = GetPCSpeaker();
	ActionAttack(oSpeaker, 0);
}

