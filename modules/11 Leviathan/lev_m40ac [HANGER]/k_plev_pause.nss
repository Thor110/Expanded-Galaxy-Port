// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	sub1(4.5);
	object oCarth = GetObjectByTag("Carth", 0);
	object oBastila = GetObjectByTag("Bastila", 0);
	if (((((((((((((((GetBaseItemType(GetItemInSlot(4, oCarth)) != 20) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 12)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 77)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 19)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 16)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 21)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 13)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 24)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 14)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 15)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 18)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 23)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 17)) && (GetBaseItemType(GetItemInSlot(4, oCarth)) != 22))) {
		CreateItemOnObject("carth_temp_gun", oCarth, 1);
		DelayCommand(1.0, AssignCommand(oCarth, ActionEquipMostDamagingRanged(OBJECT_INVALID)));
	}
}

