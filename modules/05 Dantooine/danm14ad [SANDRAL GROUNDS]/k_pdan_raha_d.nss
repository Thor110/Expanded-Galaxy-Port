void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 10:
			ActionForceMoveToObject(GetObjectByTag("dan15ad_wp_rahasia1", 0), 1, 1.0, 30.0);
			SetCommandable(0, OBJECT_SELF);
			break;
		case 20:
			DestroyObject(OBJECT_SELF, 0.0, 1, 0.0);
			break;
	}
}

