void main() {
	object oKor37_bridge1 = GetObjectByTag("kor37_bridge1", 0);
	if ((!GetIsDead(oKor37_bridge1))) {
		ActionPauseConversation();
		effect efVisual = EffectVisualEffect(4035, 0);
		DelayCommand(1.0, ApplyEffectToObject(0, efVisual, oKor37_bridge1, 0.0));
		effect efDeath = EffectDeath(0, 1);
		DelayCommand(1.0, ApplyEffectToObject(0, efDeath, oKor37_bridge1, 0.0));
		object oK37_snd_destdrd = GetObjectByTag("k37_snd_destdrd", 0);
		SoundObjectPlay(oK37_snd_destdrd);
		ActionWait(3.0);
		ActionResumeConversation();
	}
}

