void main() {
	ActionForceMoveToObject(GetObjectByTag("from14bw", 0), 1, 1.0, 30.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

