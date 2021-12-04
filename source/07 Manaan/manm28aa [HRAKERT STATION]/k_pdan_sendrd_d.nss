void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 10:
			SetIsDestroyable(0, 0, 0);
			ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0);
			break;
	}
}

