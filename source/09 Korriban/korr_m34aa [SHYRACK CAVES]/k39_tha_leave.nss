void main() {
	object oKor34_sithrebel1 = GetObjectByTag("kor34_sithrebel1", 0);
	object oKor34_sithrebel2 = GetObjectByTag("kor34_sithrebel2", 0);
	object oK34_way_exit = GetObjectByTag("k34_way_exit", 0);
	AssignCommand(oKor34_sithrebel1, ActionMoveToObject(oK34_way_exit, 0, 1.0));
	AssignCommand(oKor34_sithrebel2, ActionMoveToObject(oK34_way_exit, 0, 1.0));
	ActionMoveToObject(oK34_way_exit, 0, 1.0);
	AssignCommand(oKor34_sithrebel1, ActionDoCommand(DestroyObject(oKor34_sithrebel1, 0.0, 0, 0.0)));
	AssignCommand(oKor34_sithrebel2, ActionDoCommand(DestroyObject(oKor34_sithrebel1, 0.0, 0, 0.0)));
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetGlobalNumber("KOR_RENEGADE_DEAL", 1);
}

