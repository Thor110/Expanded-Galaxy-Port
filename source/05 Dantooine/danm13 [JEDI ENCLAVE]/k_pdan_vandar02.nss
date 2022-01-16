void main() {
	int int1 = 0;
	object oDan13_juhani = GetObjectByTag("dan13_juhani", int1);
	while (GetIsObjectValid(oDan13_juhani)) {
		DelayCommand(0.1, DestroyObject(oDan13_juhani, 0.0, 0, 0.0));
		(int1++);
		oDan13_juhani = GetObjectByTag("dan13_juhani", int1);
	}
	SetGlobalBoolean("DAN_JUHANI_JOINED", 1);
	AddAvailableNPCByTemplate(5, "p_juhani");
}

