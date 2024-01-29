// Prototypes
int sub1();

int sub1() {
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalBoolean("K_CAPTURED_LEV");
	if (((nGlobal >= 40) && (int3 == 5))) {
		SetGlobalNumber("K_CURRENT_PLANET", 40);
		StartNewModule("ebo_m40aa", "", "", "", "", "", "", "");
		return 1;
	}
	return 0;
}

void main() {
	if ((!sub1())) {
		SetGlobalNumber("K_CURRENT_PLANET", 30);
	}
}

