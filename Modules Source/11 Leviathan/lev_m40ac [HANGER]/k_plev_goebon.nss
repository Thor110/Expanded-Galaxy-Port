void main() {
	SetGlobalNumber("K_KOTOR_MASTER", 20);
	SetGlobalNumber("K_CAPTURED_LEV", 10);
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	DelayCommand(3.0, StartNewModule("ebo_m40ad", "", "", "", "", "", "", ""));
}

