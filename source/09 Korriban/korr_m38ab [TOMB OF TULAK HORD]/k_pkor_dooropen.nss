void main() {
	object oKor38b_door4 = GetObjectByTag("kor38b_door4", 0);
	ActionPauseConversation();
	AssignCommand(oKor38b_door4, ActionOpenDoor(oKor38b_door4));
	ActionWait(2.0);
	ActionResumeConversation();
}

