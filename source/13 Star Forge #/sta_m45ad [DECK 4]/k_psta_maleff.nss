// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	sub1(0.8);
	ApplyEffectToObject(0, EffectVisualEffect(1009, 0), oSta_45darthMalak, 0.0);
}

