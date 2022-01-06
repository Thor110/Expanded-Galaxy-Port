void main() {
	int int1 = (GetGlobalNumber("MAN_VOLUME_A") + 1);
	AurPostString(IntToString(int1), 5, 5, 5.0);
	if ((int1 == 1)) {
		ActionPlayAnimation(204, 1.0, 0.0);
	}
	else {
		if ((int1 == 2)) {
			ActionPlayAnimation(205, 1.0, 0.0);
		}
		else {
			if ((int1 == 3)) {
				ActionPlayAnimation(206, 1.0, 0.0);
			}
		}
	}
	SetGlobalNumber("MAN_VOLUME_A", int1);
}

