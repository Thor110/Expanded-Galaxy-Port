//#include "k_inc_utility"

void main() {
	//object oRhendi = GetObjectByTag("sle99_rhendihang", 0);
  object oEntering = GetEnteringObject();
	object oUnk43_theone = GetObjectByTag("unk43_theone", 0);
	if ((GetIsPC(oEntering)/* && (!sub1(OBJECT_SELF))*/)) {//ignores sub1 for now	
	//if (GetIsObjectValid(oRhendi)) {HoldWorldFadeInForDialog();
		//sub2(OBJECT_SELF, 1);
    //UT_SetTalkedToBooleanFlag(OBJECT_SELF, 1);//acts as sub2
		//SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		//SetGlobalFadeIn(1.5, 1.5, 0.0, 0.0, 0.0);
		//NoClicksFor(1.2);
		//DelayCommand(1.0, sub3(GetTag(oUnk43_theone), "", OBJECT_INVALID));
    //AssignCommand(oUnk43_theone, ActionStartConversation(GetFirstPC(), "unk43_theone", 0, 0, 1, "", "", "", "", "", ""));//acts as sub3
	
     AssignCommand(oUnk43_theone, ClearAllActions());
     AssignCommand(oUnk43_theone, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

