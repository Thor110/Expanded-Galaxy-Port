void main() {
	ActionPauseConversation();
	PlaySound("n_rakata_bat2");
	DelayCommand(0.3, AssignCommand(GetObjectByTag("unk41_blk1", 0), ActionPlayAnimation(108, 1.0, 1.0)));
	ActionWait(1.5);
	ActionResumeConversation();
}

