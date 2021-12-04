void main() {
  int nKOTOR = GetGlobalNumber("K_KOTOR_MASTER");
  if(nKOTOR == 60)
  {
    StartNewModule("sta_m45aa", "k_sta_ebon_hawk_transition", "", "", "", "", "", "");
  }
  else
  {
    StartNewModule("unk_m41aa", "", "", "", "", "", "", "");
  }
}

