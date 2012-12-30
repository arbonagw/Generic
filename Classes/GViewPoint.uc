/**
 *  This work is distributed under the Lesser General Public License,
 *	see LICENSE for details
 *
 *  @author Gwenna�l ARBONA
 **/

class GViewPoint extends Actor;

// This only exist for the sake of Actor being abstract.
// It is only used as a target for the camera location and rotation in menus.

defaultproperties
{
	CollisionType=COLLIDE_NoCollision
	bCollideActors=false
	bCollideWorld=false
	bBlockActors=false
}
