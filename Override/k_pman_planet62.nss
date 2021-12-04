void main()
{
    if (GetGlobalBoolean("MAN_PERS_DONE"))
        SetGlobalNumber("MAN_THRESHOLD", GetGlobalNumber("MAN_THRESHOLD") + 2);
}
