// Globals
	int intGLOB_150 = 1;
// Prototypes
int sub1();

int sub1() {
	return GetGlobalNumber("END_TRASK_DLG");
}

int StartingConditional() {
	return (sub1() == intGLOB_150);
}

