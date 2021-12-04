void main() {
	if (((GetGlobalNumber("K_Geno_Rulan") != 1) && GetIsPC(GetEnteringObject()))) {
		SetEncounterActive(1, OBJECT_SELF);
	}
}

