void main() {
	object oKor38b_jorakuln = GetObjectByTag("kor38b_jorakuln", 0);
	object oK38b_way_jorak1 = GetObjectByTag("k38b_way_jorak1", 0);
	ActionPauseConversation();
	AssignCommand(oKor38b_jorakuln, ActionMoveToObject(oK38b_way_jorak1, 1, 1.0));
	ActionResumeConversation();
}

