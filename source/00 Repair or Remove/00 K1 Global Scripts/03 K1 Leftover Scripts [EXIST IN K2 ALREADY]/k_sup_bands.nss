//:: k_sup_bands
/*
    This is the generic script to run all
    forearm bands in the game

99  Energy Shield	            Protects against energy weapons.  Damage Resistance 5.  Up to 50 damage.
100 Sith Energy Shield          Protects against energy weapons and sonic attacks. Damage Resistance 5. Up to 50 damage.
101 Arkanian Energy Shield      Protects against energy, sonic, cold and fire attacks. Damage Resistance 5. Up to 50 damage.
102 Echani shield               Protects against energy weapons.   Damage resistance 10.  Up to 50 damage.
103 Mandalorian melee           Damage Resistance 5.  Up to 50 damage.
104 Mandalorian power shield    Protects against energy weapons and physical damage.   Damage resistance 10.  Up to 50 damage.
105 Echani dueling shield       Protects against energy weapons.   Damage resistance 10.  Up to 100 damage.
106 Yusanis’ Modified dueling shield    Protects against energy weapons.   Damage resistance 15.  Up to 100 damage.
107 Proto-type Verpine Energy shield    Protects against energy, sonic, cold and fire attacks. Damage Resistance 10. Up to 100 damage.
110 Droid 1 Energy
111 Droid 2 Energy
112 Droid 3 Energy
113 Droid 1 Hazard
114 Droid 2 Hazard
115 Droid 3 Hazard
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nIndex = GetSpellId();

    int nShield;
    int nIcon;
    
    if(nIndex == 99)
    {
        nShield = SHIELD_ENERGY;
        nIcon = 45;
    }
    else if(nIndex == 100)
    {
        nShield = SHIELD_ENERGY_SITH;
        nIcon = 46;
    }
    else if(nIndex == 101)
    {
        nShield = SHIELD_ENERGY_ARKANIAN;
        nIcon = 47;
    }
    else if(nIndex == 102)
    {
        nShield = SHIELD_ECHANI;
        nIcon = 48;
    }
    else if(nIndex == 103)
    {
        nShield = SHIELD_MANDALORIAN_MELEE;
        nIcon = 49;
    }
    else if(nIndex == 104)
    {
        nShield = SHIELD_MANDALORIAN_POWER;
        nIcon = 50;
    }
    else if(nIndex == 105)
    {
        nShield = SHIELD_DUELING_ECHANI;
        nIcon = 51;
    }
    else if(nIndex == 106)
    {
        nShield = SHIELD_DUELING_YUSANIS;
        nIcon = 52;
    }
    else if(nIndex == 107)
    {
        nShield = SHIELD_VERPINE_PROTOTYPE;
        nIcon = 53;
    }
    else if(nIndex == 110)
    {
        nShield = SHIELD_DROID_ENERGY_1;
        nIcon = 54;
    }
    else if(nIndex == 111)
    {
        nShield = SHIELD_DROID_ENERGY_2;
        nIcon = 54;
    }
    else if(nIndex == 112)
    {
        nShield = SHIELD_DROID_ENERGY_3;
        nIcon = 54;
    }
    else if(nIndex == 113)
    {
        nShield = SHIELD_DROID_ENVIRO_1;
        nIcon = 54;
    }
    else if(nIndex == 114)
    {
        nShield = SHIELD_DROID_ENVIRO_2;
        nIcon = 54;
    }
    else if(nIndex == 115)
    {
        nShield = SHIELD_DROID_ENVIRO_3;
        nIcon = 54;
    }
    effect eShield = EffectForceShield(nShield);
    eShield = SetEffectIcon(eShield, nIcon);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, GetSpellTargetObject(), 200.0);
}
