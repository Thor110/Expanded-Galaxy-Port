// Prototypes
int sub1(object objectParam1, int intParam2);

int sub1(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
		if (sub1(OBJECT_SELF, 9)) {
			ActionForceMoveToObject(GetObjectByTag("tar03_sw03aae", 0), 0, 1.0, 30.0);
		}
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
