void main() {
	AurPostString("ADDING T3M4", 5, 5, 5.0);
	SetGlobalNumber("Tar_JaniceDro", 30);
	AddAvailableNPCByTemplate(7, "p_t3m4");
	DelayCommand(0.1, ShowPartySelectionGUI("k_ptar_killt3m4", 0xFFFFFFFF, 0xFFFFFFFF));
}
