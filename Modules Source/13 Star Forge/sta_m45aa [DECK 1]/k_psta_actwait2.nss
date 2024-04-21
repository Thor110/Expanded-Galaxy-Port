void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oNearestSTA_JUMP0_WP = GetNearestObjectByTag("STA_JUMP0_WP", OBJECT_SELF, 1);
	object oNearestSTA_JUMP1_WP = GetNearestObjectByTag("STA_JUMP1_WP", OBJECT_SELF, 1);
	object oNearestSTA_JUMP2_WP = GetNearestObjectByTag("STA_JUMP2_WP", OBJECT_SELF, 1);
	location location1 = GetLocation(GetNearestObjectByTag("STA_MOVE0_WP", OBJECT_SELF, 1));
	location location3 = GetLocation(GetNearestObjectByTag("STA_MOVE1_WP", OBJECT_SELF, 1));
	location location5 = GetLocation(GetNearestObjectByTag("STA_MOVE2_WP", OBJECT_SELF, 1));
	object oSta45a_assault = GetObjectByTag("sta45a_assault", 0);
	DelayCommand(6.0, AssignCommand(oSta45a_assault, PlaySound("c_drdmk1_slct")));
	ActionPauseConversation();
	DelayCommand(7.0, ActionResumeConversation());
}
