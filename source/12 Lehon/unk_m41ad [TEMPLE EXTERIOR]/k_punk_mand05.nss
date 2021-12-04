// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
}

void main() {
	ActionPauseConversation();
	DelayCommand(0.2, sub1(CreateObject(1, "g_mandalor003", GetLocation(GetObjectByTag("mand7", 0)), 0)));
	DelayCommand(0.5, sub1(CreateObject(1, "g_mandalor002", GetLocation(GetObjectByTag("mand5", 0)), 0)));
	DelayCommand(0.7, sub1(CreateObject(1, "g_mandalor003", GetLocation(GetObjectByTag("mand4", 0)), 0)));
	DelayCommand(1.0, sub1(CreateObject(1, "g_mandalor002", GetLocation(GetObjectByTag("mand6", 0)), 0)));
	ActionWait(2.0);
	ActionResumeConversation();
}

