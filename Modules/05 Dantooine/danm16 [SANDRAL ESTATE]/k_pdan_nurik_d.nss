void main() {
	switch (GetUserDefinedEventNumber()) {
		case 10:
			ActionMoveToObject(GetObjectByTag("dan16_wp_nurik01", 0), 0, 1.0);
			ActionDoCommand(SignalEvent(GetObjectByTag("dan16_cutscene01", 0), EventUserDefined(0)));
			ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
			return;
	}
}

