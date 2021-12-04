void main() {
	object oLev40_celldoor = GetObjectByTag("lev40_celldoor", 0);
	AssignCommand(oLev40_celldoor, ActionOpenDoor(oLev40_celldoor));
}

