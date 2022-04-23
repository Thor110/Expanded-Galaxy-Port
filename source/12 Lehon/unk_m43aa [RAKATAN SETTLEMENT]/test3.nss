void main() {
	SetMinOneHP(GetObjectByTag("unk43_redpris", 0), 0);
	ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("unk43_redpris", 0), 0.0);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("unk43_redpris", 0), SetIsDestroyable(0, 0, 0)));
}

