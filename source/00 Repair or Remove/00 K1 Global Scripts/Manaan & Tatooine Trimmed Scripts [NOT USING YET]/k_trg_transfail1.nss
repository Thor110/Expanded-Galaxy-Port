/////////////////////////////////////////////////////////////////////////////
/*  k_trg_transfail1
    This action is applied to a creature who triggered an area transition that
    the failed. It will transport the character to the nearest waypoint with
    the tag wp_transabort*/
//////////////////////////////////////////////////////////////////////////////
void main()
{
    AssignCommand(GetPartyMemberByIndex(0),JumpToObject(GetNearestObjectByTag("wp_transabort")));
    SetGlobalFadeOut();
    SetGlobalFadeIn(0.0,0.5);
}
