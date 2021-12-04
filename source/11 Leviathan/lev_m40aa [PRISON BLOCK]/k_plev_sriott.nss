int StartingConditional() {
	int int1 = ((GetGlobalNumber("LEV_RIOTS") & 2) && (!(GetGlobalNumber("LEV_RIOTS") & 8)));
	return int1;
}

