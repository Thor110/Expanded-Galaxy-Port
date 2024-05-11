void main() {
	ClearAllActions();
	ActionMoveToObject(GetObjectByTag("wp_player_starmap", 0), 0, 1.0);
	ActionDoCommand(SignalEvent(GetObjectByTag("man28_starmapobj", 0), EventUserDefined(0)));
}

