void main() {
	AddAvailableNPCByTemplate(3, "p_hk47");
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, ShowPartySelectionGUI("", 0xFFFFFFFF, 0xFFFFFFFF));
	DelayCommand(1.5, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0));
}

