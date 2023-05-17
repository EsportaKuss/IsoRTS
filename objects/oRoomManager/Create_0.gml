/// @desc setpup camera
// Create camera
var _w = global.Res.width;
var _h = global.Res.height;
camera = camera_create_view(0,0,_w,_h,0,noone,-1,-1,_w/2, _h/2);	//800 400

//CENTER THE CAMERA
cx = (oEditor.iso_width / 2) - (camera_get_view_width(camera)/2);
cy = (oEditor.iso_height / 2) - (camera_get_view_height(camera)/2);

camera_set_view_pos(camera,cx,cy);

//Enable view and make view 0 visible
view_enabled	= true;
view_visible[0]	= true;

//Assign camera to view 0
view_set_camera(0, camera);

//Camera modes
enum cammode
{
	follow_object,
	follow_mouse_drag,
	follow_mouse_border
}

mode		= cammode.follow_mouse_border;
following	= noone;
boundless	= false;

view_w		= camera_get_view_width(view_camera[0]);
view_h		= camera_get_view_height(view_camera[0]);

mouse_xprevious = -1;
mouse_yprevious = -1;

