void main() {
	object oZaalbar = GetObjectByTag("Zaalbar", 0);
	if ((GetIsObjectValid(oZaalbar) == 1)) {
		SetGlobalBoolean("kas_ZaalbarParty", 1);
		RemovePartyMember(8);
		SetNPCSelectability(8, 0);
		DestroyObject(oZaalbar, 1.0, 1, 0.0);
		DelayCommand(0.5, ShowPartySelectionGUI("k_pkas_sendking", 0xFFFFFFFF, 0xFFFFFFFF));
	}
	else {
		SetNPCSelectability(8, 0);
		StartNewModule("kas_m23ad", "kas23_MeetKing", "", "", "", "", "", "");
	}
}

