int StartingConditional()
{
    return GetGlobalNumber("MAN_VOLUME_A") > 0 &&
           GetGlobalNumber("MAN_VOLUME_B") < 5;
}

