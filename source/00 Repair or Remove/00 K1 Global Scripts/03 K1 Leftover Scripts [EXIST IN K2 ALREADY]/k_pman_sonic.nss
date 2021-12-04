#include "k_inc_debug"
void main()
{
    //Db_PostString("fired",5,5,10.0);
    location lCenter = GetLocation(OBJECT_SELF);
    effect eStun = EffectDeath();
    effect eVis = EffectVisualEffect(3002);
    float fRad = 15.0f;
    float fDur = 10.0f;
    string sArea = GetTag(GetArea(OBJECT_SELF)) ;
    if(sArea == "manm28ab" || sArea == "manm28ad")
    {
        object oTarget = GetFirstObjectInShape(SHAPE_SPHERE,fRad,lCenter);
        while (GetIsObjectValid(oTarget))
        {
            if(GetStringLeft(GetTag(oTarget),12) == "man28_firixa")
            {
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eStun,oTarget);
                //ChangeToStandardFaction(oTarget,STANDARD_FACTION_NEUTRAL);
               //DelayCommand(fDur,ChangeToStandardFaction(oTarget,STANDARD_FACTION_HOSTILE_1));
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE,fRad,lCenter);
        }
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT,eVis,lCenter);
    }
}
