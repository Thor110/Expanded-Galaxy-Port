void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 10:
			ActionPlayAnimation(200, 1.0, 0.0);
			ActionPlayAnimation(204, 1.0, 0.0);
			ActionDoCommand(SignalEvent(GetObjectByTag("dan15_starmapobj", 0), EventUserDefined(0)));
			break;
	}
}

