void main() {
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
  AssignCommand(GetObjectByTag("yav47_suvam", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("suvamstart", 0))));
	AssignCommand(GetObjectByTag("yav47_suvam", 0), SetFacingPoint(GetPosition(GetObjectByTag("yav50_airlock", 0))));
	SetGlobalFadeIn(0.8, 0.2, 0.0, 0.0, 0.0);
	ActionWait(0.5);
  ActionResumeConversation();
  // This all works fine . . .
}

