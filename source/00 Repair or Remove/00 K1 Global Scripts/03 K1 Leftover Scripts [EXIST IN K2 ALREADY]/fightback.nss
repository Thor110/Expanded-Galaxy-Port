void main()
{
    if ( GetAttemptedAttackTarget() == OBJECT_INVALID )
    {
        ActionAttack(GetLastAttacker());
    }
}
