void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 50:
			if ((GetObjectSeen(GetFirstPC(), OBJECT_SELF) == 0)) {
				location location1 = GetLocation(OBJECT_SELF);
				object oEnd_explode01 = GetObjectByTag("end_explode01", 0);
				ClearAllActions();
				ActionDoCommand(SetFacingPoint(GetPosition(oEnd_explode01)));
				ActionWait(1.0);
				ActionMoveToObject(oEnd_explode01, 1, 1.0);
				ActionPlayAnimation(100, 1.0, 0.0);
				ActionWait(0.5);
				ActionPlayAnimation(101, 1.0, 0.0);
				ActionWait(2.0);
				ActionMoveToLocation(location1, 0);
			}
	}
}

