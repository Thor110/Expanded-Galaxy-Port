void main() {
	//DelayCommand(0.1, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", ""));
	DelayCommand(20.0, SignalEvent(GetArea(OBJECT_SELF), EventUserDefined(10)));
	AssignCommand(GetObjectByTag("end_trask"), ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}