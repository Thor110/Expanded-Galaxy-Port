void main() {
	object oEnd_door03 = GetObjectByTag("end_door03", 0);
	SetLocked(oEnd_door03, 0);
	AssignCommand(oEnd_door03, ActionOpenDoor(oEnd_door03));
}

