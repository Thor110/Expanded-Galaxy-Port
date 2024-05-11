// Globals
	int intGLOB_174 = 30;
// Prototypes
int sub1();

int sub1() {
	return GetGlobalNumber("END_TRASK_DLG");
}

int StartingConditional() {
	return (sub1() == intGLOB_174);
}

