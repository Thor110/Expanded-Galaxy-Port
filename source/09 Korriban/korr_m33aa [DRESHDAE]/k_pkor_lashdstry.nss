void main() {
	object oKor33_lasfriend1 = GetObjectByTag("kor33_lasfriend1", 0);
	object oKor33_lasfriend2 = GetObjectByTag("kor33_lasfriend2", 0);
	object oKor33_lashowe = GetObjectByTag("kor33_lashowe", 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DestroyObject(oKor33_lasfriend1, 0.0, 1, 0.0);
	DestroyObject(oKor33_lasfriend2, 0.0, 1, 0.0);
	DelayCommand(0.5, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}

