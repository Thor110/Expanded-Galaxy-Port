void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
		object oSta45a_Sith01 = GetObjectByTag("sta45a_Sith01", 0);
		object oSta45a_Sith02 = GetObjectByTag("sta45a_Sith02", 0);
		object oSta45a_Sith03 = GetObjectByTag("sta45a_Sith03", 0);
		object oSta45a_Sith04 = GetObjectByTag("sta45a_Sith04", 0);
		string string1 = GetTag(OBJECT_SELF);
		string string3 = GetStringRight(string1, 1);
		object object9 = GetNearestObjectByTag((("STA_RETURN" + string3) + "_WP"), OBJECT_SELF, 1);
		location location1 = GetLocation(object9);
		if ((((((!GetIsObjectValid(oSta45a_Sith01)) && (!GetIsObjectValid(oSta45a_Sith02))) && (!GetIsObjectValid(oSta45a_Sith03))) && (!GetIsObjectValid(oSta45a_Sith04))) || (((GetIsDead(oSta45a_Sith01) && GetIsDead(oSta45a_Sith02)) && GetIsDead(oSta45a_Sith03)) && GetIsDead(oSta45a_Sith04)))) {
			if ((GetDistanceToObject(object9) > 1.0)) {
				ClearAllActions();
				ActionMoveToLocation(location1, 0);
			}
			else {
				SetFacing(GetFacing(object9));
			}
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
										else {
											if ((int1 == 1100)) {
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
