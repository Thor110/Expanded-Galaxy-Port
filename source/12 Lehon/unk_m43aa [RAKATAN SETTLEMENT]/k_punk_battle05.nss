void main() {
	ActionPauseConversation();
	SetFacingPoint(GetPosition(GetObjectByTag("unk43_ranclever", 0)));
	ActionPlayAnimation(11, 1.0, 1.0);
	DelayCommand(0.90000004, AssignCommand(GetObjectByTag("unk43_ranclever", 0), ActionPlayAnimation(201, 1.0, 1.0)));
	ActionWait(2.0);
	ActionResumeConversation();
}

