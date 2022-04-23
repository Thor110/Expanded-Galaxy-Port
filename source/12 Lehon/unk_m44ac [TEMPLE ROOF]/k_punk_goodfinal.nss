void main() {
	int nAlign = GetGoodEvilValue(GetFirstPC());
	if (((nAlign >= 0) && (nAlign <= 20))) {
		AdjustAlignment(GetFirstPC(), 2, 40);
	}
	else {
		if (((nAlign >= 21) && (nAlign <= 40))) {
			AdjustAlignment(GetFirstPC(), 2, 25);
		}
		else {
			if (((nAlign >= 41) && (nAlign <= 60))) {
				AdjustAlignment(GetFirstPC(), 2, 10);
			}
			else {
				if (((nAlign >= 61) && (nAlign <= 80))) {
					AdjustAlignment(GetFirstPC(), 2, 5);
				}
				else {
					if (((nAlign >= 81) && (nAlign <= 100))) {
						AdjustAlignment(GetFirstPC(), 2, 5);
					}
				}
			}
		}
	}
}

