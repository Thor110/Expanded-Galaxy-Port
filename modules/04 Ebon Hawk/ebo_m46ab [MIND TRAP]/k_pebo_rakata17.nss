void main() {
	object oNearestBP_JUMP0_WP = GetNearestObjectByTag("BP_JUMP0_WP", OBJECT_SELF, 1);
	object oNPC = GetPartyMemberByIndex(0);
	SetGlobalBoolean("EBO_RAKATA_TALK", 1);
	AssignCommand(oNPC, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oNearestBP_JUMP0_WP))));
	DelayCommand(0.4, AssignCommand(oNPC, SetFacing(GetFacing(oNearestBP_JUMP0_WP))));
}
