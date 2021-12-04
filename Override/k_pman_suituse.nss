// k_pman_suituse
// On Used event of Envirosuit placeable.
// checks to see if the user (and each party member) has a suit
// if they don't one is created in their inventory
// if at least one is created, the suit placeble is destroyed.
void main()
{
    string sSuitTag = "man28_envirosuit";
    object oUser = GetLastUsedBy();

    if(IsObjectPartyMember(oUser) ||
       GetIsPC(oUser))
    {
        CreateItemOnObject(sSuitTag,GetFirstPC());
        AwardStealthXP(GetFirstPC());

        SetPlotFlag(OBJECT_SELF,FALSE);
        DestroyObject(OBJECT_SELF);

   /*     object oSuit, oPartyMember;
        int bTaken, nIdx;
        int nMax = GetPartyMemberCount();
        for(nIdx = 0; nIdx < nMax; nIdx++)
        {
            oPartyMember = GetPartyMemberByIndex(nIdx);
            oSuit = GetItemPossessedBy(oPartyMember,sSuitTag);
            if(GetIsObjectValid(oSuit) == FALSE)
            {
                CreateItemOnObject(sSuitTag,oPartyMember);
                bTaken = TRUE;
            }
        }
        if(bTaken)
        {
            SetPlotFlag(OBJECT_SELF,FALSE);
            DestroyObject(OBJECT_SELF);
        } */
    }
}
