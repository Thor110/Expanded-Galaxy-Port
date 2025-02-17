// Prototypes
void sub2();
void sub1();

void sub2() {
	int int1 = GetGlobalBoolean("DAN_EXTRA");
	int int3 = ((GetGlobalNumber("DAN_EXTRA_XP2") + 128) << 8);
	int int5 = (GetGlobalNumber("DAN_EXTRA_XP") + 128);
	int int7 = (int3 | int5);
	if (int1) {
		GiveXPToCreature(GetFirstPC(), int7);
	}
	SetGlobalNumber("DAN_EXTRA_XP", 0);
	SetGlobalNumber("DAN_EXTRA_XP2", 0);
	ShowLevelUpGUI();
}

void sub1() {
	int nGlobal = GetGlobalNumber("DAN_PATH_STATE");
	if ((nGlobal > 0)) {
		if ((nGlobal == 1)) {
AddMultiClass(CLASS_TYPE_JEDIWEAPONMASTER, GetFirstPC());

		}
		else {
			if ((nGlobal == 2)) {
AddMultiClass(CLASS_TYPE_JEDIWATCHMAN, GetFirstPC());
			}
			else {
				if ((nGlobal == 3)) {
AddMultiClass(CLASS_TYPE_JEDIMASTER, GetFirstPC());
				}
			}
		}
	}
	CancelPostDialogCharacterSwitch();
	NoClicksFor(0.6);
	DelayCommand(0.5, sub2());
}

void main() {
	object oPC = GetFirstPC();
	if ((((GetLevelByClass(3, oPC) == 0) && (GetLevelByClass(5, oPC) == 0)) && (GetLevelByClass(4, oPC) == 0))) {
		sub1();
	}
	ClearAllActions();
}

