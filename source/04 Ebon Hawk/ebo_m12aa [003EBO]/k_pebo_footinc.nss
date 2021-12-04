void main() {
	SetGlobalNumber("Ebo_TriggerCount", (GetGlobalNumber("Ebo_TriggerCount") + 1));
	AssignCommand(GetFirstPC(), PlayAnimation(100, 1.0, 0.0));
	DelayCommand(1.1, AssignCommand(GetFirstPC(), PlayAnimation(101, 1.0, 0.0)));
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}

