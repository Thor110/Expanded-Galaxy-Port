void main() {
	object oDan13_shipcenter = GetObjectByTag("dan13_shipcenter", 0);
	string string1 = (("wp_" + GetTag(OBJECT_SELF)) + "_0");
	int int1 = 1;
	object object3 = GetObjectByTag((string1 + IntToString(int1)), 0);
	ClearAllActions();
	while (GetIsObjectValid(object3)) {
		ActionMoveToObject(object3, 0, 1.0);
		ActionDoCommand(SetFacingPoint(GetPosition(oDan13_shipcenter)));
		ActionPlayAnimation(0, 1.0, 6.66);
		(int1++);
		object3 = GetObjectByTag((string1 + IntToString(int1)), 0);
	}
	ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(0)));
}

