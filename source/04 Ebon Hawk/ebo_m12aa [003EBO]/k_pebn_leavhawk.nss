void main() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	if (((GetEnteringObject() == GetFirstPC()) && (nGlobal > 0))) {
		if (((GetGlobalNumber("K_CURRENT_PLANET") == 50) && (GetGlobalNumber("G_FinalChoice") == 1))) {
			ShowPartySelectionGUI("k_pebn_exithawk", 0, 0xFFFFFFFF);
		}
		else {
			ShowPartySelectionGUI("k_pebn_exithawk", 0xFFFFFFFF, 0xFFFFFFFF);
		}
	}
}

