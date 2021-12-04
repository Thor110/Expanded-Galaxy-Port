void main() {
	DestroyObject(GetObjectByTag("mission", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("zaalbar", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("cand", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("carth", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("hk47", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("t3m4", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("bastila", 0), 0.0, 0, 0.0);
	StartNewModule("ebo_m41aa", "", "", "", "", "", "", "");
}

