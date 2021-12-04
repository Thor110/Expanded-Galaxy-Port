void main() {
	ActionPauseConversation();
	object oKor36_tukataquee = GetObjectByTag("kor36_tukataquee", 0);
	object oKor36_tukatahen1 = GetObjectByTag("kor36_tukatahen1", 0);
	object oKor36_tukatahen2 = GetObjectByTag("kor36_tukatahen2", 0);
	object oK36_way_lashquee = GetObjectByTag("k36_way_lashquee", 0);
	AssignCommand(oKor36_tukataquee, ActionMoveToObject(oK36_way_lashquee, 1, 1.0));
	DelayCommand(1.0, AssignCommand(oKor36_tukatahen1, ActionMoveToObject(oK36_way_lashquee, 1, 1.0)));
	DelayCommand(2.0, AssignCommand(oKor36_tukatahen2, ActionMoveToObject(oK36_way_lashquee, 1, 1.0)));
	ActionWait(4.0);
	ActionResumeConversation();
}

