// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	object oDrd = GetObjectByTag("lev40_shopdroid", 0);
	object oTech;
	int nCnt = 0;
	
	while (GetIsObjectValid(oTech = GetObjectByTag("lev40_idletech", nCnt)))
		{
			ChangeToStandardFaction(oTech, STANDARD_FACTION_HOSTILE_1);

			nCnt++;
		}
	
	DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(TRUE, TRUE), oDrd, 0.0));
	
	ActionPauseConversation();
	
	ActionWait(5.0);
	
	ActionResumeConversation();
}
