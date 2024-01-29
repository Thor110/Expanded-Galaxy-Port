

int StartingConditional() {

object oPC = GetFirstPC();
	if (((GetIsObjectValid(GetItemInSlot(4, oPC)) || GetIsObjectValid(GetItemInSlot(1, oPC))) )) {
	//if ((GetIsObjectValid(GetItemInSlot(4, oPC)) |||| GetIsObjectValid(GetItemInSlot(1, oPC)))) {
		return TRUE;
	}
  else {
    return FALSE;
  }
}
