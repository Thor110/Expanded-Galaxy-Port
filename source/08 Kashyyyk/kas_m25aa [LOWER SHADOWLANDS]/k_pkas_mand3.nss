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

// Prototypes
void sub2(string stringParam1, location locationParam2);
void sub1(float floatParam1);

void sub2(string stringParam1, location locationParam2) {
	CreateObject(1, stringParam1, locationParam2, 0);
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	string string1 = "kas25_mandalor02";
	string string2 = "kas25_mandalor03";
	location location1 = GetLocation(GetNearestObjectByTag("kas25_wp_mandenc2", OBJECT_SELF, 1));
	location location3 = GetLocation(GetNearestObjectByTag("kas25_wp_mandenc3", OBJECT_SELF, 1));
	sub1(2.6);
	sub2(string1, location1);
	DelayCommand(0.4, sub2(string2, location3));
}

