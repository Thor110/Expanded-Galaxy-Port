// k_pman_airlock01
// checks to see if the pc has an envirosuit
int StartingConditional()
{
    return GetIsObjectValid(GetItemPossessedBy(GetPCSpeaker(),"man28_envirosuit"));
}
