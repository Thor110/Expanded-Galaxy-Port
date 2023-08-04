void main() {
	object oTar05_stampy = GetObjectByTag("tar05_stampy", 0);
	object oTar05_corpsepile = GetObjectByTag("tar05_corpsepile", 0);
	ActionPauseConversation();
	AssignCommand(oTar05_stampy, ActionPlayAnimation(119, 1.0, 0.0));
	PlaySound("c_rancor_atk1");
	ActionWait(3.0);
	ActionResumeConversation();
}

