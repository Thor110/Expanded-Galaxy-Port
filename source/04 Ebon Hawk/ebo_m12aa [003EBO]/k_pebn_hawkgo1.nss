void main() {
	SetGlobalBoolean("K_AT_EBON_HAWK", 0);
	PrintString("Ebo1 - Client exit");
	int int1 = 0;
	while ((int1 < 32)) {
		(int1++);
		DestroyObject(GetObjectByTag("gizka", 0), 0.0, 0, 0.0);
	}
	DestroyObject(GetObjectByTag("Sasha", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("LurArka", 0), 0.0, 0, 0.0);
}

