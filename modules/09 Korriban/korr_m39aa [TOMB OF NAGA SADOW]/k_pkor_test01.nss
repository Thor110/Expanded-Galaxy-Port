void main() {
	SetGlobalNumber("KOR_FINAL_TEST", 1);
	object oK39_door_uthar = GetObjectByTag("k39_door_uthar", 0);
	SetLocked(oK39_door_uthar, 0);
	object oK39_way_yuthura = GetObjectByTag("k39_way_yuthura", 0);
	object oKor39_yuthura = GetObjectByTag("kor39_yuthura", 0);
	AssignCommand(oKor39_yuthura, ActionMoveToObject(oK39_way_yuthura, 0, 1.0));
	AssignCommand(oKor39_yuthura, ActionDoCommand(SetFacing(0.0)));
	object oK39_way_uthar = GetObjectByTag("k39_way_uthar", 0);
	DelayCommand(0.5, ActionMoveToObject(oK39_way_uthar, 0, 1.0));
	DelayCommand(2.0, ActionDoCommand(SetFacing(0.0)));
}

