void main() {
	object oEnd_door19 = GetObjectByTag("end_door19", 0);
	SetLocked(oEnd_door19, 1);
	AssignCommand(oEnd_door19, ActionCloseDoor(oEnd_door19));
	AssignCommand(GetFirstPC(), ActionJumpToLocation(GetLocation(GetObjectByTag("wp_player01", 0))));
	SignalEvent(GetObjectByTag("end_trask", 0), EventUserDefined(500));
}

