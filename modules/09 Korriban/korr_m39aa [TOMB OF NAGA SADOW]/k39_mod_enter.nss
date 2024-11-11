// Byte code does not match

#include "k_inc_utility"
#include "k_inc_debug"
 
void SetFlag(int intParam1) {
 	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, intParam1);
}
 
int GetFlag() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}
 
void main() {
 	
 	object oPC = GetFirstPC();
 	
 	if ((((GetGlobalNumber("KOR_START_FINAL") == 1) && (GetFlag() == FALSE)) && (GetEnteringObject() == oPC)))
  {
      object oDoor = GetObjectByTag("kor39_kor36", 0);
 			object oUthar = GetObjectByTag("kor39_utharwynn", 0);
 			object oYuthura = GetObjectByTag("kor39_yuthura", 0);
 			
 			Db_PostString("Final Started", 10, 10, 5.0);
 			
 			AssignCommand(oDoor, ActionOpenDoor(oDoor));
 			SetGlobalFadeOut(0.0, 2.0);
 			
 			if (!GetIsObjectValid(oUthar))
      {
          object oK39_way_uthar = GetObjectByTag("k39_way_uthar", 0);
 					location location1 = GetLocation(oK39_way_uthar);
 					CreateObject(1, "kor39_utharwynn", location1, 0);
      }
 			
 			if (!GetIsObjectValid(oYuthura))
      {
 					object oK39_way_yuthura = GetObjectByTag("k39_way_yuthura", 0);
 					location location3 = GetLocation(oK39_way_yuthura);
 					CreateObject(1, "kor39_yuthura", location3, 0);
      }
 			
 			SetGlobalFadeIn(1.0, 2.0);
 			NoClicksFor(1.2);
 			DelayCommand(1.0, UT_NPC_InitConversation("kor39_utharwynn", "", OBJECT_INVALID));
 			DelayCommand(1.0, SetGlobalNumber("KOR_START_FINAL", 2));
 			DelayCommand(1.0, SetFlag(TRUE));
 		}
 		else
    {
        Db_PostString("Final ! Started", 10, 10, 5.0);
    }
 }
