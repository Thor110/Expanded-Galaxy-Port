// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_generic"
#include "k_inc_tar"

void PlayInjured() {
	if (!GetIsConversationActive())
		{
			ActionPlayAnimation(ANIMATION_LOOPING_LISTEN_INJURED, 1.0, 6.0);
		}
	
	ActionDoCommand(PlayInjured());
}

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06))
				{
					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06, TRUE);
					
					ActionDoCommand(PlayInjured());
				}
		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{

		}
	else if (nUser == 1007) // DEATH
		{
			object oRak = GetObjectByTag("tar04_repsolrg", 0);
			int nCnt = 0;
			
			while (GetIsObjectValid(oRak = GetObjectByTag("tar04_repsolrg", nCnt)))
				{
					SetPlotFlag(oRak, FALSE);
					ChangeToStandardFaction(oRak, STANDARD_FACTION_HOSTILE_1);
					
					nCnt++;
				}
			
			AssignCommand(GetObjectByTag("tar04_reptalker", 0), ActionWait(2.0));
			AssignCommand(GetObjectByTag("tar04_reptalker", 0), ActionResumeConversation());
		}
	else if (nUser == 1008) // DISTURBED
		{

		}
	else if (nUser == 1009) // BLOCKED
		{

		}
	else if (nUser == 1010) // SPELL CAST AT
		{

		}
	else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase("wp_homebase");
		}
}
