void main() {
	SetGlobalNumber("KOR_DANEL", 4);
	object oDatapad = GetObjectByTag("datapad", 0);
	ActionTakeItem(oDatapad, GetPCSpeaker());
	object oK35_way_entrance = GetObjectByTag("k35_way_entrance", 0);
	ActionMoveToObject(oK35_way_entrance, 1, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 1, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

