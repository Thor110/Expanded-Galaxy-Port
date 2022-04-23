// Prototypes
int sub1();

int sub1() {
	int int1 = d2(1);
	int int3 = 0;
	if ((int1 == 1)) {
		int3 = 9;
	}
	else {
		int3 = 29;
	}
	return int3;
}

void main() {
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(0);
	object object5 = GetPartyMemberByIndex(1);
	object object7 = GetPartyMemberByIndex(2);
	if ((oPC == oNPC)) {
		if (GetIsDebilitated(object5)) {
			if (GetIsDebilitated(object7)) {
				ActionAttack(oNPC, 0);
			}
			else {
				ActionCastSpellAtObject(sub1(), object7, 0, 0, 0, 0, 0);
			}
		}
		else {
			ActionCastSpellAtObject(sub1(), object5, 0, 0, 0, 0, 0);
		}
	}
	else {
		if ((oPC == object5)) {
			if (GetIsDebilitated(oNPC)) {
				if (GetIsDebilitated(object7)) {
					ActionAttack(object5, 0);
				}
				else {
					ActionCastSpellAtObject(sub1(), object7, 0, 0, 0, 0, 0);
				}
			}
			else {
				ActionCastSpellAtObject(sub1(), oNPC, 0, 0, 0, 0, 0);
			}
		}
		else {
			if ((oPC == object7)) {
				if (GetIsDebilitated(oNPC)) {
					if (GetIsDebilitated(object5)) {
						ActionAttack(object7, 0);
					}
					else {
						ActionCastSpellAtObject(sub1(), object5, 0, 0, 0, 0, 0);
					}
				}
				else {
					ActionCastSpellAtObject(sub1(), oNPC, 0, 0, 0, 0, 0);
				}
			}
		}
	}
}

