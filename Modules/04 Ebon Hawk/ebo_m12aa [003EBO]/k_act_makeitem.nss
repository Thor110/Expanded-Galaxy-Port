//:: //:: k_act_makeitem
/*
    Make an item for the PC
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
//#include "k_inc_ebonhawk"

void main()
{
    int nCount;
    string sTag = GetTag(OBJECT_SELF);
    object oProxy;
    if(sTag == "zaalbar")
    {
        int nRand = d3();
        if(nRand == 1)
        {
            oProxy = CreateItemOnObject("g_w_stungren01", GetFirstPC());
        }
        else if(nRand == 2)
        {
            oProxy = CreateItemOnObject("g_w_iongren01", GetFirstPC());
        }
        else if(nRand == 3)
        {
            oProxy = CreateItemOnObject("g_w_adhsvgren001", GetFirstPC());
        }
        nCount = GetGlobalNumber("K_ZAALBAR_ITEMS");
        nCount++;
        SetGlobalNumber("K_ZAALBAR_ITEMS", nCount);
    }
    else if(sTag == "jolee")
    {
        int nLevel = GetHitDice(GetFirstPC());
        if(nLevel <= 4)
        {
            oProxy = CreateItemOnObject("G_I_MEDEQPMNT01", GetFirstPC());
        }
        else if(nLevel > 4 && nLevel <= 10)
        {
            oProxy = CreateItemOnObject("G_I_MEDEQPMNT02", GetFirstPC());
        }
        else if(nLevel > 10)
        {
            oProxy = CreateItemOnObject("G_I_MEDEQPMNT03", GetFirstPC());
        }
        nCount = GetGlobalNumber("K_JOLEE_ITEMS");
        nCount++;
        SetGlobalNumber("K_JOLEE_ITEMS", nCount);
    }
    else if(sTag == "mission")
    {
        int nLevel = GetHitDice(GetFirstPC());
        if(nLevel <= 7)
        {
            oProxy = CreateItemOnObject("g_i_secspike01", GetFirstPC());
        }
        else if(nLevel > 7)
        {
            oProxy = CreateItemOnObject("g_i_secspike02", GetFirstPC());
        }
        nCount = GetGlobalNumber("K_MISSION_ITEMS");
        nCount++;
        SetGlobalNumber("K_MISSION_ITEMS", nCount);
    }
    else if(sTag == "cand")
    {
        int nRand = d4();

        if(nRand == 1)
        {
            oProxy = CreateItemOnObject("G_I_ADRNALINE001", GetFirstPC());
        }
        else if(nRand == 2)
        {
            oProxy = CreateItemOnObject("G_I_ADRNALINE002", GetFirstPC());
        }
        else if(nRand == 3)
        {
            oProxy = CreateItemOnObject("G_I_ADRNALINE003", GetFirstPC());
        }
        else if(nRand == 4)
        {
            oProxy = CreateItemOnObject("G_I_CMBTSHOT001", GetFirstPC());
        }
        nCount = GetGlobalNumber("K_CAND_ITEMS");
        nCount++;
        SetGlobalNumber("K_CAND_ITEMS", nCount);
    }
    else if(sTag == "t3m4")
    {
        oProxy = CreateItemOnObject("G_I_PROGSPIKE01", GetFirstPC());
        nCount = GetGlobalNumber("K_T3M4_ITEMS");
        nCount++;
        SetGlobalNumber("K_T3M4_ITEMS", nCount);
    }
}

