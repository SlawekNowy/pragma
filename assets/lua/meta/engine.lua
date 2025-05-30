--- @meta
--- 
--- @class engine
engine = {}

--- 
--- @return math.Vector2i ret0
function engine.get_window_resolution() end

--- 
function engine.clear_fixed_frame_delta_time_interpretation() end

--- 
--- @param identifier string
--- @param fontSetName string
--- @param features enum FontSetFlag
--- @param size int
--- @return engine.FontInfo ret0
--- @overload fun(identifier: string, fontSetName: string, features: enum FontSetFlag, size: int, reload: bool): engine.FontInfo
function engine.create_font(identifier, fontSetName, features, size) end

--- 
--- @return string ret0_1
--- @return enum Con::MessageFlags ret0_2
--- @return util.Color ret0_3
function engine.poll_console_output() end

--- 
--- @param baseName string
--- @return string ret0
function engine.generate_info_dump(baseName) end

--- 
--- @return table ret0
function engine.get_info() end

--- 
--- @return int ret0
function engine.get_current_frame_index() end

--- 
--- @param arg0 class CEngine
--- @return string ret0
function engine.get_default_font_set_name(arg0) end

--- 
--- @param library string
--- @return bool ret0
function engine.library_exists(library) end

--- 
--- @return table ret0
function engine.get_git_info() end

--- 
--- @param identifier string
--- @return engine.FontInfo ret0
function engine.get_font(identifier) end

--- 
--- @return math.Vector2i ret0
function engine.get_render_resolution() end

--- 
--- @return prosper.RenderTarget ret0
function engine.get_staging_render_target() end

--- 
--- @param text string
--- @param font engine.FontInfo
--- @return math.Vector2i ret0
--- @overload fun(text: string, font: string): math.Vector2i
function engine.get_text_size(text, font) end

--- 
--- @return int ret0
function engine.get_tick_count() end

--- 
--- @return string ret0
function engine.get_working_directory() end

--- 
--- @param addonPath string
--- @return bool ret0
function engine.mount_addon(addonPath) end

--- 
--- @param nw class NetworkState
--- @param path string
--- @return bool ret0
function engine.is_library_loaded(nw, path) end

--- 
--- @param path string
--- @return variant ret0
function engine.load_library(path) end

--- 
--- @param path string
--- @return bool ret0
function engine.unload_library(path) end

--- 
--- @param subAddon string
--- @return bool ret0
function engine.mount_sub_addon(subAddon) end

--- 
--- @param fps int
function engine.set_fixed_frame_delta_time_interpretation(fps) end

--- 
--- @param record bool
function engine.set_record_console_output(record) end

--- 
--- @param tieToFrameRate bool
function engine.set_tick_delta_time_tied_to_frame_rate(tieToFrameRate) end

--- 
function engine.shutdown() end

--- 
--- @param arg0 class Engine
function engine.toggle_console(arg0) end


--- 
--- @class engine.FontInfo
engine.FontInfo = {}


