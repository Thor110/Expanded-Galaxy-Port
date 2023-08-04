// Prototypes
void sub1();

void sub1() {
	SetGlobalNumber("K_CURRENT_PLANET", 15);
	StartNewModule("danm13", "", "05_2A", "", "", "", "", "");
}

void main() {
	SetGlobalBoolean("k_vis_Dantooine", 1);
	sub1();
}

