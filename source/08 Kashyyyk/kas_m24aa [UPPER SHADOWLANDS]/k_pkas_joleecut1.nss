void main() {
	object oKas24_katarn_01 = GetObjectByTag("kas24_katarn_01", 0);
	object oKas24_katarn_02 = GetObjectByTag("kas24_katarn_02", 0);
	object oKas24_katarn_03 = GetObjectByTag("kas24_katarn_03", 0);
	object oKas24_katarn_04 = GetObjectByTag("kas24_katarn_04", 0);
	object oJolee = GetObjectByTag("Jolee", 0);
	ActionPauseConversation();
	ApplyEffectToObject(0, EffectAssuredHit(), oJolee, 0.0);
	SetPlotFlag(oKas24_katarn_01, 0);
	SetPlotFlag(oKas24_katarn_02, 0);
	SetPlotFlag(oKas24_katarn_03, 0);
	SetPlotFlag(oKas24_katarn_04, 0);
}

