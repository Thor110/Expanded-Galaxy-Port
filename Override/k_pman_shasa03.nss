void main()
{
    SetGlobalFadeOut();
    SetGlobalFadeIn(2.0,2.0);
    ActionDoCommand(DestroyObject(OBJECT_SELF));
    int nNth = 1;
    object oSelkath = GetObjectByTag ("man27_seljed" + IntToString(nNth));
    while(GetIsObjectValid(oSelkath))
    {
        DestroyObject(oSelkath);
        nNth++;
        oSelkath = GetObjectByTag ("man27_seljed" + IntToString(nNth));
    }

}
