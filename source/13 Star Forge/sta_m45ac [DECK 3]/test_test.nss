void main() {
	int int1 = 2040;
	int int2;
	float float1 = 0.0;
	int2 = 1;
	while ((int2 < 19)) {
		DelayCommand(float1, ApplyEffectToObject(2, EffectVisualEffect(int1, 0), GetObjectByTag("sta_door_freeze", 0), 0.0));
		float1 = (float1 + 5.0);
		int1 = (int1 + 1);
		if ((int1 == 2049)) {
			int1 = 2040;
		}
		(int2++);
	}
}

