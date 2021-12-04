void main() {
	int int1 = (GetGlobalNumber("KOR_THRESHOLD") + 1);
	SetGlobalNumber("KOR_THRESHOLD", int1);
	ActionPlayAnimation(18, 0.7, 4.0);
	ActionPlayAnimation(13, 0.7, 6.0);
}

