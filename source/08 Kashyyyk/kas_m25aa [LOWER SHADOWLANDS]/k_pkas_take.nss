void main() {
	object object1 = GetItemPossessedBy(GetPCSpeaker(), "kas25_datapad");
	if ((GetIsObjectValid(object1) != 0)) {
		DestroyObject(object1, 0.0, 0, 0.0);
	}
}

