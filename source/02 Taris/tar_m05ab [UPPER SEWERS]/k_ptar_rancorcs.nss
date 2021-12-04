void main() {
	object oTar05_stampy = GetObjectByTag("tar05_stampy", 0);
	ChangeToStandardFaction(oTar05_stampy, 1);
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
}

