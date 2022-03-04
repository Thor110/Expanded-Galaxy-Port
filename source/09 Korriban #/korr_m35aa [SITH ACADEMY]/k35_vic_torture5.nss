void main() {
	int int1 = (GetGlobalNumber("KOR_THRESHOLD") + 5);
	SetGlobalNumber("KOR_THRESHOLD", int1);
	ActionPlayAnimation(13, 0.7, 10.0);
}

