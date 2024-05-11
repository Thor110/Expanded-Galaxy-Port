void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.5, 1.5, 0.0, 0.0, 0.0);
	DestroyObject(GetObjectByTag("dan14_ahlan", 0), 0.0, 1, 0.0);
	int int1 = 0;
	while ((int1 <= 4)) {
		DestroyObject(GetObjectByTag("pdan_mwdroid", int1), 0.0, 1, 0.0);
		(int1++);
	}
}

