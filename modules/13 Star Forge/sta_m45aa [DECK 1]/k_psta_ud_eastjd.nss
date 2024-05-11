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
											if ((int1 == 145)) {
												object oSta_way_jedi = GetObjectByTag("sta_way_jedi", 0);
												object oSta_way_east = GetObjectByTag("sta_way_east", 0);
												ActionMoveToObject(oSta_way_jedi, 1, 1.0);
												ActionMoveToObject(oSta_way_east, 1, 1.0);
												ActionDoCommand(ChangeToStandardFaction(OBJECT_SELF, 2));
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
