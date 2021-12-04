void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		SetGlobalBoolean("END_PC_ON_BRIDGE", 1);
	}
	if ((GetEnteringObject() == GetObjectByTag("end_trask", 0))) {
		SetGlobalBoolean("END_TRASK_ON_BRIDGE", 1);
	}
}

