void main() {
	int nGlobal = GetGlobalNumber("DAN_YELLOW_STATE");
	SetGlobalNumber("DAN_YELLOW_STATE", (nGlobal + 1));
}

