void main()
{
object oNPC2=GetObjectByTag("g_sithcomm003");
object oNPC=GetObjectByTag("injured_guy");
DelayCommand(1.0, AssignCommand(oNPC,ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), GetObjectByTag("injured_guy"))));
AssignCommand (oNPC,ActionDoCommand(DestroyObject(oNPC2)));
}
