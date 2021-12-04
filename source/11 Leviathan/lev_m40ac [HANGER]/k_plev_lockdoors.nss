void main() {
	object oLev40_hngcntrlb = GetObjectByTag("lev40_blastdoorb", 0);
	AssignCommand(oLev40_hngcntrlb, ActionCloseDoor(oLev40_hngcntrlb));
	SetLocked(oLev40_hngcntrlb, 1);
	oLev40_hngcntrlb = GetObjectByTag("lev40_hngcntrlb", 0);
	AssignCommand(oLev40_hngcntrlb, ActionCloseDoor(oLev40_hngcntrlb));
	SetLocked(oLev40_hngcntrlb, 1);
}

