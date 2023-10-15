// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	//object object1 = OBJECT_SELF;
	if (GetCommandable(OBJECT_SELF)) {
		ClearAllActions();
		CancelCombat(OBJECT_SELF);
		ActionMoveToObject(GetNearestObjectByTag("wp_homebase", OBJECT_SELF, 1), 1, 3.0);
		ActionDoCommand(SetCommandable(1, OBJECT_SELF));
		SetCommandable(0, OBJECT_SELF);
	}
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
		ActionPlayAnimation(16, 1.0, 7.0);
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
											if ((int1 == 1100)) {
												sub1("wp_homebase");
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

