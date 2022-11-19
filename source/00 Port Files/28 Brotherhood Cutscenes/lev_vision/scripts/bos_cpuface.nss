void main() {
	ActionPauseConversation();
	ActionWait(4.0);
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	AssignCommand(oCpu_guy, ActionWait(1.5));
	AssignCommand(oCpu_guy, ActionDoCommand(SetFacingPoint(GetPosition(GetFirstPC()))));
	ActionResumeConversation();
}

