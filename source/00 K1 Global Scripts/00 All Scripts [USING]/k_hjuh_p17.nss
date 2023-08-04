void main()
{
    int iGender = GetGender(GetPCSpeaker());

    if (iGender == GENDER_FEMALE)
    {
        SetGlobalBoolean("T_JUHANIROM", TRUE);
    }
}
