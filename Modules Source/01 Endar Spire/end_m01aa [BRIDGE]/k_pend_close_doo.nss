void main() {
	object oEntering = GetEnteringObject();
	object oNearestEnd_door02 = GetNearestObjectByTag("end_door02", OBJECT_SELF, 1);
	if (GetIsPC(oEntering)) {
		AssignCommand(oNearestEnd_door02, ActionCloseDoor(OBJECT_SELF));
		SetLocked(oNearestEnd_door02, 1);
	}
}

