

int StartingConditional() {

object oPC = GetFirstPC();
	if (((GetIsObjectValid(GetItemInSlot(4, oPC)) || GetIsObjectValid(GetItemInSlot(1, oPC))) || GetIsObjectValid(GetItemInSlot(10, oPC)))) {
	//if ((GetIsObjectValid(GetItemInSlot(4, oPC)) |||| GetIsObjectValid(GetItemInSlot(1, oPC)))) {
		return FALSE;
	}
  else {
    return TRUE;
  }
}