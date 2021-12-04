void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 10:
			{
				effect efVisual = EffectVisualEffect(6002, 0);
				ApplyEffectToObject(0, efVisual, GetFirstPC(), 0.0);
				PlayRumblePattern(16);
				SoundObjectPlay(GetObjectByTag("rumble4", 0));
				float float1 = IntToFloat((20 + Random(20)));
				DelayCommand(float1, SignalEvent(OBJECT_SELF, EventUserDefined(10)));
			}
			break;
		case 20:
			CancelCombat(GetFirstPC());
			CancelCombat(GetObjectByTag("end_trask", 0));
			AssignCommand(GetObjectByTag(("end01_sceneobj02"), 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", ""));
			//ExecuteScript("k_pman_npcstop", sub1(), 0xFFFFFFFF);
      SetGlobalNumber("End_TraskTalk",11);
			break;
	}
}

