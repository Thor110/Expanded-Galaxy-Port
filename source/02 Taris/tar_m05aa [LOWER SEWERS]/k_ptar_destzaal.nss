void main() {
	object oTar05_zaaljunk = GetObjectByTag("tar05_zaaljunk", 0);
	object oZaalbar = GetObjectByTag("zaalbar", 0);
	DestroyObject(GetObjectByTag("Tar05_Zaalbar", 0), 0.0, 1, 0.0);
	SetCommandable(1, oZaalbar);
	GiveItem(GetItemInSlot(4, oZaalbar), oTar05_zaaljunk);
	GiveItem(GetItemInSlot(5, oZaalbar), oTar05_zaaljunk);
}

