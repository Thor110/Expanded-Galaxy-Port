void main() {
	ActionPauseConversation();
	SetGlobalBoolean("UNK_RAK_TEMPLE_OK", 1);
	AssignCommand(GetPCSpeaker(), ActionMoveToLocation(GetLocation(GetObjectByTag("templeend", 0)), 1));
	AssignCommand(GetObjectByTag("jolee", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("templeend", 0)), 1));
	AssignCommand(GetObjectByTag("juhani", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("templeend", 0)), 1));
	DelayCommand(2.0, SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0));
	ActionWait(3.5);
	ActionResumeConversation();
}

