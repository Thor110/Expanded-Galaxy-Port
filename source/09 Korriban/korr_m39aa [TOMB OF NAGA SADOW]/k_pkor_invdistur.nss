void main() {
	object oK39_door_starmap = GetObjectByTag("k39_door_starmap", 0);
	AssignCommand(oK39_door_starmap, ActionCloseDoor(oK39_door_starmap));
	object oKor39_dooracid = GetObjectByTag("kor39_dooracid", 0);
	AssignCommand(oKor39_dooracid, ActionCloseDoor(oKor39_dooracid));
	SetLocked(oKor39_dooracid, 1);
}

