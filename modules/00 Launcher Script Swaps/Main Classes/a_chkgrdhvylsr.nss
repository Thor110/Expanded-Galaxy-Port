void main() {
	if ((GetLevelByClass(3, GetFirstPC()) > 0)) {
		object oSecLoc = GetObjectByTag("SecLoc", 0);
		int nGlobal = GetGlobalNumber("101PER_HvyLaser_Spawn");
		if ((nGlobal == 0)) {
			SetGlobalNumber("101PER_HvyLaser_Spawn", 1);
			CreateItemOnObject("heavymininglaser", oSecLoc, 1, 0);
		}
	}
}