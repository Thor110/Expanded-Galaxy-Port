void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oNearestSta_way_captive5 = GetNearestObjectByTag("sta_way_captive5", OBJECT_SELF, 1);
	ActionPauseConversation();
	AssignCommand(oSta_45darthMalak, ActionJumpToObject(oNearestSta_way_captive5, 1));
	ActionWait(1.0);
	ActionResumeConversation();
}

