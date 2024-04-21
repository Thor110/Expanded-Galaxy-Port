// Prototypes
void sub3();
void sub2();
void sub1(float floatParam1);

void sub3() {
	StartNewModule("STUNT_54a", "", "51", "", "", "", "", "");
}

void sub2() {
	StartNewModule("STUNT_56a", "", "56", "", "", "", "", "");
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	if ((GetGlobalNumber("G_FinalChoice") == 2)) {
		sub1(2.7);
		DelayCommand(2.6, sub2());
		DelayCommand(0.7, SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0));
	}
	else {
		sub1(4.7);
		DelayCommand(4.6, sub3());
		DelayCommand(2.7, SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0));
	}
}
