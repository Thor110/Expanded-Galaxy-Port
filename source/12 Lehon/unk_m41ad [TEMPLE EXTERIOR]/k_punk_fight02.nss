void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("rancmove", 0)), 0));
	ApplyEffectToObject(2, EffectAssuredHit(), GetObjectByTag("unk41_duros2", 0), 0.0);
	AssignCommand(GetObjectByTag("unk41_duros1", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0));
	AssignCommand(GetObjectByTag("unk41_duros2", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0));
	AssignCommand(GetObjectByTag("unk41_mand", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0));
	ActionWait(2.0);
	ActionResumeConversation();
}

