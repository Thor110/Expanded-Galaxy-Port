void main() {
	if ((GetExitingObject() == GetFirstPC())) {
		SetGlobalBoolean("END_PC_ON_BRIDGE", 0);
	}
	if ((GetExitingObject() == GetObjectByTag("end_trask", 0))) {
		SetGlobalBoolean("END_TRASK_ON_BRIDGE", 0);
	}
}

