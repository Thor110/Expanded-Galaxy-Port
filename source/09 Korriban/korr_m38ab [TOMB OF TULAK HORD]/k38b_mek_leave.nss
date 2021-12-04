void main() {
	SetGlobalBoolean("KOR_MEKEL_SPARED", 1);
	object oK38B_WAY_K36 = GetObjectByTag("K38B_WAY_K36", 0);
	ActionMoveToObject(oK38B_WAY_K36, 1, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

