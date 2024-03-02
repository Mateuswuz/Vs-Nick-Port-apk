local window_default = {}
function onCreatePost()
    setPropertyFromClass("openfl.Lib", "application.window.title","Friday Night Funkin' | Vs Nick")
   window_default[1] = getPropertyFromClass("openfl.Lib", "application.window.x")
   window_default[2] = getPropertyFromClass("openfl.Lib", "application.window.y")
end