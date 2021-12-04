void main() {
	ActionPauseConversation();
	ActionWait(2.0);
	object oPC = GetFirstPC();
	DelayCommand(0.1, AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("messenger", 0)))));
	ActionResumeConversation();
}

