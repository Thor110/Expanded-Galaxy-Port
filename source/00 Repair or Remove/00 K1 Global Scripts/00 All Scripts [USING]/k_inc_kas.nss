//::///////////////////////////////////////////////
//:: Include
//:: k_inc_kas
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This is the include file for Kashyyyk.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: July 29, 2002
//:://////////////////////////////////////////////
#include "k_inc_utility"
#include "k_inc_generic"

int GetGorwookenSpawnGlobal()
{
    return GetGlobalBoolean("kas_SpawnGorwook");
}

void SetGorwookenSpawnGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_SpawnGorwook", bValue);
    }

    return;
}

int GetEliBeenKilledGlobal()
{
    return GetGlobalBoolean("kas_elikilled");
}

void SetEliBeenKilledGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_elikilled", bValue);
    }

    return;
}

int GetJaarakConfessedGlobal()
{
    return GetGlobalBoolean("kas_JaarakConfessed");
}

void SetJaarakConfessedGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_JaarakConfessed", bValue);
    }

    return;
}

int GetKashyyykPazaakStateGlobal()
{
    return GetGlobalNumber("tat_kashpazstate");
}

void SetKashyyykPazaakStateGlobal(int bValue)
{
    SetGlobalNumber("tat_kashpazstate", bValue);

    return;
}

int GetGuardToldGlobal()
{
    return GetGlobalBoolean("kas_GuardTold");
}

void SetGuardToldGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_GuardTold", bValue);
    }

    return;
}

int GetPoacherPlotStateGlobal()
{
return GetGlobalNumber("kas_poacherstate");
}

void SetPoacherPlotStateGlobal(int bValue)
{
SetGlobalNumber("kas_poacherstate", bValue);
return;
}


int GetPlayerToldOfPoachersGlobal()
{
    return GetGlobalBoolean("kas_ToldPoachers");
}

void SetPlayerToldOfPoachersGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_ToldPoachers", bValue);
    }

    return;
}

int GetChuundarTalkGlobal()
{
    return GetGlobalBoolean("kas_TalkChuundar");
}

void SetChuundarTalkGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_TalkChuundar", bValue);
    }

    return;
}

int GetHelpedFreyyrGlobal()
{
    return GetGlobalBoolean("kas_HelpedFreyyr");
}

void SetHelpedFreyyrGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_HelpedFreyyr", bValue);
    }

    return;
}

int GetFreyyrDeadGlobal()
{
	return GetGlobalBoolean("kas_FreyyrDead");
}

void SetFreyyrDeadGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_FreyyrDead", bValue);
    }

    return;
}

int GetChuundarDeadGlobal()
{
	return GetGlobalBoolean("kas_ChuundarDead");
}

void SetChuundarDeadGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_ChuundarDead", bValue);
    }

    return;
}

int GetComputerTalkGlobal()
{
    return GetGlobalBoolean("kas_ComputerTalk");
}

void SetComputerTalkGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_ComputerTalk", bValue);
    }

    return;
}

int GetStarMapRecievedGlobal()
{
    return GetGlobalBoolean("kas_StarMap");
}

void SetStarMapRecievedGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_StarMap", bValue);
    }

    return;
}

int GetJaarakBoltsGlobal()
{
    return GetGlobalBoolean("kas_JaarakBolts");
}

void SetJaarakBoltsGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_JaarakBolts", bValue);
    }

    return;
}

int GetJaarakDeadGlobal()
{
    return GetGlobalBoolean("kas_JaarakDead");
}

void SetJaarakDeadGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_JaarakDead", bValue);
    }

    return;
}

int GetJaarakFreeGlobal()
{
    return GetGlobalBoolean("kas_JaarakFree");
}

void SetJaarakFreeGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_JaarakFree", bValue);
    }

    return;
}

int GetRorworrMissingGlobal()
{
    return GetGlobalBoolean("kas_RorworrMiss");
}

void SetRorworrMissingGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_RorworrMiss", bValue);
    }

    return;
}

int GetDroidTalkGlobal()
{
    return GetGlobalBoolean("kas_DroidTalk");
}

void SetDroidTalkGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_DroidTalk", bValue);
    }

    return;
}

int GetChuundarRewardGlobal()
{
    return GetGlobalBoolean("kas_ChuundReward");
}

void SetChuundarRewardGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_ChuundReward", bValue);
    }

    return;
}

int GetMandalorianPlotGlobal()
{
    return GetGlobalNumber("kas_MandalorPlot");
}

void SetMandalorianPlotGlobal(int bValue)
{
    SetGlobalNumber("kas_MandalorPlot", bValue);

    return;
}

int GetAskedJanosForRewardLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for xxJanos.02 in area kas_m22aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01);
}

void SetAskedJanosForRewardLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for xxJanos.02 in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetJanosPaidLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for Janos in area kas_m22aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01);
}

void SetJanosPaidLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for Janos in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetJanosOfficeLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for Janos in area kas_m22aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02);
}

void SetJanosOfficeLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for Janos in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetPlayerAskedAboutSlavesLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for Janos in area kas_m22aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03);
}

void SetPlayerAskedAboutSlavesLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for Janos in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetPlayerAskedAboutSuppliesLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_04 for Janos in area kas_m22aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_04);
}

void SetPlayerAskedAboutSuppliesLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_04 for Janos in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetJoleeHomeLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for area kas_m24aa.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetJoleeHomeLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetJoleeInfoLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for area kas_m24aa.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_02);
}

void SetJoleeInfoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetPoachersRunoffLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area kas_m24aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03);
}

void SetPoachersRunoffLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetPoachersKilledLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_04 for the area kas_m24aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_04);
}

void SetPoachersKilledLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_04 for the area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetForceFieldLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for area kas_m24aa.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_05);
}

void SetForceFieldLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetOpenForceFieldLocal()
{
    // This uses SW_PLOT_BOOLEAN_06 for area kas_m24aa.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06);
}

void SetOpenForceFieldLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_06 for area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06, bValue);
    }

    return;
}

int GetForceFieldInfoLocal()
{
    // This uses SW_PLOT_BOOLEAN_07 for area kas_m24aa.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_07);
}

void SetForceFieldInfoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_07 for area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_07, bValue);
    }

    return;
}

int GetEnteredShadowlandsLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_08 for area kas_m24aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_08);
}

void SetEnteredShadowlandsLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_08 for area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_08, bValue);
    }

    return;
}

int GetJoleeTalkLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_09 for area kas_m24aa.

	return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_09);
}

void SetJoleeTalkLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_09 for area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_09, bValue);
    }

    return;
}

int GetUllerBerriesLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the uller.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetUllerBerriesLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the uller.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetFreyyrSpawnGlobal()
{
    // This uses SW_PLOT_BOOLEAN_01 for area kas_m23ad.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetFreyyrSpawnGlobal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for area kas_m23ad.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetFreyyrBeatLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Freyyr in area kas_m25aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetFreyyrBeatLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Freyyr in area kas_m25aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetComputerShutdownLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the computer in area kas_m25aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetComputerShutdownLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the computer in area kas_m25aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetRecognizedRevanLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for the computer in area kas_m25aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetRecognizedRevanLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for the computer in area kas_m25aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetComputerAttackLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for the computer in area kas_m25aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetComputerAttackLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for the computer in area kas_m25aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetHealChanceLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Grrrwahrr in area kas_m25aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetHealChanceLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Grrrwahrr in area kas_m25aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetEvilHurtLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Grrrwahrr in area kas_m25aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetEvilHurtLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Grrrwahrr in area kas_m25aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetFreyyrMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Freyyr in area kas_m23ad.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetFreyyrMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Freyyr in area kas_m23ad.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetZaalbarMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for area kas_m23ad.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_02);
}

void SetZaalbarMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for area kas_m23ad.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetAskAboutComputerLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for area kas_m23ad.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_03);
}

void SetAskAboutComputerLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for area kas_m23ad.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetFreyyrUpsetLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for area kas_m23ad.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_04);
}

void SetFreyyrUpsetLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for area kas_m23ad.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetFinalBattleLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for area kas_m23ad.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_05);
}

void SetFinalBattleLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for area kas_m23ad.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetFadeOffLocal()
{
    // This uses SW_PLOT_BOOLEAN_06 for area kas_m23ad.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06);
}

void SetFadeOffLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_06 for area kas_m23ad.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06, bValue);
    }

    return;
}

int GetJaarakTrialLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for area kas_m23ac.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetJaarakTrialLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for area kas_m23ac.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetJaarakAngeredOnceLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Woorwill in area kas_m23ab.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetJaarakAngeredOnceLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the computer in area kas_m23ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetRorworrDescribedOnceLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Woorwill in area kas_m23ab.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetRorworrDescribedOnceLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for the computer in area kas_m23ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetRorworrGoneSinceLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Woorwill in area kas_m23ab.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetRorworrGoneSinceLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for the computer in area kas_m23ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetJaarakAccusedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for area kas_m23ab.

	return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetJaarakAccusedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for area kas_m23ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetPoachersDeadGlobal()
{
	return GetGlobalNumber("kas_PoachersDead");
}

void SetPoachersDeadGlobal(int bValue)
{
    SetGlobalNumber("kas_PoachersDead", bValue);

    return;
}

int GetEmittersOffGlobal()
{
	return GetGlobalNumber("kas_EmittersOff");
}

void SetEmittersOffGlobal(int bValue)
{
    SetGlobalNumber("kas_EmittersOff", bValue);

    return;
}

int GetPoacherJobLocal()
{
	// This was changed from a local to a global because I needed to turn
	// all tach in kas_m24aa and kas_m25aa hostile.

    return GetGlobalBoolean("kas_PoacherJob");
}

void SetPoacherJobLocal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("kas_PoacherJob", bValue);
    }

    return;
}

int GetPoacherThreatenLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the officer in area kas_m24aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetPoacherThreatenLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the officer in area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetPoacherRunLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the officer in area kas_m24aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02);
}

void SetPoacherRunLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the officer in area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetPoacherAlarmLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for each guard in area kas_m24aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01);
}

void SetPoacherAlarmLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for each guard in area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetDesertLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for each guard in area kas_m24aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02);
}

void SetDesertLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for each guard in area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetDroidNorthLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the busted droid in area kas_m24aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetDroidNorthLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the busted droid in area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetGuardThreatenedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the guard at the exit to area kas_m22aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetGuardThreatenedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the guard at the exit to area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetScientistThreatenedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the sceintist in area kas_m22aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetScientistThreatenedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the sceintist in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}


int GetDroidSouthLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for the busted droid in area kas_m24aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetDroidSouthLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for the busted droid in area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetWorrroznorRewardLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Worrroznor in area kas_m23ac.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetWorrroznorRewardLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Worrroznor in area kas_m23ac.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetKashyyykPazaakPlayedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Pazzak on alien player in the area kas_m22aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetKashyyykPazaakPlayedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Pazzak on alien player in the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetKashyyykLostLastGameLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Pazzak on alien player in the area kas_m22aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetKashyyykLostLastGameLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Pazzak on alien player in the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetToldOfKashyyykPazaakLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Pazzak on alien player in the area kas_m22aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetToldOfKashyyykPazaakLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Pazzak on alien player in the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetAskDehnoLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Captain Dehno in area kas_m22ab.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetAskDehnoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Captain Dehno in area kas_m22ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetDehnoPaidLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Captain Dehno in area kas_m22ab.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetDehnoPaidLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Captain Dehno in area kas_m22ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetChorrawlMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Chorrawl in area kas_m22ab.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetChorrawlMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Chorrawl in area kas_m22ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetDroidShutdownLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the supply droid in area kas_m22ab.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetDroidShutdownLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the supply droid in area kas_m22ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetEliSaidKoltoLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for the Eli in area kas_m22aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetEliSaidKoltoLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the Eli in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetEliSaidKorribanLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for the Eli in area kas_m22aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetEliSaidKorribanLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for the Eli in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetEliSaidSwoopLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for the Eli in area kas_m22aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetEliSaidSwoopLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_04 for the Eli in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetEliDeadLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the Matton Dasol in area kas_m22aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetEliDeadLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the Matton Dasol in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetMattonShopLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for the Matton Dasol in area kas_m22aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetMattonShopLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for the Matton Dasol in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetWookieeGuardZaalbarLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for the wookiee guard in area kas_m22ab.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetWookieeGuardZaalbarLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for the wookiee guard in area kas_m22ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}


int GetMattonGaveReward()
{
    // This uses SW_PLOT_BOOLEAN_03 for the Matton Dasol in area kas_m22aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetMattonGaveReward(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for the Matton Dasol in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetMattonLeaveShopLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for the Matton Dasol in area kas_m22aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetMattonLeaveShopLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for the Matton Dasol in area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetEmitterShutdown()
{
    // This uses SW_PLOT_BOOLEAN_01 for the emitters in area kas_m24aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetEmitterShutdown(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the emitters in area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetEmitterDamagedLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for the emitters in area kas_m24aa.

	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetEmitterDamagedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for the emitters in area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetForceFieldOpenLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_10 for the forcefield in area kas_m24aa.

	return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_10);
}

void SetForceFieldOpenLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_10 for the forcefield in area kas_m24aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_10, bValue);
    }

    return;
}

int GetWookieHealedLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m25aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01);
}

void SetWookieHealedLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m25aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetAngryTachLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the area kas_m25aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02);
}

void SetAngryTachLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the area kas_m25aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetFreyyrJobLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area kas_m25aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03);
}

void SetFreyyrJobLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area kas_m25aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetZaalbarTalk1Local(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m22aa.

	return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_01);
}

void SetZaalbarTalk1Local(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetPartyTalk1Local(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the area kas_m22aa.

	return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_02);
}

void SetPartyTalk1Local(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetWookieRebelsLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area kas_m22aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03);
}

void SetWookieRebelsLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}


int GetWookieCapturedLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_04 for the area kas_m22aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_04);
}

void SetWookieCapturedLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_04 for the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetKomadSpawnLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_05 for the area kas_m22aa.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_05);
}

void SetKomadSpawnLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_05 for the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetRebelFight1Local(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_06 for the area kas_m22aa.

	return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_06);
}

void SetRebelFight1Local(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_06 for the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_06, bValue);
    }

    return;
}

int GetRebelFight2Local(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_07 for the area kas_m22aa.

	return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_07);
}

void SetRebelFight2Local(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_07 for the area kas_m22aa.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_07, bValue);
    }

    return;
}

int GetZaalbarTalk2Local(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m22ab.

	return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_01);
}

void SetZaalbarTalk2Local(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m22ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetPartyTalk2Local(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the area kas_m22ab.

	return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_02);
}

void SetPartyTalk2Local(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the area kas_m22ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetWookieRebels2Local(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area kas_m22ab.

	return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03);
}

void SetWookieRebels2Local(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area kas_m22ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetChorrawlFightLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_04 for the area kas_m22ab.

	return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_04);
}

void SetChorrawlFightLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_04 for the area kas_m22ab.

    if (bValue == TRUE || bValue == FALSE)
    {
		UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}