void main() {
	AddAvailableNPCByTemplate(0, "p_bastilla");
	AddAvailableNPCByTemplate(2, "p_carth");
	DelayCommand(1.0, ShowPartySelectionGUI("k_plev_killbc", 2, 0));
}

