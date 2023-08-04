// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	sub1("FIRING EXIT EVENT", 5, 5, 4.0);
	object oExiting = GetExitingObject();
	if (((!GetLoadFromSaveGame()) && (oExiting == GetFirstPC()))) {
		SetGlobalBoolean("K_PUNK_BEACH_RESET", 1);
		object oUnk41_blk1 = GetObjectByTag("unk41_blk1", 0);
		object oUnk41_blk2 = GetObjectByTag("unk41_blk2", 0);
		object oUnk41_blk3 = GetObjectByTag("unk41_blk3", 0);
		object oUnk41_blk4 = GetObjectByTag("unk41_blk4", 0);
		object oUnk41_blk5 = GetObjectByTag("unk41_blk5", 0);
		if (((((GetIsObjectValid(oUnk41_blk1) || GetIsObjectValid(oUnk41_blk2)) || GetIsObjectValid(oUnk41_blk3)) || GetIsObjectValid(oUnk41_blk4)) || GetIsObjectValid(oUnk41_blk5))) {
			if (GetIsObjectValid(oUnk41_blk1)) {
				DestroyObject(oUnk41_blk1, 0.0, 0, 0.0);
			}
			if (GetIsObjectValid(oUnk41_blk2)) {
				DestroyObject(oUnk41_blk2, 0.0, 0, 0.0);
			}
			if (GetIsObjectValid(oUnk41_blk3)) {
				DestroyObject(oUnk41_blk3, 0.0, 0, 0.0);
			}
			if (GetIsObjectValid(oUnk41_blk4)) {
				DestroyObject(oUnk41_blk4, 0.0, 0, 0.0);
			}
			if (GetIsObjectValid(oUnk41_blk5)) {
				DestroyObject(oUnk41_blk5, 0.0, 0, 0.0);
			}
		}
	}
}

