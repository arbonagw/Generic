/**
 *  This work is distributed under the Lesser General Public License,
 *	see LICENSE for details
 *
 *  @author Gwenna�l ARBONA
 **/

class GListItem extends GToggleButton;


/*----------------------------------------------------------
	Public attributes
----------------------------------------------------------*/

var (Button) int						Index;

var (Button) string						Data;

var (Button) MaterialInterface 			PictureTemplate;


/*----------------------------------------------------------
	Public methods
----------------------------------------------------------*/

/**
 * @brief Setup the button
 * @param Idx					List index
 * @param Path					Level path
 */
simulated function SetData(int Idx, string Path)
{
	Index = Idx;
	Data = Path;
}

/**
 * @brief Setup the button picture
 * @param PicPath				Texture path
 */
simulated function SetPicture(Texture2D PicPath)
{
	local MaterialInstanceConstant Picture;
	
	Picture = Mesh.CreateAndSetMaterialInstanceConstant(1);
	if (Picture != None && PicPath != None)
	{
		Picture.SetParent(PictureTemplate);
		Picture.SetTextureParameterValue('PictureData', PicPath);
	}
}

/*----------------------------------------------------------
	Properties
----------------------------------------------------------*/

defaultproperties
{
	Begin Object Name=LabelMesh
		StaticMesh=StaticMesh'DV_UI.Mesh.SM_PictureLabel'
		Scale=2.5
	End Object
	
	TextScale=1.0
	TextOffsetX=30.0
	TextOffsetY=20.0
	ClickMove=(X=0,Y=-10,Z=0)
	PictureTemplate=Material'DV_UI.Material.M_Picture'
	TextMaterialTemplate=Material'DV_UI.Material.M_EmissiveLabel'
}
