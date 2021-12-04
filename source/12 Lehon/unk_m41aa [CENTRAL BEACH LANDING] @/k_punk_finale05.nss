void main() {
	ActionPauseConversation();
	SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
	ActionWait(1.5);
	DelayCommand(1.5, SetFacingPoint(GetPosition(GetObjectByTag("playerend", 0))));
	DelayCommand(1.5, AssignCommand(GetObjectByTag("cand", 0), SetFacingPoint(GetPosition(GetObjectByTag("playerend", 0)))));
	DelayCommand(1.5, AssignCommand(GetObjectByTag("mission", 0), SetFacingPoint(GetPosition(GetObjectByTag("playerend", 0)))));
	DelayCommand(1.5, AssignCommand(GetObjectByTag("zaalbar", 0), SetFacingPoint(GetPosition(GetObjectByTag("playerend", 0)))));
	DelayCommand(1.5, AssignCommand(GetObjectByTag("hk47", 0), SetFacingPoint(GetPosition(GetObjectByTag("playerend", 0)))));
	DelayCommand(1.5, AssignCommand(GetObjectByTag("t3m4", 0), SetFacingPoint(GetPosition(GetObjectByTag("playerend", 0)))));
	ActionWait(1.0);
	ActionResumeConversation();
}

