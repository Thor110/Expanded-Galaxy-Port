void main() {
	object object1 = GetModuleItemAcquired();
	if ((GetTag(object1) == "dan14_diary")) {
		SetGlobalBoolean("DAN_DIARY_DONE", 1);
		SetGlobalNumber("DAN_CASUS_PLOT", 2);
	}
}

