// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

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

