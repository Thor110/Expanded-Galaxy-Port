void main() {
	SetGlobalFadeOut(0.1, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(0.5, StartNewModule("korr_m35aa", "", "", "", "", "", "", ""));
	DelayCommand(1.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}

