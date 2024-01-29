void main() {
	SetGlobalBoolean("EBO_SASHA_MANLOREY", 1);
	int int1 = GetGlobalBoolean("EBO_SASHA_MANLOREY");
	int int3 = GetGlobalBoolean("EBO_SASHA_STORY");
	int int5 = GetGlobalBoolean("EBO_SASHA_SEENOW");
	int int7 = GetGlobalBoolean("EBO_SASHA_STARBIG");
	int int9 = GetGlobalBoolean("EBO_SASHA_NINES");
	int int11 = GetGlobalBoolean("EBO_SASHA_BADS");
	int int13 = GetGlobalBoolean("EBO_SASHA_YUM");
	int int15 = GetGlobalBoolean("EBO_SASHA_ALLSAFE");
	int int17 = GetGlobalBoolean("EBO_SASHA_SUNHIGH");
	if (((((((((int3 == 1) && (int5 == 1)) && (int7 == 1)) && (int9 == 1)) && (int11 == 1)) && (int13 == 1)) && (int15 == 1)) && (int17 == 1))) {
		SetGlobalBoolean("EBO_SASHA_LANG", 1);
	}
}

