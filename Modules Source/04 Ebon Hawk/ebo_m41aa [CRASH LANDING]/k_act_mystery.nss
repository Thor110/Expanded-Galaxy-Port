void main() {
	SetGlobalNumber("EBO_MYSTERY_BOX", 10);
	ActionPlayAnimation(203, 1.0, 0.0);
	DelayCommand(0.1, StartNewModule("ebo_m46ab", "", "", "", "", "", "", ""));
}

