// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
}

void main() {
	ActionPauseConversation();
	DelayCommand(1.0, sub1(CreateObject(1, "unk41_holo", GetLocation(GetObjectByTag("spawn1", 0)), 1)));
	ActionWait(3.0);
	ActionResumeConversation();
}

