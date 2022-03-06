void main() {
	//ShowPartySelectionGUI("k_pebn_exithawk", 0xFFFFFFFF, 0xFFFFFFFF);
  int nKOTOR = GetGlobalNumber("K_KOTOR_MASTER");
  if(nKOTOR == 60)
  {
    ShowPartySelectionGUI("k_pebn_exithawk", 0, 0xFFFFFFFF);
  }
  else
  {
    ShowPartySelectionGUI("k_pebn_exithawk", 0xFFFFFFFF, 0xFFFFFFFF);
  }
}
