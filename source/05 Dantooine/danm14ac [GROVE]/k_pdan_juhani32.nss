void main() {
	object oDan14_juhani = GetObjectByTag("dan14_juhani", 0);
	ActionPauseConversation();
	ActionDoCommand(SignalEvent(oDan14_juhani, EventUserDefined(30)));
	AssignCommand(GetPartyMemberByIndex(1), ActionPlayAnimation(19, 1.0, 10.0));
	AssignCommand(GetPartyMemberByIndex(2), ActionPlayAnimation(19, 1.0, 10.0));
}

