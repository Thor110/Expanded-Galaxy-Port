// Prototypes
void sub2();

void sub2() {
	object oTar_duel_crowd2 = GetObjectByTag("tar_duel_crowd2", 0);
	SoundObjectPlay(oTar_duel_crowd2);
	DelayCommand(5.0, SoundObjectStop(oTar_duel_crowd2));
}

void main() {
	object oGerlonTwof021 = GetObjectByTag("GerlonTwof021", 0);
	ActionPauseConversation();
	DelayCommand(11.0, ActionResumeConversation());
	DelayCommand(8.3, sub2());
	DelayCommand(8.4, AssignCommand(oGerlonTwof021, PlayAnimation(107, 1.0, 0.0)));
}
