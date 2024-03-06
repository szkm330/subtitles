-- Automation 4 demo script
-- Macro that adds \be1 tags in front of every selected line

local tr = aegisub.gettext

script_name = tr"Add blur3"
script_author = "szkm330"
script_version = "1"


function add_edgeblur(subtitles, selected_lines, active_line)
	for z, i in ipairs(selected_lines) do
		local l = subtitles[i]
		l.text = "{\\blur3}" .. l.text
		subtitles[i] = l
	end
	aegisub.set_undo_point(script_name)
end

aegisub.register_macro(script_name, tr"Adds \\be1 tags to all selected lines", add_edgeblur)
