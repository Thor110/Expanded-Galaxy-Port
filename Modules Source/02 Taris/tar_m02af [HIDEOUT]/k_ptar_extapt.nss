// Globals
	int intGLOB_11 = 10;

// Prototypes
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

void sub2(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	if ((!sub1(OBJECT_SELF))) {//check door talked to flag
		sub2(OBJECT_SELF, 1);//set door talked to flag
		ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "");
		return;
	}
	ShowPartySelectionGUI("k_ptar_exitapt", 0xFFFFFFFF, 0xFFFFFFFF);
}

