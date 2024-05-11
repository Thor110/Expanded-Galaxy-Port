void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 100:
			ExecuteScript("k_pkas_starmap", OBJECT_SELF, 0xFFFFFFFF);
			break;
	}
}

