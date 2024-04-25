void main(){
object oPC=GetFirstPC();


vector aPosition=Vector(272.65,58.80,9.02);

 location aWhereToSpawn=Location(aPosition,0.0);





AssignCommand (oPC,ActionForceMoveToLocation(aWhereToSpawn,FALSE));

 AssignCommand(oPC, SetLockOrientationInDialog(oPC, FALSE));
 
   
}