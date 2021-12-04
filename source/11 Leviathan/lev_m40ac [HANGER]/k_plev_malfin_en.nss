void main() {
	object oEntering = GetEnteringObject();
	object oNearestLev40_wpmalakfin = GetNearestObjectByTag("lev40_wpmalakfin", oEntering, 1);
	if ((GetTag(oEntering) == "darthmalak400")) {
		AssignCommand(oEntering, ActionJumpToObject(oNearestLev40_wpmalakfin, 0));
		AssignCommand(oEntering, SetFacing(GetFacing(oNearestLev40_wpmalakfin)));
	}
}

