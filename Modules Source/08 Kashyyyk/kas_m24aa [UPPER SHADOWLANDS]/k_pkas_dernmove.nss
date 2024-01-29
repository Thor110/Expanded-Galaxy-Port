void main() {
	object oKas24_dernpost = GetWaypointByTag("kas24_dernpost");
	ActionMoveToObject(oKas24_dernpost, 0, 1.0);
	ActionWait(1.0);
	ActionDoCommand(SetFacing(GetFacing(oKas24_dernpost)));
}

