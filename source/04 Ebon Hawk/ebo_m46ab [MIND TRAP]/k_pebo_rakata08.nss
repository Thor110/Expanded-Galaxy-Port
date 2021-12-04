void main() {
	int nGlobal = GetGlobalNumber("EBO_PC_RIDDLE");
	int int3 = (nGlobal + 1);
	SetGlobalNumber("EBO_PC_RIDDLE", int3);
	SetGlobalBoolean("EBO_PUZZLE1", 1);
}

