void main() {
	AssignCommand(GetFirstPC(), PlayAnimation(11, 1.0, 0.0));
	AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("WP_Mine0", 1), 0, 1.0));
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToObject(GetObjectByTag("WP_Mine0", 1), 0, 1.0));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToObject(GetObjectByTag("wp_Mine1", 1), 0, 1.0));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToObject(GetObjectByTag("wp_Mine2", 1), 0, 1.0));
}

