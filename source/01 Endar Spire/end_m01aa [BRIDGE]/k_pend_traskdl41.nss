void main() {
	object oEnd_door01 = GetObjectByTag("end_door01", 0);
	AssignCommand(oEnd_door01, ActionCloseDoor(oEnd_door01));
	SetLocked(oEnd_door01, 1);
}

