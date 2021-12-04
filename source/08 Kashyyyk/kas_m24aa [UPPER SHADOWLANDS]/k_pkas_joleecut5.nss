void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oJolee = GetObjectByTag("Jolee", 0);
	object oKas24_joleemove1 = GetWaypointByTag("kas24_joleemove1");
	object oKas24_partymove = GetWaypointByTag("kas24_partymove");
	object oArea = GetArea(OBJECT_SELF);
	MusicBattleStop(oArea);
	DelayCommand(0.1, MusicBackgroundPlay(oArea));
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(object3, ClearAllActions());
	AssignCommand(object5, ClearAllActions());
	AssignCommand(oJolee, ClearAllActions());
	AssignCommand(oNPC, JumpToObject(oKas24_partymove, 1));
	AssignCommand(object3, JumpToObject(oKas24_partymove, 1));
	AssignCommand(object5, JumpToObject(oKas24_partymove, 1));
	AssignCommand(oJolee, JumpToObject(oKas24_joleemove1, 1));
}

