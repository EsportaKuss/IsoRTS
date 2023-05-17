// Resolution data
global.Res = {
	width : 320,		//320
	height : 180,		//180
	scale : 4			//4
}

var _width = global.Res.width * global.Res.scale;
var _height = global.Res.height * global.Res.scale;

// Set resolution
surface_resize(application_surface, _width, _height);

// Window
window_set_size(_width, _height);

// GUI
display_set_gui_size(_width, _height);