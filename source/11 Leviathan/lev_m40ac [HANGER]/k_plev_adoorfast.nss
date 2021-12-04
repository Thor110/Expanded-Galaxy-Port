void main() {
	object object1 = GetLastOpenedBy();
	ActionWait(4.0);
	ActionCloseDoor(OBJECT_SELF);
	if ((GetTag(object1) == "darthmalak400")) {
	}
}

