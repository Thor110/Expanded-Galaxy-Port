void main() {
	object oEntering = GetEnteringObject();
	if ((GetIsPC(oEntering) && (GetGlobalNumber("DAN_ROMANCE_PLOT") > 0))) {
		CreateItemOnObject("dan14_diary", oEntering, 1);
		SetGlobalNumber("DAN_CASUS_PLOT", 2);
	}
}

