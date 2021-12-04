void main() {
	if ((GetUserDefinedEventNumber() == 10)) {
		ActionMoveToObject(GetObjectByTag((("wp_" + GetTag(OBJECT_SELF)) + "_2"), 0), 1, 1.0);
	}
}

