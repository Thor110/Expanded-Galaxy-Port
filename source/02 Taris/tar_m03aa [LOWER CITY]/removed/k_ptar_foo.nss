void main() {
	int int1;
	object object1;
	int1 = 0;
	while ((int1 < 3)) {
		object1 = GetObjectByTag(("tar03_bekcs" + IntToString(int1)), 0);
		object1 = GetObjectByTag(("tar03_vulkcut" + IntToString(int1)), 0);
		(int1++);
	}
}

