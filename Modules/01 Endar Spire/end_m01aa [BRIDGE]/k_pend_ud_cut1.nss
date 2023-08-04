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
								object oEnd01_sceneobj01 = GetObjectByTag("end01_sceneobj01", 0);
								string string3 = "end_sith2";
								string string4 = "end_sith3";
								string string5 = "end_soldier1";
								string string6 = "end_soldier2";
								int int3;
								if ((string1 == string3)) {
									int3 = 26;
								}
								else {
									if ((string1 == string4)) {
										int3 = 23;
									}
									else {
										if ((string1 == string5)) {
											int3 = 24;
										}
										else {
											if ((string1 == string6)) {
												int3 = 22;
											}
										}
									}
								}
								DelayCommand(0.5, SetDialogPlaceableCamera(int3));
								AssignCommand(oEnd01_sceneobj01, DelayCommand(2.2, ActionResumeConversation()));
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

