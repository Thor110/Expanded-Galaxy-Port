void main() {
	object oEnd_sith2 = GetObjectByTag("end_sith2", 0);
	object oEnd_sith3 = GetObjectByTag("end_sith3", 0);
	object oEnd_soldier2 = GetObjectByTag("end_soldier2", 0);
	ActionPauseConversation();
	DelayCommand(3.0, ActionResumeConversation());
	AssignCommand(oEnd_soldier2, CutsceneAttack(oEnd_sith2, 239, 4, 0));
	DelayCommand(0.15, AssignCommand(oEnd_sith2, CutsceneAttack(oEnd_soldier2, 239, 4, 0)));
	DelayCommand(1.5, SetDialogPlaceableCamera(19));
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
}
