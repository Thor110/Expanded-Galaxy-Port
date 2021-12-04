void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, DelayCommand(0.5, StartNewModule("tat_m20aa", "tat20_wp_chief", "", "", "", "", "", "")));
	DestroyObject(OBJECT_SELF, 0.0, 1, 0.0);
}

