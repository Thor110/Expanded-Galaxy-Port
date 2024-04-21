void main() {
	if ((GetGlobalNumber("Tar_ZelkaRm") == 2)) {
		SetGlobalNumber("Tar_ZelkaRm", 99);
	}
	ActionForceMoveToObject(GetObjectByTag("tar02_wpzelka", 0), 0, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}
