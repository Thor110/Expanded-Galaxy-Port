void main()
{
    int t;

    t = GetGlobalNumber("T_LEVC");
    SetGlobalNumber("G_CAND_STATE", 2);
    SetGlobalNumber("T_LEVC", t + 1);
}
