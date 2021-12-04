void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 10)) {
		object oEnd_jedicut = GetObjectByTag("end_jedicut", 0);
		ActionMoveToObject(GetObjectByTag((("wp_" + GetTag(OBJECT_SELF)) + "_2"), 0), 1, 1.0);
		ActionDoCommand(SetFacingPoint(GetPosition(oEnd_jedicut)));
		ActionPlayAnimation(19, 1.0, (-1.0));
	}
	else {
		if ((int1 == 1007)) {
			//int nGlobal = GetGlobalNumber("END_ROOM8_DEAD");
			//SetGlobalNumber("END_ROOM8_DEAD", (nGlobal + 1));
		}
	}
}

