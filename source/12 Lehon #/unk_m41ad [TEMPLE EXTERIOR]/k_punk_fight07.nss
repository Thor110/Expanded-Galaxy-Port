void main() {
	SetPlotFlag(GetObjectByTag("unk41_duros2", 0), 0);
	AssignCommand(GetObjectByTag("unk41_duros2", 0), ClearAllEffects());
	ChangeToStandardFaction(GetObjectByTag("unk41_duros2", 0), 2);
}

