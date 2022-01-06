void main() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oDarthmalak400 = GetObjectByTag("darthmalak400", 0);
	talent talSpell = TalentSpell(49);
	AssignCommand(oBastila, ActionUseTalentOnObject(talSpell, oDarthmalak400));
	DelayCommand(1.0, SetDialogPlaceableCamera(30));
	ActionPauseConversation();
	ActionWait(1.9);
	ActionResumeConversation();
}

