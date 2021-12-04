void main() {
	object oEntering = GetEnteringObject();
	object oNearestLev40_wpairlock = GetNearestObjectByTag("lev40_wpairlock", oEntering, 1);
	if ((GetTag(oEntering) == "darthmalak400")) {
		AssignCommand(oEntering, ActionJumpToObject(oNearestLev40_wpairlock, 0));
		AssignCommand(oEntering, SetFacing(GetFacing(oNearestLev40_wpairlock)));
	}
}

