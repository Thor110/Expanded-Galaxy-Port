void main() {
	float float1 = 1.0;
	if ((GetGlobalBoolean("DAN_JUHANI_FIGHT") && (GetLastPlayerDied() == GetFirstPC()))) {
		SetGlobalFadeOut(0.0, float1, 0.0, 0.0, 0.0);
		EndGame(1);
	}
}

