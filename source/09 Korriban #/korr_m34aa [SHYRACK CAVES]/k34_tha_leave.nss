void main() {
	object oKor34_sithrebel1 = GetObjectByTag("kor34_sithrebel1", 0);
	object oKor34_sithrebel2 = GetObjectByTag("kor34_sithrebel2", 0);
	object oK34_WAY_K33 = GetObjectByTag("K34_WAY_K33", 0);
	unknown unknown1 = EventUserDefined(34);
	SignalEvent(oKor34_sithrebel1, unknown1);
	DelayCommand(1.0, SignalEvent(oKor34_sithrebel2, unknown1));
	ActionMoveToObject(oK34_WAY_K33, 1, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
	SetGlobalNumber("KOR_RENEGADE_DEAL", 1);
}

