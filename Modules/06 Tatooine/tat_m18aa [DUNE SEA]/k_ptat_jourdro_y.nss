// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tat"

int GetFlag09() {
	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_09);
}

int GetFlag08() {
	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_08);
}

int GetFlag07() {
	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_07);
}

int GetFlag06() {
	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06);
}

void main() {
	
	int nState = 0;
	
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
	
	if (GetFlag09() == TRUE)
		{
			++nState;
		}
	
	if (nState == 0)
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 30, FALSE);
		}
	
	if (nState == 1)
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 50, FALSE);
		}
	
	if (nState == 2)
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 70, FALSE);
		}
	
	if (nState == 3)
		{
			AddJournalQuestEntry("tat18aa_tanistrapped", 75, FALSE);
		}
}
