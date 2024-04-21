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
										else {
											if ((int1 == 1011)) {
											}
											else {
												if ((int1 == 4444)) {
													int int3 = 0;
													int int4;
													object object1;
													int4 = 1;
													while ((int4 < 17)) {
														object1 = GetObjectByTag(("sta_turret" + IntToString(int4)), 0);
														if ((GetIsObjectValid(object1) && (!GetIsDead(object1)))) {
															int3 = (int3 + 1);
														}
														(int4++);
													}
													if ((int3 == 0)) {
														SetLocked(OBJECT_SELF, 0);
														ActionOpenDoor(OBJECT_SELF);
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
		}
	}
}
