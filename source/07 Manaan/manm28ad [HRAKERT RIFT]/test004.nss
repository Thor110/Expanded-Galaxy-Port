void main() {
	int int1 = (GetGlobalNumber("MAN_VOLUME_A") + 1);
	AurPostString(IntToString(int1), 5, 5, 5.0);
	if ((int1 == 1)) {
		AssignCommand(GetObjectByTag("tester01", 0), ActionPlayAnimation(204, 1.0, 0.0));
	}
	else {
		if ((int1 == 2)) {
			AssignCommand(GetObjectByTag("tester01", 0), ActionPlayAnimation(205, 1.0, 0.0));
		}
		else {
			if ((int1 == 3)) {
				AssignCommand(GetObjectByTag("tester01", 0), ActionPlayAnimation(206, 1.0, 0.0));
			}
			else {
				if ((int1 == 4)) {
					AssignCommand(GetObjectByTag("tester01", 0), ActionPlayAnimation(207, 1.0, 0.0));
				}
				else {
					if ((int1 == 5)) {
						AssignCommand(GetObjectByTag("tester01", 0), ActionPlayAnimation(208, 1.0, 0.0));
					}
					else {
						if ((int1 == 6)) {
							AssignCommand(GetObjectByTag("tester01", 0), ActionPlayAnimation(209, 1.0, 0.0));
						}
					}
				}
			}
		}
	}
	SetGlobalNumber("MAN_VOLUME_A", int1);
}

