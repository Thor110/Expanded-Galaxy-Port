void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, DelayCommand(1.0, StartNewModule("kas_m23ad", "kas23_MeetKing", "", "", "", "", "", "")));
}

