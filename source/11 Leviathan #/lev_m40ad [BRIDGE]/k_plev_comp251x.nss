void main() {
	SetGlobalNumber("LEV_ELEVATOR", 2);
	SetGlobalBoolean("LEV_BRIDGEOPEN", 1);
	SetLocked(GetObjectByTag("lev40_cmddoor", 0), 0);
}

