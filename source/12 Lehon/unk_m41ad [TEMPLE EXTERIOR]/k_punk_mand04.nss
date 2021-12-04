// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
}

void main() {
	ActionPauseConversation();
	DelayCommand(0.2, sub1(CreateObject(1, "g_mandalor004", GetLocation(GetObjectByTag("mand1", 0)), 0)));
	DelayCommand(0.5, sub1(CreateObject(1, "g_mandalor002", GetLocation(GetObjectByTag("mand2", 0)), 0)));
	ActionWait(2.0);
	ActionResumeConversation();
}

