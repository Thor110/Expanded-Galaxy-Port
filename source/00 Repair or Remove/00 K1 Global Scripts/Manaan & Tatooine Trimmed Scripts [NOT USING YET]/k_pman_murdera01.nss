void main()
{
    int t;

    t = 0;
    if (GetGlobalNumber("MAN_SELJUD1_STATE") > 2)
        t++;
    if (GetGlobalNumber("MAN_SELJUD2_STATE") > 2)
        t++;
    if (GetGlobalNumber("MAN_SELJUD3_STATE") > 2)
        t++;
    if (GetGlobalNumber("MAN_SELJUD4_STATE") > 2)
        t++;
    if (GetGlobalNumber("MAN_SELJUD5_STATE") > 2)
        t++;
    SetGlobalNumber("MAN_TRIAL_JUDNUM", t);
}
