void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, DelayCommand(1.0, StartNewModule("tat_m20aa", "tat20_wp_chief", "", "", "", "", "", "")));
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
}

