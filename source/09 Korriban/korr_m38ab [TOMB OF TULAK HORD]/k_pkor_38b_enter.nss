void main() {
	object oPC = GetFirstPC();
	object oKor38b_tukataqun = GetObjectByTag("kor38b_tukataqun", 0);
	if ((GetEnteringObject() == oPC)) {
		if ((GetGlobalBoolean("KOR_TUKATAQUEEN") && GetIsObjectValid(oKor38b_tukataqun))) {
			DestroyObject(oKor38b_tukataqun, 0.0, 0, 0.0);
		}
	}
}

