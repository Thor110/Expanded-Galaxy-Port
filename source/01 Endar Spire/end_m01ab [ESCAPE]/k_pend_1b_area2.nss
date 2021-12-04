void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 10:
			{
				effect efVisual = EffectVisualEffect(6002, 0);
				ApplyEffectToObject(0, efVisual, GetFirstPC(), 0.0);
				PlayRumblePattern(5);
				SoundObjectPlay(GetObjectByTag("rumble4", 0));
				float float1 = IntToFloat((20 + Random(16)));
				DelayCommand(float1, SignalEvent(OBJECT_SELF, EventUserDefined(10)));
			}
			break;
	}
}

