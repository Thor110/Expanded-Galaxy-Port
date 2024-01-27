// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tat"

int GetFlag08() {
	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_08);
}

int GetFlag07() {
	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_07);
}

int GetFlag06() {
	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06);
}

void SetFlag09(int bValue) {
	if (bValue == TRUE || bValue == FALSE)
		{
			UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_09, bValue);
		}
    return;
}

void main() {
	
	SetFlag09(TRUE);
	
	object oDroid1 = GetObjectByTag("tat18_10droid_01", 0);
	object oDroid2 = GetObjectByTag("tat18_10droid_02", 0);
	object oDroid3 = GetObjectByTag("tat18_10droid_03", 0);
	object oDroid4 = GetObjectByTag("tat18_10droid_04", 0);
	int nState = 1;
	
	if (GetFlag06() == TRUE)
		{
			++nState;
		}
	
	if (GetFlag07() == TRUE)
		{
			++nState;
		}
	
	if (GetFlag08() == TRUE)
		{
			++nState;
		}
	
	if (nState == 1 && (GetIsObjectValid(oDroid1) == FALSE || GetIsObjectValid(oDroid2) == FALSE || GetIsObjectValid(oDroid3) == FALSE || GetIsObjectValid(oDroid4) == FALSE))
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 50, FALSE);
		}
	
	if (nState == 1 && GetIsObjectValid(oDroid1) == TRUE && GetIsObjectValid(oDroid2) == TRUE && GetIsObjectValid(oDroid3) == TRUE && GetIsObjectValid(oDroid4) == TRUE)
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 20, FALSE);
		}
	
	if (nState == 2 && GetIsObjectValid(oDroid1) == TRUE && GetIsObjectValid(oDroid2) == TRUE && GetIsObjectValid(oDroid3) == TRUE && GetIsObjectValid(oDroid4) == TRUE)
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 40, FALSE);
		}
	
	if (nState == 2 && (GetIsObjectValid(oDroid1) == FALSE || GetIsObjectValid(oDroid2) == FALSE || GetIsObjectValid(oDroid3) == FALSE || GetIsObjectValid(oDroid4) == FALSE))
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 70, FALSE);
		}
	
	if (nState == 3 && GetIsObjectValid(oDroid1) == TRUE && GetIsObjectValid(oDroid2) == TRUE && GetIsObjectValid(oDroid3) == TRUE && GetIsObjectValid(oDroid4) == TRUE)
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 60, FALSE);
		}
	
	if (nState == 3 && (GetIsObjectValid(oDroid1) == FALSE || GetIsObjectValid(oDroid2) == FALSE || GetIsObjectValid(oDroid3) == FALSE || GetIsObjectValid(oDroid4) == FALSE))
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 75, FALSE);
		}
	
	if (nState == 4)
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 75, FALSE);
		}
}
