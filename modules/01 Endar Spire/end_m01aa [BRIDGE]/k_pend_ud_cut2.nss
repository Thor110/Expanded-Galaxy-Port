void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
	}
	else {
		if ((int1 == 1002)) {
		}
		else {
			if ((int1 == 1003)) {
			}
			else {
				if ((int1 == 1004)) {
				}
				else {
					if ((int1 == 1005)) {
					}
					else {
						if ((int1 == 1006)) {
						}
						else {
							if ((int1 == 1007)) {
								string string1 = GetTag(OBJECT_SELF);
								object oEnd01_sceneobj02 = GetObjectByTag("end01_sceneobj02", 0);
								string string3 = "end_sith2";
								string string4 = "end_cut2_sith5";
								string string5 = "end_cut2_soldier4";
								string string6 = "end_soldier2";
								location location1 = GetLocation(GetObjectByTag("end_grenade", 0));
								object oEnd_cut2_soldier1 = GetObjectByTag("end_cut2_soldier1", 0);
								object oEnd_cut2_soldier2 = GetObjectByTag("end_cut2_soldier2", 0);
								object oEnd_cut2_soldier3 = GetObjectByTag("end_cut2_soldier3", 0);
								object oEnd_cut2_sith2 = GetObjectByTag("end_cut2_sith2", 0);
								object oEnd_cut2_sith3 = GetObjectByTag("end_cut2_sith3", 0);
								object oEnd_cut2_sith5 = GetObjectByTag("end_cut2_sith5", 0);
								int int3;
								if ((string1 == string3)) {
									int3 = 26;
								}
								else {
									if ((string1 == string4)) {
										int3 = 35;
										DelayCommand(1.0, AssignCommand(oEnd_cut2_soldier1, CutsceneAttack(oEnd_cut2_sith2, 239, 4, 0)));
									}
									else {
										if ((string1 == string5)) {
											int3 = 34;
											AssignCommand(oEnd_cut2_sith3, DelayCommand(0.7, ActionMoveToLocation(location1, 1)));
										}
										else {
											if ((string1 == string6)) {
												int3 = 22;
											}
										}
									}
								}
								DelayCommand(0.5, SetDialogPlaceableCamera(int3));
								AssignCommand(oEnd01_sceneobj02, DelayCommand(2.2, ActionResumeConversation()));
							}
							else {
								if ((int1 == 1008)) {
								}
								else {
									if ((int1 == 1009)) {
									}
									else {
										if ((int1 == 1010)) {
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
