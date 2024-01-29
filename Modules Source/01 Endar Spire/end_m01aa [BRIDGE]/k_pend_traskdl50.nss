
	int intGLOB_164 = 15;
// Prototypes
void sub1(int intParam1);

void sub1(int intParam1) {
	SetGlobalNumber("END_TRASK_DLG", intParam1);
}

void main() {
	sub1(intGLOB_164);
  SetGlobalNumber("End_TraskTalk",11);
	CreateItemOnObject("g_i_medeqpmnt01", GetFirstPC(), 1);
	CreateItemOnObject("g_i_medeqpmnt02", GetFirstPC(), 1);
  AssignCommand(GetObjectByTag("end_trask"), ClearAllActions());
}

