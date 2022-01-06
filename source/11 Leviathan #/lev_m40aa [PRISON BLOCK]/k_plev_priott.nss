int StartingConditional() {
	int int1 = ((GetGlobalNumber("LEV_RIOTS") & 1) && (!(GetGlobalNumber("LEV_RIOTS") & 4)));
	return int1;
}

