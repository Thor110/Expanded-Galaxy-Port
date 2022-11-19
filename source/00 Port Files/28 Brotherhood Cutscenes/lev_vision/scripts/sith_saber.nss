void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oSith_guy = GetObjectByTag("sith_guy", 0);
	object oSith_guy2 = GetObjectByTag("sith_guy2", 0);
	object oSith_guy3 = GetObjectByTag("sith_guy3", 0);
	object oSith_guy4 = GetObjectByTag("sith_guy4", 0);
	object oSith_guy_main = GetObjectByTag("sith_guy_main", 0);
	object oSith_guy_side1 = GetObjectByTag("sith_guy_side1", 0);
	object oSith_guy_side2 = GetObjectByTag("sith_guy_side2", 0);
	DelayCommand(1.0, SetLightsaberPowered(oSith_guy, 1, 1, 1));
	DelayCommand(1.2, SetLightsaberPowered(oSith_guy2, 1, 1, 1));
	DelayCommand(1.4, SetLightsaberPowered(oSith_guy3, 1, 1, 1));
	DelayCommand(1.6, SetLightsaberPowered(oSith_guy4, 1, 1, 1));
	DelayCommand(0.0, SetLightsaberPowered(oSith_guy_main, 1, 1, 1));
	DelayCommand(0.5, SetLightsaberPowered(oSith_guy_side1, 1, 1, 1));
	DelayCommand(0.5, SetLightsaberPowered(oSith_guy_side2, 1, 1, 1));
	ActionResumeConversation();
}

