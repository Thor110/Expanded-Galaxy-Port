void main()
{
    int t;

    t = GetGlobalNumber("MAN_SELJUD1_STATE");
    SetGlobalNumber("MAN_SELJUD1_STATE", t - 1);
    t = GetGlobalNumber("MAN_SELJUD2_STATE");
    SetGlobalNumber("MAN_SELJUD2_STATE", t - 1);
    t = GetGlobalNumber("MAN_SELJUD3_STATE");
    SetGlobalNumber("MAN_SELJUD3_STATE", t - 1);
    t = GetGlobalNumber("MAN_SELJUD4_STATE");
    SetGlobalNumber("MAN_SELJUD4_STATE", t - 1);
    t = GetGlobalNumber("MAN_SELJUD5_STATE");
    SetGlobalNumber("MAN_SELJUD5_STATE", t - 1);
}
