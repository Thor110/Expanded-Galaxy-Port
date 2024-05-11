void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 5:
			ActionEquipItem(GetItemPossessedBy(OBJECT_SELF, "g_w_drkjdisbr002"), 4, 0);
			DelayCommand(0.5, SetLightsaberPowered(OBJECT_SELF, 1, 1, 0));
			ActionDoCommand(SignalEvent(GetObjectByTag(("end01_sceneobj03"), 0), EventUserDefined(0)));
			break;
		case 10:
			ActionMoveToObject(GetObjectByTag("wp_room8_01", 0), 0, 1.0);
			ActionDoCommand(SignalEvent(GetObjectByTag(("end01_sceneobj03"), 0), EventUserDefined(0)));
			ActionMoveToObject(GetObjectByTag("wp_room8_02", 0), 0, 1.0);
			ActionPlayAnimation(19, 1.0, 10.0);
			break;
		case 25:
			ClearAllActions();
			ActionCastFakeSpellAtObject(9, GetObjectByTag("end_trask", 0), 0);
			DelayCommand(0.3, ApplyEffectToObject(2, EffectChoke(), GetObjectByTag("end_trask", 0), 0.0));
			break;
	}
}