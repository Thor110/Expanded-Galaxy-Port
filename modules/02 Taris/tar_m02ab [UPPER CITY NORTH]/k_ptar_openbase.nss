// Globals
	int intGLOB_11 = 10;
// Prototypes
void sub3(object objectParam1, int intParam2);
int sub2(object objectParam1);
int sub1(object objectParam1);

void sub3(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

int sub2(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub1(object objectParam1) {
	string string1 = GetTag(objectParam1);
	if ((!GetIsObjectValid(objectParam1))) {
		return (-1);
	}
	if ((string1 == "bastila")) {
		return 0;
	}
	if ((string1 == "cand")) {
		return 1;
	}
	if ((string1 == "carth")) {
		return 2;
	}
	if ((string1 == "hk47")) {
		return 3;
	}
	if ((string1 == "jolee")) {
		return 4;
	}
	if ((string1 == "juhani")) {
		return 5;
	}
	if ((string1 == "mission")) {
		return 6;
	}
	if ((string1 == "t3m4")) {
		return 7;
	}
	if ((string1 == "zaalbar")) {
		return 8;
	}
	return (-1);
}

void main() {
  //BarkString(OBJECT_SELF, 22074);
	object oEntering = GetEnteringObject();
	object oTar02_drdtalker = GetObjectByTag("tar02_drdtalker", 0);
  if(GetEnteringObject()==GetObjectByTag("t3m4") && (!sub2(OBJECT_SELF))) {
	//if (((GetIsPC(oEntering) && (sub1(oEntering) == 7))/* && (!sub2(OBJECT_SELF))*/)) {
    BarkString(OBJECT_SELF, 22074);//not firing
		sub3(OBJECT_SELF, 1);
		AssignCommand(oTar02_drdtalker, ActionStartConversation(oTar02_drdtalker, "tar02_base_dlg", 0, 0, 0, "", "", "", "", "", "", 0));
		object oTar02_sithdoor = GetObjectByTag("tar02_sithdoor", 0);
		if (GetIsObjectValid(oTar02_sithdoor)) {
			AssignCommand(oTar02_sithdoor, ActionUnlockObject(oTar02_sithdoor));
		}
	}
}

