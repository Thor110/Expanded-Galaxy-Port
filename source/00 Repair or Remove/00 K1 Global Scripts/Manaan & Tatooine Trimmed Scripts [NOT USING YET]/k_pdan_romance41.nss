//checks to see if the player has Rahasia's key
int StartingConditional()
{
    return GetIsObjectValid(GetItemPossessedBy(GetPCSpeaker(), "dan16_key")) == FALSE;
}
