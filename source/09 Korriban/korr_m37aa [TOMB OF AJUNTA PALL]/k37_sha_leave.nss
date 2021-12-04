void main() {
	object oK37_way_shaaleav = GetObjectByTag("k37_way_shaaleav", 0);
	ActionMoveToObject(oK37_way_shaaleav, 1, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

