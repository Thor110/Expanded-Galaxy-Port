void main() {
	object oKor35_victim = GetObjectByTag("kor35_victim", 0);
	if (GetIsObjectValid(oKor35_victim)) {
		DestroyObject(oKor35_victim, 0.0, 0, 0.0);
	}
}

