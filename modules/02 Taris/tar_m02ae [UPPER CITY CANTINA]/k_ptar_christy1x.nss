void main() {
	SetGlobalNumber("Tar_Christya", 1);
	TakeGoldFromCreature(20, GetPCSpeaker(), 0);
	if (GetIsObjectValid(GetObjectByTag("Noble021", 0))) {
		AurPostString("MOVING TO NOBLE", 5, 5, 5.0);
	}
	ActionForceMoveToObject(GetObjectByTag("Noble021", 0), 0, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}
