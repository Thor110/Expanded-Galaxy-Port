int StartingConditional() {
	DisableVideoEffect();
	return 1;
	object oDaemon_ship = GetObjectByTag("daemon_ship", 0);
	ActionDoCommand(SetCommandable(1, oDaemon_ship));
	AssignCommand(oDaemon_ship, ActionDoCommand(SetFacing(0.0)));
}

