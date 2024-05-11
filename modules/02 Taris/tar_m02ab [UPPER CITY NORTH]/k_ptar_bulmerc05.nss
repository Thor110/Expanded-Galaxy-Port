void main() {
	ActionForceMoveToObject(GetObjectByTag("tar02_wpnpcext", 0), 1, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}
