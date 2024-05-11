int StartingConditional() {
	DestroyObject(GetItemInSlot(4, GetFirstPC()), 0.0, 0, 0.0);
	DestroyObject(GetItemInSlot(4, GetObjectByTag("bastila", 0)), 0.0, 0, 0.0);
	return 1;
}

