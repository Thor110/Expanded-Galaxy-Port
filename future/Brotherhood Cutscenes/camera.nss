void main(){
// 461: Cut immediately to placeable camera 'nCameraId' during dialog.  nCameraId must be
//      an existing Placeable Camera ID.  Function only works during Dialog.
  SetDialogPlaceableCamera( int nCameraId );
// 45: Change the direction in which the camera is facing
// - fDirection is expressed as anticlockwise degrees from Due East.
//   (0.0f=East, 90.0f=North, 180.0f=West, 270.0f=South)
// This can be used to change the way the camera is facing after the player
// emerges from an area transition.
  SetCameraFacing(float fDirection);
}