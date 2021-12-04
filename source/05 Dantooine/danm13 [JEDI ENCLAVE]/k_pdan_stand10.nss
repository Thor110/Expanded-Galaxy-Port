void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 10:
			ActionPlayAnimation(0, 1.0, 0.0);
			ActionPlayAnimation(0, 1.0, 0.0);
			if ((Random(3) == 0)) {
				ActionPlayAnimation(0, 1.0, 0.0);
			}
			if ((Random(3) == 0)) {
				ActionPlayAnimation(0, 1.0, 0.0);
			}
			if ((Random(3) == 0)) {
				ActionPlayAnimation(1, 1.0, 0.0);
			}
			if ((Random(3) == 0)) {
				ActionPlayAnimation(103, 1.0, 0.0);
			}
			if ((Random(3) == 0)) {
				ActionPlayAnimation(100, 1.0, 0.0);
			}
			ActionPlayAnimation(1, 1.0, 0.0);
			if ((Random(3) == 0)) {
				ActionPlayAnimation(101, 1.0, 0.0);
			}
			if ((Random(3) == 0)) {
				ActionPlayAnimation(102, 1.0, 0.0);
			}
			ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(10)));
	}
}

