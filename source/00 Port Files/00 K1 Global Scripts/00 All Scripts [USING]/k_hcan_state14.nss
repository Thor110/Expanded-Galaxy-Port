void main()
{
    int t;

    t = GetGlobalNumber("T_LEVC");
    SetGlobalNumber("G_CAND_STATE", 4);
    SetGlobalNumber("T_LEVC", t + 1);
}
