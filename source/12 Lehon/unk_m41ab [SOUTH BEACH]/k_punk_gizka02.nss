void main() {
	ActionPauseConversation();
	PlaySound("cs_gizkabeg");
	AssignCommand(GetObjectByTag("unk41_gizkax", 0), ActionPlayAnimation(108, 1.0, 0.0));
	ActionWait(1.0);
	ActionResumeConversation();
}

