void main() {
	if (((IsCreditSequenceInProgress() == 0) && (GetGlobalBoolean("CREDITPLAY") == 1))) {
		EndGame(0);
	}
}

