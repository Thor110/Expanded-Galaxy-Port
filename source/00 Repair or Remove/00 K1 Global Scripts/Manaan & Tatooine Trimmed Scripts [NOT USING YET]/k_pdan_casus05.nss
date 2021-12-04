int StartingConditional()
{
    object t;

    t = GetItemPossessedBy(GetPCSpeaker(), "W_DIARY");

    return GetIsObjectValid(t);
}
