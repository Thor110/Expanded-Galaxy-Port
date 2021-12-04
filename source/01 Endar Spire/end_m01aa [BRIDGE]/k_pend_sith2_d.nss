void main() {
	if ((GetUserDefinedEventNumber() == 1007)) {
		int int2 = (GetGlobalNumber("END_ROOM5_DEAD") + 1);
		if ((int2 >= 3)) {
			SetLocked(GetObjectByTag("end_door16", 0), 0);
		}
		SetGlobalNumber("END_ROOM5_DEAD", int2);
	}
}

