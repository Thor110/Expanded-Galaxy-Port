void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), SetFacingPoint(GetPosition(GetObjectByTag("unk41_duros2", 0))));
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), ActionDoCommand(ActionPlayAnimation(107, 1.0, 2.0)));
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), ActionDoCommand(ActionMoveToLocation(GetLocation(GetObjectByTag("unk41_duros2", 0)), 1)));
	DelayCommand(4.0, AssignCommand(GetObjectByTag("unk41_duros2", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0)));
	DelayCommand(4.2, SetPlotFlag(GetObjectByTag("unk41_rancorc", 0), 0));
	DelayCommand(4.5, ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("unk41_rancorc", 0), 0.0));
	ActionWait(6.0);
	ActionResumeConversation();
}

