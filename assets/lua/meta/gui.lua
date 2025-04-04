--- @meta
--- 
--- @class gui
gui = {}

--- 
--- @param label string
--- @return gui.Element ret0_1
--- @return gui.Element ret0_2
--- @return gui.Element ret0_3
--- @overload fun(label: string, parent: gui.Element): gui.Element, gui.Element, gui.Element
function gui.create_checkbox(label) end

--- 
--- @param key enum GLFW::Key
--- @param state enum GLFW::KeyState
--- @param mods enum GLFW::Modifier
--- @return bool ret0
function gui.inject_keyboard_input(key, state, mods) end

--- 
--- @return gui.Element ret0
--- @overload fun(window: prosper.Window): gui.Element
function gui.add_base_element() end

--- 
--- @param name string
--- @return bool ret0
function gui.skin_exists(name) end

--- 
--- @return prosper.Window ret0
function gui.find_focused_window() end

--- 
--- @param className string
--- @return table ret0
function gui.find_elements_by_class(className) end

--- 
--- @param game class CGame
--- @param name string
--- @return gui.Element ret0
--- @overload fun(game: class CGame, name: string, parent: gui.Element): gui.Element
--- @overload fun(game: class CGame, name: string, parent: gui.Element, x: int, y: int): gui.Element
--- @overload fun(game: class CGame, name: string, parent: gui.Element, x: int, y: int, w: int, h: int): gui.Element
--- @overload fun(game: class CGame, name: string, parent: gui.Element, x: int, y: int, w: int, h: int, left: number, top: number, right: number, bottom: number): gui.Element
function gui.create(game, name) end

--- 
--- @return table ret0
function gui.get_supported_video_modes() end

--- 
--- @param cl class ClientState
function gui.close_main_menu(cl) end

--- 
--- @return enum GLFW::CursorMode ret0
function gui.get_cursor_input_mode() end

--- 
function gui.close_console() end

--- 
--- @param c string
--- @return bool ret0
function gui.inject_char_input(c) end

--- 
--- @param text string
--- @return gui.Element ret0
--- @overload fun(text: string, parent: gui.Element): gui.Element
--- @overload fun(text: string, parent: gui.Element, x: int, y: int): gui.Element
function gui.create_button(text) end

--- 
--- @param w int
--- @param h int
--- @param usageFlags enum prosper::ImageUsageFlags
--- @param initialLayout enum prosper::ImageLayout
--- @param msaa bool
--- @return prosper.Image ret0
function gui.create_color_image(w, h, usageFlags, initialLayout, msaa) end

--- 
--- @param str string
--- @return gui.Element ret0
--- @overload fun(str: string, parent: gui.Element): gui.Element
--- @overload fun(str: string, parent: gui.Element, x: int, y: int): gui.Element
function gui.create_label(str) end

--- 
--- @param w int
--- @param h int
--- @param enableMsaa bool
--- @param enableSampling bool
--- @return prosper.RenderTarget ret0
function gui.create_render_target(w, h, enableMsaa, enableSampling) end

--- 
--- @return bool ret0
function gui.is_console_open() end

--- 
--- @param idx int
--- @return gui.Element ret0
function gui.find_element_by_index(idx) end

--- 
--- @param name string
--- @return gui.Element ret0
function gui.find_element_by_name(name) end

--- 
--- @param skin string
--- @param vars table
--- @param skinData table
--- @param baseName string
--- @return bool ret0
--- @overload fun(skin: string, vars: table, skinData: table): bool
function gui.register_skin(skin, vars, skinData, baseName) end

--- 
--- @return math.Vector2i ret0
function gui.get_window_size() end

--- 
--- @param name string
--- @return table ret0
function gui.find_elements_by_name(name) end

--- 
--- @param mode enum GLFW::CursorMode
function gui.set_cursor_input_mode(mode) end

--- 
--- @return prosper.Window ret0
function gui.find_window_under_cursor() end

--- 
--- @return gui.Element ret0
--- @overload fun(window: prosper.Window): gui.Element
function gui.get_base_element() end

--- 
--- @param skinName string
--- @return bool ret0
function gui.load_skin(skinName) end

--- 
--- @return table ret0
function gui.get_base_elements() end

--- 
--- @return gui.Console ret0
function gui.get_console() end

--- 
--- @return enum GLFW::Cursor::Shape ret0
function gui.get_cursor() end

--- 
--- @param vars string
--- @param skinData string
function gui.register_default_skin(vars, skinData) end

--- 
--- @return number ret0
--- @overload fun(): number
function gui.get_delta_time() end

--- 
--- @param window prosper.Window
--- @param focusEnabled bool
function gui.set_focus_enabled(window, focusEnabled) end

--- 
--- @param arg1 prosper.Window
--- @param arg2 gui.Element
--- @param arg3 int
--- @param arg4 int
--- @param arg5 unknown
--- @return gui.Element ret0
--- @overload fun(window: prosper.Window, baseElement: gui.Element, x: int, y: int): gui.Element
--- @overload fun(window: prosper.Window, baseElement: gui.Element): gui.Element
--- @overload fun(window: prosper.Window): gui.Element
--- @overload fun(): gui.Element
function gui.get_element_at_position(arg1, arg2, arg3, arg4, arg5) end

--- 
--- @param elRoot gui.Element
--- @return gui.Element ret0
--- @overload fun(window: prosper.Window): gui.Element
--- @overload fun(window: prosper.Window): gui.Element
--- @overload fun(arg1: prosper.Window, arg2: unknown): gui.Element
--- @overload fun(arg1: unknown): gui.Element
function gui.get_element_under_cursor(elRoot) end

--- 
--- @param window prosper.Window
--- @return gui.Element ret0
--- @overload fun(): gui.Element
function gui.get_focused_element(window) end

--- 
--- @return int ret0
function gui.get_next_gui_element_index() end

--- 
--- @return gui.Console ret0
function gui.open_console() end

--- 
--- @return prosper.Monitor ret0
function gui.get_primary_monitor() end

--- 
--- @return prosper.Window ret0
function gui.get_primary_window() end

--- 
--- @param button enum GLFW::MouseButton
--- @param state enum GLFW::KeyState
--- @param mods enum GLFW::Modifier
--- @return bool ret0
--- @overload fun(button: enum GLFW::MouseButton, state: enum GLFW::KeyState, mods: enum GLFW::Modifier, pCursorPos: math.Vector2i): bool
function gui.inject_mouse_input(button, state, mods) end

--- 
--- @param cl class ClientState
function gui.open_main_menu(cl) end

--- 
--- @param offset math.Vector2
--- @return bool ret0
--- @overload fun(offset: math.Vector2, pCursorPos: math.Vector2i): bool
function gui.inject_scroll_input(offset) end

--- 
--- @param window prosper.Window
--- @return bool ret0
function gui.is_focus_enabled(window) end

--- 
--- @param cl class ClientState
--- @return bool ret0
function gui.is_main_menu_open(cl) end

--- 
--- @param className string
--- @param classData classObject
function gui.register(className, classData) end

--- 
--- @param shape enum GLFW::Cursor::Shape
function gui.set_cursor(shape) end

--- 
--- @param skin string
function gui.set_skin(skin) end


--- 
--- @class gui.Shape: gui.Element
gui.Shape = {}

--- 
--- @param arg1 math.Vector2
--- @return int ret0
function gui.Shape:AddVertex(arg1) end

--- 
function gui.Shape:ClearBuffer() end

--- 
--- @param arg1 enum WIShape::BasicShape
function gui.Shape:SetShape(arg1) end

--- 
--- @param arg1 int
--- @param arg2 math.Vector2
function gui.Shape:SetVertexPos(arg1, arg2) end

--- 
--- @param arg1 prosper.Buffer
--- @param arg2 int
function gui.Shape:SetBuffer(arg1, arg2) end

--- 
--- @overload fun(x: bool): 
--- @overload fun(arg1: bool, arg2: bool): 
function gui.Shape:InvertVertexPositions() end

--- 
function gui.Shape:ClearVertices() end

--- 
--- @return prosper.Buffer ret0
function gui.Shape:GetBuffer() end

--- 
--- @return int ret0
function gui.Shape:GetVertexCount() end


--- @enum Shape
gui.Shape = {
	SHAPE_CIRCLE = 1,
	SHAPE_RECTANGLE = 0,
}

--- 
--- @class gui.Shape.DrawInfo
--- @field size  
--- @field flags WIBase::DrawInfo::Flags 
--- @field commandBuffer any 
--- @field offset  
--- @field transform  
--- @overload fun(arg1: prosper.CommandBuffer):gui.Shape.DrawInfo
gui.Shape.DrawInfo = {}

--- 
--- @param color util.Color
function gui.Shape.DrawInfo:SetColor(color) end

--- 
--- @param t math.Mat4
function gui.Shape.DrawInfo:SetPostTransform(t) end


--- @enum Flag
gui.Shape.DrawInfo = {
	FLAG_DONT_SKIP_IF_OUT_OF_BOUNDS_BIT = 8,
	FLAG_NONE = 0,
	FLAG_MSAA_BIT = 4,
}

--- @enum FlagUse
gui.Shape.DrawInfo = {
	FLAG_USE_SCISSOR_BIT = 1,
	FLAG_USE_STENCIL_BIT = 2,
}

--- 
--- @class gui.Arrow: gui.Shape, gui.Element
gui.Arrow = {}

--- 
--- @param arg1 enum WIArrow::Direction
function gui.Arrow:SetDirection(arg1) end


--- @enum Direction
gui.Arrow = {
	DIRECTION_RIGHT = 0,
	DIRECTION_DOWN = 1,
	DIRECTION_LEFT = 2,
	DIRECTION_UP = 3,
}

--- 
--- @class gui.Base: gui.Element
--- @overload fun():gui.Base
gui.Base = {}

--- 
--- @param arg1 prosper.PreparedCommandBuffer
function gui.Base:SetRenderCommandBuffer(arg1) end

--- 
--- @param arg1 int
--- @param arg2 int
function gui.Base:CharCallback(arg1, arg2) end

--- 
function gui.Base:OnCursorEntered() end

--- 
--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
function gui.Base:OnColorChanged(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 math.Vector2i
--- @return bool ret0
function gui.Base:CheckPosInBounds(arg1) end

--- 
--- @param arg1 int
--- @param arg2 int
--- @param arg3 int
function gui.Base:MouseCallback(arg1, arg2, arg3) end

--- 
--- @param arg1 int
--- @param arg2 int
--- @param arg3 int
--- @param arg4 int
function gui.Base:KeyboardCallback(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 number
function gui.Base:OnAlphaChanged(arg1) end

--- 
function gui.Base:OnCursorExited() end

--- 
--- @param arg1 gui.GridPanel.DrawInfo
--- @param arg2 math.Mat4
--- @param arg3 math.Vector2
function gui.Base:OnDraw(arg1, arg2, arg3) end

--- 
function gui.Base:OnFocusGained() end

--- 
function gui.Base:OnFocusKilled() end

--- 
function gui.Base:OnInitialThink() end

--- 
function gui.Base:OnInitialize() end

--- 
function gui.Base:OnThink() end

--- 
function gui.Base:OnRemove() end

--- 
--- @param arg1 int
--- @param arg2 int
function gui.Base:OnSizeChanged(arg1, arg2) end

--- 
function gui.Base:OnUpdate() end

--- 
--- @param arg1 bool
function gui.Base:OnVisibilityChanged(arg1) end

--- 
--- @param arg1 number
--- @param arg2 number
function gui.Base:ScrollCallback(arg1, arg2) end


--- 
--- @class gui.Container: gui.Element
gui.Container = {}

--- 
--- @return class std::array<int,4> ret0
function gui.Container:GetPadding() end

--- 
--- @return int ret0
function gui.Container:GetPaddingTop() end

--- 
--- @return int ret0
function gui.Container:GetPaddingBottom() end

--- 
--- @return int ret0
function gui.Container:GetPaddingLeft() end

--- 
--- @return int ret0
function gui.Container:GetPaddingRight() end

--- 
--- @param arg1 int
--- @param arg2 int
--- @param arg3 int
--- @param arg4 int
--- @overload fun(arg1: int): 
function gui.Container:SetPadding(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 int
function gui.Container:SetPaddingBottom(arg1) end

--- 
--- @param arg1 int
function gui.Container:SetPaddingLeft(arg1) end

--- 
--- @param arg1 int
function gui.Container:SetPaddingRight(arg1) end

--- 
--- @param arg1 int
function gui.Container:SetPaddingTop(arg1) end


--- 
--- @class gui.Checkbox: gui.Shape, gui.Element
gui.Checkbox = {}

--- 
--- @return bool ret0
function gui.Checkbox:IsChecked() end

--- 
--- @param arg1 bool
function gui.Checkbox:SetChecked(arg1) end

--- 
function gui.Checkbox:Toggle() end


--- 
--- @class gui.Web: gui.TexturedShape, gui.Shape, gui.Element
gui.Web = {}

--- 
function gui.Web:GoBack() end

--- 
--- @return bool ret0
function gui.Web:CanGoBack() end

--- 
function gui.Web:Copy() end

--- 
function gui.Web:GoForward() end

--- 
--- @return string ret0
function gui.Web:GetUrl() end

--- 
--- @return bool ret0
function gui.Web:CanGoForward() end

--- 
--- @param arg1 string
function gui.Web:ExecuteJavaScript(arg1) end

--- 
function gui.Web:Cut() end

--- 
function gui.Web:Close() end

--- 
function gui.Web:Delete() end

--- 
--- @return math.Vector2i ret0
function gui.Web:GetBrowserViewSize() end

--- 
--- @return number ret0
function gui.Web:GetZoomLevel() end

--- 
--- @return bool ret0
function gui.Web:HasDocument() end

--- 
--- @return bool ret0
function gui.Web:IsLoading() end

--- 
--- @param arg1 string
function gui.Web:LoadUrl(arg1) end

--- 
function gui.Web:Paste() end

--- 
function gui.Web:StopLoad() end

--- 
function gui.Web:Redo() end

--- 
function gui.Web:Reload() end

--- 
function gui.Web:SelectAll() end

--- 
function gui.Web:ReloadIgnoreCache() end

--- 
--- @param arg1 math.Vector2i
function gui.Web:SetBrowserViewSize(arg1) end

--- 
--- @param arg1 string
function gui.Web:SetInitialUrl(arg1) end

--- 
--- @param arg1 number
function gui.Web:SetZoomLevel(arg1) end

--- 
function gui.Web:Undo() end


--- 
--- @class gui.Web.DrawInfo
--- @field size math.Vector2i 
--- @field flags WIBase::DrawInfo::Flags 
--- @field commandBuffer any 
--- @field offset math.Vector2i 
--- @field transform math.Mat4 
--- @overload fun(arg1: prosper.CommandBuffer):gui.Web.DrawInfo
gui.Web.DrawInfo = {}

--- 
--- @param color util.Color
function gui.Web.DrawInfo:SetColor(color) end

--- 
--- @param t math.Mat4
function gui.Web.DrawInfo:SetPostTransform(t) end


--- @enum Flag
gui.Web.DrawInfo = {
	FLAG_DONT_SKIP_IF_OUT_OF_BOUNDS_BIT = 8,
	FLAG_NONE = 0,
	FLAG_MSAA_BIT = 4,
}

--- @enum FlagUse
gui.Web.DrawInfo = {
	FLAG_USE_SCISSOR_BIT = 1,
	FLAG_USE_STENCIL_BIT = 2,
}

--- 
--- @class gui.Button: gui.Element
gui.Button = {}

--- 
--- @return string ret0
function gui.Button:GetText() end

--- 
--- @param text string
function gui.Button:SetText(text) end


--- 
--- @class gui.Button.DrawInfo
--- @field size  
--- @field commandBuffer  
--- @field offset  
--- @field transform  
--- @field useScissor  
--- @overload fun(arg1: prosper.CommandBuffer):gui.Button.DrawInfo
gui.Button.DrawInfo = {}

--- 
--- @param color util.Color
function gui.Button.DrawInfo:SetColor(color) end

--- 
--- @param t math.Mat4
function gui.Button.DrawInfo:SetPostTransform(t) end


--- 
--- @class gui.DebugDepthTexture: gui.Element
gui.DebugDepthTexture = {}

--- 
--- @param arg1 prosper.Texture
--- @param arg2 bool
--- @overload fun(arg1: prosper.Texture, arg2: bool): 
function gui.DebugDepthTexture:SetTexture(arg1, arg2) end

--- 
--- @return number ret0
function gui.DebugDepthTexture:GetContrastFactor() end

--- 
--- @param arg1 number
function gui.DebugDepthTexture:SetContrastFactor(arg1) end


--- 
--- @class gui.CommandLineEntry: gui.TextEntry, gui.Element
gui.CommandLineEntry = {}

--- 
--- @return int ret0
function gui.CommandLineEntry:GetAutoCompleteEntryLimit() end

--- 
--- @param arg1 int
function gui.CommandLineEntry:SetAutoCompleteEntryLimit(arg1) end


--- 
--- @class gui.Console: gui.Element
gui.Console = {}

--- 
--- @return bool ret0
function gui.Console:IsExternallyOwned() end

--- 
--- @return gui.TextEntry ret0
function gui.Console:GetTextLogElement() end

--- 
function gui.Console:Clear() end

--- 
--- @param arg1 string
--- @return class std::basic_string_view<char,struct std::char_traits<char> > ret0
function gui.Console:AppendText(arg1) end

--- 
--- @return gui.CommandLineEntry ret0
function gui.Console:GetCommandLineEntryElement() end

--- 
--- @return int ret0
function gui.Console:GetMaxLogLineCount() end

--- 
--- @return gui.Frame ret0
function gui.Console:GetFrame() end

--- 
--- @return string ret0
function gui.Console:GetText() end

--- 
--- @param arg1 bool
function gui.Console:SetExternallyOwned(arg1) end

--- 
--- @param arg1 int
function gui.Console:SetMaxLogLineCount(arg1) end

--- 
--- @param arg1 string
function gui.Console:SetText(arg1) end


--- 
--- @class gui.Text: gui.Element
gui.Text = {}

--- 
--- @param line string
function gui.Text:AppendLine(line) end

--- 
function gui.Text:Clear() end

--- 
--- @return math.Vector2i ret0
function gui.Text:CalcTextSize() end

--- 
--- @param text string
function gui.Text:AppendText(text) end

--- 
--- @return bool ret0
function gui.Text:AreTagsEnabled() end

--- 
--- @return string ret0
function gui.Text:GetFont() end

--- 
--- @param x number
function gui.Text:SetShadowXOffset(x) end

--- 
--- @param arg1 bool
function gui.Text:EnableShadow(arg1) end

--- 
function gui.Text:PopFrontLine() end

--- 
--- @param lineIndex int
--- @return string ret0
function gui.Text:GetLine(lineIndex) end

--- 
--- @return int ret0
function gui.Text:GetLineCount() end

--- 
--- @return int ret0
function gui.Text:GetTextWidth() end

--- 
--- @return int ret0
function gui.Text:GetMaxLineCount() end

--- 
--- @return number ret0
function gui.Text:GetShadowAlpha() end

--- 
--- @return number ret0
function gui.Text:GetShadowBlurSize() end

--- 
--- @return util.Color ret0
function gui.Text:GetShadowColor() end

--- 
--- @return math.Vector2 ret0
function gui.Text:GetShadowOffset() end

--- 
--- @param font string
function gui.Text:SetFont(font) end

--- 
--- @return number ret0
function gui.Text:GetShadowXOffset() end

--- 
--- @param arg1 number
function gui.Text:SetShadowAlpha(arg1) end

--- 
--- @return number ret0
function gui.Text:GetShadowYOffset() end

--- 
--- @param arg1 enum WIText::AutoBreak
function gui.Text:SetAutoBreakMode(arg1) end

--- 
--- @return string ret0
function gui.Text:GetText() end

--- 
--- @return int ret0
function gui.Text:GetTextHeight() end

--- 
--- @return int ret0
function gui.Text:GetTextLength() end

--- 
--- @param text string
--- @param lineIdx int
--- @param charOffset int
--- @return bool ret0
--- @overload fun(text: string, lineIdx: int): bool
function gui.Text:InsertText(text, lineIdx, charOffset) end

--- 
--- @return bool ret0
function gui.Text:IsShadowEnabled() end

--- 
--- @param arg1 bool
function gui.Text:SetTagsEnabled(arg1) end

--- 
--- @param lineIdx int
--- @param startOffset int
--- @param len int
--- @param targetLineIdx int
--- @param targetCharOffset int
function gui.Text:MoveText(lineIdx, startOffset, len, targetLineIdx, targetCharOffset) end

--- 
function gui.Text:PopBackLine() end

--- 
--- @param arg1 int
function gui.Text:RemoveLine(arg1) end

--- 
--- @param arg1 int
--- @param arg2 int
--- @return bool ret0
--- @overload fun(arg1: int, arg2: int, arg3: int): bool
function gui.Text:RemoveText(arg1, arg2) end

--- 
--- @param c int
function gui.Text:SetMaxLineCount(c) end

--- 
--- @param arg1 number
function gui.Text:SetShadowBlurSize(arg1) end

--- 
--- @param label string
--- @param argIdx int
--- @param o any
function gui.Text:SetTagArgument(label, argIdx, o) end

--- 
--- @param col util.Color
function gui.Text:SetShadowColor(col) end

--- 
--- @param pos math.Vector2
function gui.Text:SetShadowOffset(pos) end

--- 
--- @param y number
function gui.Text:SetShadowYOffset(y) end

--- 
--- @param text string
function gui.Text:SetText(text) end

--- 
--- @param startOffset int
--- @param len int
--- @return class util::Utf8StringView ret0
function gui.Text:Substr(startOffset, len) end

--- 
function gui.Text:UpdateSubLines() end


--- @enum AutoBreak
gui.Text = {
	AUTO_BREAK_ANY = 1,
	AUTO_BREAK_NONE = 0,
	AUTO_BREAK_WHITESPACE = 2,
}

--- 
--- @class gui.DebugSSAO: gui.TexturedShape, gui.Shape, gui.Element
gui.DebugSSAO = {}

--- 
--- @param arg1 bool
function gui.DebugSSAO:SetUseBlurredSSAOImage(arg1) end


--- 
--- @class gui.DebugShadowMap: gui.Element
gui.DebugShadowMap = {}

--- 
--- @param arg1 int
--- @param arg2 int
function gui.DebugShadowMap:SetShadowMapSize(arg1, arg2) end

--- 
--- @return number ret0
function gui.DebugShadowMap:GetContrastFactor() end

--- 
--- @param arg1 number
function gui.DebugShadowMap:SetContrastFactor(arg1) end

--- 
--- @param arg1 ents.LightComponent
function gui.DebugShadowMap:SetLightSource(arg1) end


--- 
--- @class gui.ScrollBar: gui.Element
gui.ScrollBar = {}

--- 
--- @return int ret0
function gui.ScrollBar:GetScrollAmount() end

--- 
--- @param arg1 int
function gui.ScrollBar:AddScrollOffset(arg1) end

--- 
--- @return bool ret0
function gui.ScrollBar:IsHorizontal() end

--- 
--- @return int ret0
function gui.ScrollBar:GetScrollOffset() end

--- 
--- @param arg1 bool
function gui.ScrollBar:SetHorizontal(arg1) end

--- 
--- @return bool ret0
function gui.ScrollBar:IsVertical() end

--- 
--- @param arg1 int
--- @param arg2 int
function gui.ScrollBar:SetUp(arg1, arg2) end

--- 
--- @param arg1 int
function gui.ScrollBar:SetScrollAmount(arg1) end

--- 
--- @param arg1 int
function gui.ScrollBar:SetScrollOffset(arg1) end


--- 
--- @class gui.DrawToTextureInfo
--- @field clearColor  
--- @field enableMsaa  
--- @field commandBuffer  
--- @field resolvedImage  
--- @field height  
--- @field useStencil bool 
--- @field width  
--- @overload fun():gui.DrawToTextureInfo
gui.DrawToTextureInfo = {}


--- 
--- @class gui.DropDownMenu: gui.TextEntry, gui.Element
gui.DropDownMenu = {}

--- 
--- @return class WIDropDownMenuOption ret0
function gui.DropDownMenu:FindOptionSelectedByCursor() end

--- 
--- @param value string
--- @return int ret0
function gui.DropDownMenu:FindOptionIndex(value) end

--- 
--- @param arg1 string
--- @return class WIDropDownMenuOption ret0
--- @overload fun(arg1: string, arg2: string): class WIDropDownMenuOption
function gui.DropDownMenu:AddOption(arg1) end

--- 
--- @param offset int
--- @overload fun(arg1: int, arg2: bool): 
function gui.DropDownMenu:ScrollToOption(offset) end

--- 
function gui.DropDownMenu:CloseMenu() end

--- 
function gui.DropDownMenu:ClearOptions() end

--- 
function gui.DropDownMenu:ClearSelectedOption() end

--- 
--- @return int ret0
function gui.DropDownMenu:GetOptionCount() end

--- 
function gui.DropDownMenu:ToggleMenu() end

--- 
--- @param arg1 int
--- @return class WIDropDownMenuOption ret0
function gui.DropDownMenu:GetOptionElement(arg1) end

--- 
--- @param idx int
--- @return string ret0
function gui.DropDownMenu:GetOptionText(idx) end

--- 
--- @param arg1 int
--- @return string ret0
function gui.DropDownMenu:GetOptionValue(arg1) end

--- 
--- @return int ret0
function gui.DropDownMenu:GetSelectedOption() end

--- 
function gui.DropDownMenu:OpenMenu() end

--- 
--- @param arg1 string
--- @return bool ret0
function gui.DropDownMenu:HasOption(arg1) end

--- 
--- @return bool ret0
function gui.DropDownMenu:IsMenuOpen() end

--- 
--- @param arg1 string
--- @overload fun(arg1: int): 
function gui.DropDownMenu:SelectOption(arg1) end

--- 
--- @param text string
function gui.DropDownMenu:SelectOptionByText(text) end

--- 
--- @param arg1 int
function gui.DropDownMenu:SetListItemCount(arg1) end

--- 
--- @param arg1 int
--- @param arg2 string
function gui.DropDownMenu:SetOptionText(arg1, arg2) end

--- 
--- @param arg1 int
--- @param arg2 string
function gui.DropDownMenu:SetOptionValue(arg1, arg2) end


--- 
--- @class gui.Element
gui.Element = {}

--- 
--- @overload fun(backgroundElement: bool): 
--- @overload fun(arg1: bool, arg2: bool): 
function gui.Element:SetBackgroundElement() end

--- 
--- @param arg1 string
--- @return class util::Vector2iProperty ret0
function gui.Element:GetAttachmentPosProperty(arg1) end

--- 
--- @param name string
--- @return class WIAttachment ret0
--- @overload fun(arg1: string, arg2: math.Vector2): class WIAttachment
function gui.Element:AddAttachment(name) end

--- 
--- @param name string
--- @param o unknown
--- @return util.Callback ret0
function gui.Element:AddCallback(name, o) end

--- 
--- @return math.Mat4 ret0
function gui.Element:GetAbsolutePose() end

--- 
--- @param name string
--- @return table ret0
function gui.Element:FindDescendantsByName(name) end

--- 
--- @param name string
--- @param o unknown
--- @return util.Callback ret0
function gui.Element:AddEventListener(name, o) end

--- 
--- @param name string
--- @param o1 any
--- @param o2 any
--- @param o3 any
--- @param o4 any
--- @param o5 any
--- @param o6 any
--- @param o7 any
--- @param o8 any
--- @overload fun(name: string, o1: any, o2: any, o3: any, o4: any, o5: any, o6: any, o7: any): 
--- @overload fun(name: string, o1: any, o2: any, o3: any, o4: any, o5: any, o6: any): 
--- @overload fun(name: string, o1: any, o2: any, o3: any, o4: any, o5: any): 
--- @overload fun(name: string, o1: any, o2: any, o3: any, o4: any): 
--- @overload fun(name: string, o1: any, o2: any, o3: any): 
--- @overload fun(name: string, o1: any, o2: any): 
--- @overload fun(name: string, o1: any): 
--- @overload fun(name: string): 
function gui.Element:CallCallbacks(name, o1, o2, o3, o4, o5, o6, o7, o8) end

--- 
--- @param arg1 string
function gui.Element:AddStyleClass(arg1) end

--- 
--- @param key int
--- @return enum util::EventReply ret0
--- @overload fun(key: int, mods: int): enum util::EventReply
function gui.Element:InjectKeyPress(key) end

--- 
--- @param arg1 class WISkin
--- @overload fun(arg1: class WISkin): 
function gui.Element:ApplySkin(arg1) end

--- 
--- @param className string
--- @return gui.Element ret0
function gui.Element:FindAncestorByClass(className) end

--- 
--- @param arg1 int
--- @overload fun(arg1: int, arg2: int, arg3: int, arg4: int): 
function gui.Element:AnchorWithMargin(arg1) end

--- 
--- @param name string
--- @param o1 any
--- @param o2 any
--- @param o3 any
--- @param o4 any
--- @param o5 any
--- @param o6 any
--- @param o7 any
--- @param o8 any
--- @overload fun(name: string, o1: any, o2: any, o3: any, o4: any, o5: any, o6: any, o7: any): 
--- @overload fun(name: string, o1: any, o2: any, o3: any, o4: any, o5: any, o6: any): 
--- @overload fun(name: string, o1: any, o2: any, o3: any, o4: any, o5: any): 
--- @overload fun(name: string, o1: any, o2: any, o3: any, o4: any): 
--- @overload fun(name: string, o1: any, o2: any, o3: any): 
--- @overload fun(name: string, o1: any, o2: any): 
--- @overload fun(name: string, o1: any): 
--- @overload fun(name: string): 
function gui.Element:CallEventListeners(name, o1, o2, o3, o4, o5, o6, o7, o8) end

--- 
function gui.Element:ClearStyleClasses() end

--- 
--- @return bool ret0
function gui.Element:IsCursorInBounds() end

--- 
--- @overload fun(arg1: bool): 
function gui.Element:CenterToParent() end

--- 
--- @return bool ret0
function gui.Element:IsUpdateScheduled() end

--- 
--- @return int ret0
function gui.Element:GetZPos() end

--- 
--- @return gui.Element ret0
function gui.Element:GetParent() end

--- 
function gui.Element:CenterToParentX() end

--- 
--- @return bool ret0
function gui.Element:IsClippingEnabled() end

--- 
--- @param c string
--- @return enum util::EventReply ret0
--- @overload fun(c: string, mods: int): enum util::EventReply
function gui.Element:InjectCharInput(c) end

--- 
function gui.Element:CenterToParentY() end

--- 
--- @param pos math.Vector2i
--- @param size math.Vector2i
--- @overload fun(pos: math.Vector2i): 
function gui.Element:ClampToBounds(pos, size) end

--- 
--- @param arg1 string
--- @return math.Vector2 ret0
function gui.Element:GetAttachmentPos(arg1) end

--- 
--- @param arg1 string
--- @param arg2 math.Vector2
function gui.Element:SetAttachmentPos(arg1, arg2) end

--- 
--- @param pos math.Vector2i
--- @param size math.Vector2i
--- @overload fun(pos: math.Vector2i): 
function gui.Element:ClampToVisibleBounds(pos, size) end

--- 
--- @return math.Vector2 ret0
function gui.Element:GetHalfSize() end

--- 
function gui.Element:ClearAnchor() end

--- 
--- @overload fun(bTrap: bool): 
function gui.Element:TrapFocus() end

--- 
function gui.Element:ClearFocus() end

--- 
--- @param className string
--- @param idx int
--- @overload fun(idx: int): 
function gui.Element:GetChild(className, idx) end

--- 
function gui.Element:ClearLocalRenderTransform() end

--- 
function gui.Element:ClearParent() end

--- 
function gui.Element:DebugPrintHierarchy() end

--- 
--- @param cmd prosper.CommandBuffer
function gui.Element:Think(cmd) end

--- 
function gui.Element:DisableThinking() end

--- 
--- @return class util::ColorProperty ret0
function gui.Element:GetColorProperty() end

--- 
--- @param name string
--- @return gui.Element ret0
function gui.Element:FindDescendantByName(name) end

--- 
--- @return bool ret0
function gui.Element:GetMouseInputEnabled() end

--- 
--- @param drawInfo gui.GridPanel.DrawInfo
--- @param drawState struct wgui::DrawState
--- @overload fun(drawInfo: gui.GridPanel.DrawInfo, drawState: struct wgui::DrawState, scissorOffset: math.Vector2i, scissorSize: math.Vector2i): 
--- @overload fun(drawInfo: gui.GridPanel.DrawInfo, drawState: struct wgui::DrawState, scissorOffset: math.Vector2i, scissorSize: math.Vector2i, offsetParent: math.Vector2i): 
function gui.Element:Draw(drawInfo, drawState) end

--- 
--- @return bool ret0
function gui.Element:GetCursorMovementCheckEnabled() end

--- 
--- @return prosper.Texture ret0
--- @overload fun(info: gui.DrawToTextureInfo): prosper.Texture
--- @overload fun(rt: prosper.RenderTarget): prosper.Texture
--- @overload fun(rt: prosper.RenderTarget, info: gui.DrawToTextureInfo): prosper.Texture
function gui.Element:DrawToTexture() end

--- 
--- @return int ret0
function gui.Element:GetLeft() end

--- 
function gui.Element:EnableThinking() end

--- 
--- @param tFadeIn number
--- @param alphaTarget number
--- @overload fun(tFadeIn: number): 
function gui.Element:FadeIn(tFadeIn, alphaTarget) end

--- 
--- @return enum GLFW::Cursor::Shape ret0
function gui.Element:GetCursor() end

--- 
--- @param tFade number
--- @overload fun(arg1: number, arg2: bool): 
function gui.Element:FadeOut(tFade) end

--- 
--- @return math.Vector2i ret0
function gui.Element:GetEndPos() end

--- 
--- @return number ret0_1
--- @return number ret0_2
--- @return number ret0_3
--- @return number ret0_4
function gui.Element:GetAnchor() end

--- 
--- @param y number
function gui.Element:SetY(y) end

--- 
--- @param name string
function gui.Element:FindChildByName(name) end

--- 
--- @param arg1 gui.Element
--- @return int ret0
function gui.Element:FindChildIndex(arg1) end

--- 
--- @param name string
function gui.Element:FindChildrenByName(name) end

--- 
--- @return bool ret0
function gui.Element:GetKeyboardInputEnabled() end

--- 
--- @param arg1 gui.Element
--- @return bool ret0
function gui.Element:IsDescendantOf(arg1) end

--- 
--- @param arg1 string
--- @return math.Vector2i ret0
function gui.Element:GetAbsoluteAttachmentPos(arg1) end

--- 
--- @param arg1 math.Vector2
--- @param arg2 bool
--- @return math.Vector2 ret0
--- @overload fun(arg1: math.Vector2, arg2: bool): math.Vector2
--- @overload fun(arg1: bool): math.Vector2
--- @overload fun(arg1: bool): math.Vector2
function gui.Element:GetAbsolutePos(arg1, arg2) end

--- 
--- @return math.Vector2i ret0_1
--- @return math.Vector2i ret0_2
--- @return math.Vector2i ret0_3
function gui.Element:GetAbsoluteVisibleBounds() end

--- 
function gui.Element:GetCursorPos() end

--- 
function gui.Element:GetAlpha() end

--- 
--- @param arg1 number
function gui.Element:SetAnchorRight(arg1) end

--- 
--- @return int ret0
function gui.Element:GetHeight() end

--- 
--- @return int ret0
function gui.Element:GetBottom() end

--- 
--- @return bool ret0
function gui.Element:GetAutoAlignToParentX() end

--- 
--- @return bool ret0
function gui.Element:GetAutoAlignToParentY() end

--- 
--- @return math.Vector2 ret0
function gui.Element:GetCenter() end

--- 
--- @return number ret0
function gui.Element:GetHalfWidth() end

--- 
--- @return number ret0
function gui.Element:GetCenterX() end

--- 
--- @return number ret0
function gui.Element:GetCenterY() end

--- 
--- @return number ret0
function gui.Element:GetHalfHeight() end

--- 
--- @return string ret0
function gui.Element:GetClass() end

--- 
--- @param className string
--- @overload fun(): 
function gui.Element:GetChildren(className) end

--- 
--- @return int ret0
function gui.Element:GetDepth() end

--- 
--- @return util.Color ret0
function gui.Element:GetColor() end

--- 
--- @param arg1 string
--- @return gui.Element ret0
function gui.Element:GetFirstChild(arg1) end

--- 
--- @return class util::BoolProperty ret0
function gui.Element:GetFocusProperty() end

--- 
--- @return bool ret0
function gui.Element:IsFocusTrapped() end

--- 
--- @return int ret0
function gui.Element:GetIndex() end

--- 
--- @return math.Vector2i ret0
function gui.Element:GetSize() end

--- 
--- @return number ret0
function gui.Element:GetLocalAlpha() end

--- 
--- @param arg1 gui.Element
function gui.Element:RemoveElementOnRemoval(arg1) end

--- 
--- @return math.ScaledTransform ret0
function gui.Element:GetLocalRenderTransform() end

--- 
--- @return class util::BoolProperty ret0
function gui.Element:GetMouseInBoundsProperty() end

--- 
--- @return string ret0
function gui.Element:GetName() end

--- 
--- @return math.Vector2i ret0
function gui.Element:GetPos() end

--- 
--- @return class util::Vector2iProperty ret0
function gui.Element:GetPosProperty() end

--- 
--- @param arg1 math.Vector2
--- @return math.Vector2 ret0
function gui.Element:GetRelativePos(arg1) end

--- 
--- @param cmd prosper.CommandBuffer
function gui.Element:InvokeThink(cmd) end

--- 
--- @return int ret0
function gui.Element:GetRight() end

--- 
--- @return gui.Element ret0
function gui.Element:GetRootElement() end

--- 
--- @return prosper.Window ret0
function gui.Element:GetRootWindow() end

--- 
--- @return math.Mat4 ret0
function gui.Element:GetRotationMatrix() end

--- 
--- @return math.Vector2 ret0
function gui.Element:GetScale() end

--- 
--- @return string ret0
function gui.Element:GetTooltip() end

--- 
--- @return class util::Vector2Property ret0
function gui.Element:GetScaleProperty() end

--- 
--- @return bool ret0
function gui.Element:GetScrollInputEnabled() end

--- 
--- @return bool ret0
function gui.Element:IsFadingIn() end

--- 
--- @return class util::Vector2iProperty ret0
function gui.Element:GetSizeProperty() end

--- 
--- @return bool ret0
function gui.Element:IsFading() end

--- 
--- @return table ret0
function gui.Element:GetStyleClasses() end

--- 
--- @return int ret0
function gui.Element:GetTop() end

--- 
--- @param arg1 bool
function gui.Element:SetStencilEnabled(arg1) end

--- 
--- @return class util::BoolProperty ret0
function gui.Element:GetVisibilityProperty() end

--- 
--- @return math.Vector2i ret0_1
--- @return math.Vector2i ret0_2
function gui.Element:GetVisibleBounds() end

--- 
--- @return int ret0
function gui.Element:GetWidth() end

--- 
function gui.Element:GetX() end

--- 
function gui.Element:GetY() end

--- 
--- @param arg1 int
function gui.Element:SetLeft(arg1) end

--- 
--- @return bool ret0
function gui.Element:HasAnchor() end

--- 
--- @return bool ret0
function gui.Element:HasFocus() end

--- 
--- @return bool ret0
function gui.Element:HasTooltip() end

--- 
--- @param key int
--- @param action int
--- @return enum util::EventReply ret0
--- @overload fun(key: int, action: int, mods: int): enum util::EventReply
function gui.Element:InjectKeyboardInput(key, action) end

--- 
--- @param mousePos math.Vector2
--- @param button int
--- @return enum util::EventReply ret0
--- @overload fun(mousePos: math.Vector2, button: int, mods: int): enum util::EventReply
function gui.Element:InjectMouseClick(mousePos, button) end

--- 
--- @param w number
function gui.Element:SetWidth(w) end

--- 
--- @param mousePos math.Vector2
--- @param button int
--- @param action int
--- @return enum util::EventReply ret0
--- @overload fun(mousePos: math.Vector2, button: int, action: int, mods: int): enum util::EventReply
function gui.Element:InjectMouseInput(mousePos, button, action) end

--- 
--- @param mousePos math.Vector2
function gui.Element:InjectMouseMoveInput(mousePos) end

--- 
--- @param mousePos math.Vector2
--- @param offset math.Vector2
--- @return enum util::EventReply ret0
--- @overload fun(mousePos: math.Vector2, offset: math.Vector2, offsetAsPixels: bool): enum util::EventReply
function gui.Element:InjectScrollInput(mousePos, offset) end

--- 
--- @param arg1 gui.Element
--- @return bool ret0
function gui.Element:IsAncestor(arg1) end

--- 
--- @param arg1 gui.Element
--- @return bool ret0
function gui.Element:IsAncestorOf(arg1) end

--- 
--- @param arg1 bool
function gui.Element:SetSkinCallbacksEnabled(arg1) end

--- 
--- @return bool ret0
function gui.Element:IsBackgroundElement() end

--- 
function gui.Element:ResetRotation() end

--- 
--- @param arg1 gui.Element
--- @return bool ret0
function gui.Element:IsDescendant(arg1) end

--- 
--- @return bool ret0
function gui.Element:IsFadingOut() end

--- 
--- @return bool ret0
function gui.Element:IsHidden() end

--- 
--- @return bool ret0
function gui.Element:IsParentVisible() end

--- 
--- @param pos math.Vector2
function gui.Element:IsPosInBounds(pos) end

--- 
--- @return bool ret0
function gui.Element:IsRemovalScheduled() end

--- 
--- @return bool ret0
function gui.Element:IsStencilEnabled() end

--- 
--- @return bool ret0
function gui.Element:IsValid() end

--- 
--- @return bool ret0
function gui.Element:IsVisible() end

--- 
--- @param arg1 bool
--- @overload fun(arg1: bool): 
function gui.Element:KillFocus(arg1) end

--- 
--- @param cmdBufGroup prosper.CommandBufferRecorder
--- @param img prosper.Image
--- @param info gui.DrawToTextureInfo
function gui.Element:RecordDraw(cmdBufGroup, img, info) end

--- 
function gui.Element:RefreshSkin() end

--- 
function gui.Element:Remove() end

--- 
function gui.Element:RemoveSafely() end

--- 
--- @param arg1 string
function gui.Element:RemoveStyleClass(arg1) end

--- 
function gui.Element:RequestFocus() end

--- 
function gui.Element:ResetParent() end

--- 
function gui.Element:ResetSkin() end

--- 
function gui.Element:Resize() end

--- 
function gui.Element:ScheduleUpdate() end

--- 
--- @param x number
--- @param y number
--- @overload fun(pos: math.Vector2): 
function gui.Element:SetAbsolutePos(x, y) end

--- 
--- @param alpha number
function gui.Element:SetAlpha(alpha) end

--- 
--- @param arg1 number
--- @param arg2 number
--- @overload fun(arg1: math.Vector2): 
function gui.Element:SetScale(arg1, arg2) end

--- 
--- @param arg1 bool
function gui.Element:SetAlwaysUpdate(arg1) end

--- 
--- @param arg1 int
function gui.Element:SetTop(arg1) end

--- 
--- @param left number
--- @param top number
--- @param right number
--- @param bottom number
--- @overload fun(arg1: number, arg2: number, arg3: number, arg4: number, arg5: int, arg6: int): 
function gui.Element:SetAnchor(left, top, right, bottom) end

--- 
--- @param arg1 number
function gui.Element:SetAnchorBottom(arg1) end

--- 
--- @param arg1 number
function gui.Element:SetAnchorLeft(arg1) end

--- 
--- @param arg1 number
function gui.Element:SetAnchorTop(arg1) end

--- 
--- @param arg1 bool
--- @overload fun(arg1: bool, arg2: bool): 
function gui.Element:SetAutoAlignToParent(arg1) end

--- 
--- @param x bool
--- @param y bool
--- @param updateImmediately bool
--- @overload fun(x: bool, y: bool): 
--- @overload fun(autoSize: bool): 
--- @overload fun(): 
function gui.Element:SetAutoSizeToContents(x, y, updateImmediately) end

--- 
--- @param arg1 int
function gui.Element:SetBottom(arg1) end

--- 
--- @param start math.Vector2
--- @param end math.Vector2
function gui.Element:SetBounds(start, end_) end

--- 
--- @param arg1 math.Vector2i
function gui.Element:SetCenterPos(arg1) end

--- 
--- @param arg1 bool
function gui.Element:SetClippingEnabled(arg1) end

--- 
--- @param col util.Color
function gui.Element:SetColor(col) end

--- 
--- @param color util.Color
function gui.Element:SetColorRGB(color) end

--- 
--- @param arg1 enum GLFW::Cursor::Shape
function gui.Element:SetCursor(arg1) end

--- 
--- @param arg1 bool
function gui.Element:SetCursorMovementCheckEnabled(arg1) end

--- 
--- @param h number
function gui.Element:SetHeight(h) end

--- 
--- @param arg1 int
function gui.Element:SetZPos(arg1) end

--- 
--- @param arg1 bool
function gui.Element:SetKeyboardInputEnabled(arg1) end

--- 
--- @param arg1 number
function gui.Element:SetLocalAlpha(arg1) end

--- 
--- @param arg1 math.ScaledTransform
function gui.Element:SetLocalRenderTransform(arg1) end

--- 
--- @param arg1 bool
function gui.Element:SetMouseInputEnabled(arg1) end

--- 
--- @param arg1 string
function gui.Element:SetName(arg1) end

--- 
--- @param hParent gui.Element
--- @param index int
--- @overload fun(hParent: gui.Element): 
function gui.Element:SetParent(hParent, index) end

--- 
--- @param hParent gui.Element
--- @param index int
--- @overload fun(hParent: gui.Element): 
function gui.Element:SetParentAndUpdateWindow(hParent, index) end

--- 
--- @param arg1 bool
--- @param arg2 bool
--- @overload fun(arg1: bool, arg2: bool): 
--- @overload fun(arg1: bool, arg2: bool): 
function gui.Element:SizeToContents(arg1, arg2) end

--- 
--- @param x number
--- @param y number
--- @overload fun(pos: math.Vector2): 
function gui.Element:SetPos(x, y) end

--- 
--- @param arg1 bool
function gui.Element:SetRemoveOnParentRemoval(arg1) end

--- 
--- @param arg1 int
function gui.Element:SetRight(arg1) end

--- 
--- @param arg1 math.Mat4
--- @overload fun(arg1: number, arg2: math.Vector2): 
function gui.Element:SetRotation(arg1) end

--- 
--- @param arg1 bool
function gui.Element:SetScrollInputEnabled(arg1) end

--- 
--- @param x number
--- @param y number
--- @overload fun(size: math.Vector2): 
function gui.Element:SetSize(x, y) end

--- 
--- @param arg1 string
function gui.Element:SetSkin(arg1) end

--- 
--- @param arg1 bool
function gui.Element:SetThinkingEnabled(arg1) end

--- 
--- @param arg1 string
function gui.Element:SetTooltip(arg1) end

--- 
--- @param arg1 bool
function gui.Element:SetVisible(arg1) end

--- 
--- @param x number
function gui.Element:SetX(x) end

--- 
--- @return bool ret0
function gui.Element:ShouldAutoSizeToContentsX() end

--- 
--- @return bool ret0
function gui.Element:ShouldAutoSizeToContentsY() end

--- 
function gui.Element:Update() end

--- 
function gui.Element:UpdateAutoSizeToContents() end

--- 
--- @param arg1 gui.Element
--- @return bool ret0
--- @overload fun(wrapperClassName: string): bool
function gui.Element:Wrap(arg1) end

--- 
--- @param 1 gui.Element
function gui.Element:__eq(arg1) end

--- 
function gui.Element:__tostring() end


--- 
--- @class gui.Element.DrawInfo
--- @field size  
--- @field commandBuffer  
--- @field transform  
--- @field msaa  
--- @field offset  
--- @field useScissor  
--- @field useStencil  
--- @overload fun(arg1: prosper.CommandBuffer):gui.Element.DrawInfo
gui.Element.DrawInfo = {}

--- 
--- @param color util.Color
function gui.Element.DrawInfo:SetColor(color) end

--- 
--- @param t math.Mat4
function gui.Element.DrawInfo:SetPostTransform(t) end


--- 
--- @class gui.TextEntry: gui.Element
gui.TextEntry = {}

--- 
--- @return class WIRect ret0
function gui.TextEntry:GetCaretElement() end

--- 
--- @param arg1 bool
function gui.TextEntry:SetSelectable(arg1) end

--- 
--- @return int ret0
function gui.TextEntry:GetMaxLength() end

--- 
--- @return gui.Text ret0
function gui.TextEntry:GetTextElement() end

--- 
--- @return bool ret0
function gui.TextEntry:IsNumeric() end

--- 
--- @return bool ret0
function gui.TextEntry:IsMultiLine() end

--- 
--- @return string ret0
function gui.TextEntry:GetText() end

--- 
--- @return string ret0
function gui.TextEntry:GetValue() end

--- 
--- @return bool ret0
function gui.TextEntry:IsEditable() end

--- 
--- @return bool ret0
function gui.TextEntry:IsSelectable() end

--- 
--- @param arg1 bool
function gui.TextEntry:SetEditable(arg1) end

--- 
--- @param arg1 int
function gui.TextEntry:SetMaxLength(arg1) end

--- 
--- @param arg1 bool
function gui.TextEntry:SetMultiLine(arg1) end

--- 
--- @param text string
function gui.TextEntry:SetText(text) end


--- 
--- @class gui.Frame: gui.Transformable, gui.Element
gui.Frame = {}

--- 
--- @return class util::Utf8String ret0
function gui.Frame:GetTitle() end

--- 
--- @param arg1 bool
function gui.Frame:SetCloseButtonEnabled(arg1) end

--- 
--- @param arg1 string
function gui.Frame:SetTitle(arg1) end


--- 
--- @class gui.GridPanel: gui.Table, gui.Element
gui.GridPanel = {}

--- 
--- @param arg1 gui.Element
--- @param arg2 int
--- @param arg3 int
--- @return gui.GridPanel.Cell ret0
function gui.GridPanel:AddItem(arg1, arg2, arg3) end

--- 
--- @return int ret0
function gui.GridPanel:GetColumnCount() end


--- 
--- @class gui.GridPanel.Cell: gui.Container, gui.Element
gui.GridPanel.Cell = {}

--- 
--- @return int ret0
function gui.GridPanel.Cell:GetColSpan() end

--- 
--- @return gui.Element ret0
function gui.GridPanel.Cell:GetFirstElement() end

--- 
--- @param arg1 int
function gui.GridPanel.Cell:SetColSpan(arg1) end


--- 
--- @class gui.GridPanel.DrawInfo
--- @field size math.Vector2i 
--- @field flags WIBase::DrawInfo::Flags 
--- @field commandBuffer any 
--- @field offset math.Vector2i 
--- @field transform math.Mat4 
--- @overload fun(arg1: prosper.CommandBuffer):gui.GridPanel.DrawInfo
gui.GridPanel.DrawInfo = {}

--- 
--- @param color util.Color
function gui.GridPanel.DrawInfo:SetColor(color) end

--- 
--- @param t math.Mat4
function gui.GridPanel.DrawInfo:SetPostTransform(t) end


--- @enum Flag
gui.GridPanel.DrawInfo = {
	FLAG_DONT_SKIP_IF_OUT_OF_BOUNDS_BIT = 8,
	FLAG_NONE = 0,
	FLAG_MSAA_BIT = 4,
}

--- @enum FlagUse
gui.GridPanel.DrawInfo = {
	FLAG_USE_SCISSOR_BIT = 1,
	FLAG_USE_STENCIL_BIT = 2,
}

--- 
--- @class gui.GridPanel.Row: gui.Container, gui.Element
gui.GridPanel.Row = {}

--- 
--- @return int ret0
function gui.GridPanel.Row:GetCellCount() end

--- 
function gui.GridPanel.Row:Deselect() end

--- 
--- @return int ret0
function gui.GridPanel.Row:GetRowIndex() end

--- 
--- @param arg1 int
--- @return gui.GridPanel.Cell ret0
function gui.GridPanel.Row:GetCell(arg1) end

--- 
--- @return bool ret0
function gui.GridPanel.Row:IsSelected() end

--- 
--- @param arg1 int
--- @return string ret0
function gui.GridPanel.Row:GetValue(arg1) end

--- 
--- @param arg1 int
--- @param arg2 gui.Element
--- @return gui.GridPanel.Cell ret0
function gui.GridPanel.Row:InsertElement(arg1, arg2) end

--- 
function gui.GridPanel.Row:Select() end

--- 
--- @param arg1 int
--- @param arg2 int
function gui.GridPanel.Row:SetCellWidth(arg1, arg2) end

--- 
--- @param arg1 int
--- @param arg2 string
--- @return gui.Element ret0
function gui.GridPanel.Row:SetValue(arg1, arg2) end


--- 
--- @class gui.Icon: gui.TexturedShape, gui.Shape, gui.Element
gui.Icon = {}

--- 
--- @param arg1 int
--- @param arg2 int
--- @param arg3 int
--- @param arg4 int
function gui.Icon:SetClipping(arg1, arg2, arg3, arg4) end


--- 
--- @class gui.Transformable: gui.Element
gui.Transformable = {}

--- 
--- @return int ret0
function gui.Transformable:GetMaxWidth() end

--- 
--- @param arg1 gui.SnapArea
function gui.Transformable:AddSnapTarget(arg1) end

--- 
function gui.Transformable:Close() end

--- 
--- @param arg1 bool
function gui.Transformable:SetResizable(arg1) end

--- 
--- @param arg1 int
function gui.Transformable:SetMaxHeight(arg1) end

--- 
--- @param arg1 math.Vector2i
--- @param arg2 math.Vector2i
function gui.Transformable:SetDragBounds(arg1, arg2) end

--- 
--- @return gui.Element ret0
function gui.Transformable:GetDragArea() end

--- 
--- @return int ret0
function gui.Transformable:GetMaxHeight() end

--- 
--- @return math.Vector2i ret0_1
--- @return math.Vector2i ret0_2
function gui.Transformable:GetDragBounds() end

--- 
--- @return bool ret0
function gui.Transformable:IsBeingDragged() end

--- 
--- @return math.Vector2i ret0
function gui.Transformable:GetMaxSize() end

--- 
--- @return int ret0
function gui.Transformable:GetMinHeight() end

--- 
--- @param arg1 bool
function gui.Transformable:SetResizeRatioLocked(arg1) end

--- 
--- @return math.Vector2i ret0
function gui.Transformable:GetMinSize() end

--- 
--- @return int ret0
function gui.Transformable:GetMinWidth() end

--- 
--- @return bool ret0
function gui.Transformable:IsBeingResized() end

--- 
--- @return bool ret0
function gui.Transformable:IsDraggable() end

--- 
--- @return bool ret0
function gui.Transformable:IsResizable() end

--- 
--- @return bool ret0
function gui.Transformable:IsResizeRatioLocked() end

--- 
--- @param arg1 bool
function gui.Transformable:SetDraggable(arg1) end

--- 
--- @param arg1 math.Vector2i
--- @overload fun(arg1: int, arg2: int): 
function gui.Transformable:SetMaxSize(arg1) end

--- 
--- @param arg1 int
function gui.Transformable:SetMaxWidth(arg1) end

--- 
--- @param arg1 int
function gui.Transformable:SetMinHeight(arg1) end

--- 
--- @param arg1 math.Vector2i
--- @overload fun(arg1: int, arg2: int): 
function gui.Transformable:SetMinSize(arg1) end

--- 
--- @param arg1 int
function gui.Transformable:SetMinWidth(arg1) end


--- 
--- @class gui.Line: gui.Element
gui.Line = {}

--- 
--- @return class util::Vector2iProperty ret0
function gui.Line:GetEndPosProperty() end

--- 
--- @return util.Color ret0
function gui.Line:GetEndColor() end

--- 
--- @param arg1 util.Color
function gui.Line:SetEndColor(arg1) end

--- 
--- @return int ret0
function gui.Line:GetLineWidth() end

--- 
--- @return util.Color ret0
function gui.Line:GetStartColor() end

--- 
--- @return math.Vector2 ret0
function gui.Line:GetStartPos() end

--- 
--- @return class util::Vector2iProperty ret0
function gui.Line:GetStartPosProperty() end

--- 
--- @param pos math.Vector2
function gui.Line:SetEndPos(pos) end

--- 
--- @param arg1 int
function gui.Line:SetLineWidth(arg1) end

--- 
--- @param arg1 util.Color
function gui.Line:SetStartColor(arg1) end

--- 
--- @param pos math.Vector2
function gui.Line:SetStartPos(pos) end


--- 
--- @class gui.NumericTextEntry: gui.TextEntry, gui.Element
gui.NumericTextEntry = {}

--- 
--- @return int ret0
function gui.NumericTextEntry:GetMaxValue() end

--- 
--- @return int ret0
function gui.NumericTextEntry:GetMinValue() end

--- 
--- @param arg1 int
--- @param arg2 int
function gui.NumericTextEntry:SetRange(arg1, arg2) end

--- 
--- @overload fun(arg1: int): 
function gui.NumericTextEntry:SetMaxValue() end

--- 
--- @overload fun(arg1: int): 
function gui.NumericTextEntry:SetMinValue() end


--- 
--- @class gui.OutlinedRect: gui.Element
gui.OutlinedRect = {}

--- 
--- @return int ret0
function gui.OutlinedRect:GetOutlineWidth() end

--- 
--- @param arg1 int
function gui.OutlinedRect:SetOutlineWidth(arg1) end


--- 
--- @class gui.Table: gui.Container, gui.Element
gui.Table = {}

--- 
--- @return gui.GridPanel.Row ret0
function gui.Table:AddHeaderRow() end

--- 
--- @return gui.GridPanel.Row ret0
function gui.Table:AddRow() end

--- 
--- @return table ret0
function gui.Table:GetRows() end

--- 
--- @param arg1 bool
--- @overload fun(arg1: bool): 
function gui.Table:Clear(arg1) end

--- 
--- @return int ret0
function gui.Table:GetRowHeight() end

--- 
--- @return gui.Element ret0
function gui.Table:GetFirstSelectedRow() end

--- 
--- @param arg1 int
--- @return gui.GridPanel.Row ret0
function gui.Table:GetRow(arg1) end

--- 
--- @return int ret0
function gui.Table:GetRowCount() end

--- 
--- @return enum WITable::SelectableMode ret0
function gui.Table:GetSelectableMode() end

--- 
--- @return table ret0
function gui.Table:GetSelectedRows() end

--- 
--- @return bool ret0
function gui.Table:IsScrollable() end

--- 
--- @return bool ret0
function gui.Table:IsSortable() end

--- 
--- @param a gui.GridPanel.Row
--- @param pos gui.GridPanel.Row
--- @overload fun(arg1: gui.GridPanel.Row, arg2: gui.GridPanel.Row, arg3: bool): 
function gui.Table:MoveRow(a, pos) end

--- 
--- @param arg1 int
function gui.Table:RemoveRow(arg1) end

--- 
--- @param arg1 gui.GridPanel.Row
function gui.Table:SelectRow(arg1) end

--- 
--- @param arg1 int
--- @param arg2 int
function gui.Table:SetColumnWidth(arg1, arg2) end

--- 
--- @param arg1 int
function gui.Table:SetRowHeight(arg1) end

--- 
--- @param arg1 bool
function gui.Table:SetScrollable(arg1) end

--- 
--- @param arg1 enum WITable::SelectableMode
function gui.Table:SetSelectableMode(arg1) end

--- 
--- @param arg1 bool
function gui.Table:SetSortable(arg1) end


--- @enum SelectableMode
gui.Table = {
	SELECTABLE_MODE_MULTI = 2,
	SELECTABLE_MODE_NONE = 0,
	SELECTABLE_MODE_SINGLE = 1,
}

--- 
--- @class gui.Table.Cell: gui.Container, gui.Element
gui.Table.Cell = {}

--- 
--- @return int ret0
function gui.Table.Cell:GetColSpan() end

--- 
--- @return gui.Element ret0
function gui.Table.Cell:GetFirstElement() end

--- 
--- @param arg1 int
function gui.Table.Cell:SetColSpan(arg1) end


--- 
--- @class gui.Table.Row: gui.Container, gui.Element
gui.Table.Row = {}

--- 
--- @return int ret0
function gui.Table.Row:GetCellCount() end

--- 
function gui.Table.Row:Deselect() end

--- 
--- @return int ret0
function gui.Table.Row:GetRowIndex() end

--- 
--- @param arg1 int
--- @return gui.Table.Cell ret0
function gui.Table.Row:GetCell(arg1) end

--- 
--- @return bool ret0
function gui.Table.Row:IsSelected() end

--- 
--- @param arg1 int
--- @return string ret0
function gui.Table.Row:GetValue(arg1) end

--- 
--- @param arg1 int
--- @param arg2 gui.Element
--- @return gui.Table.Cell ret0
function gui.Table.Row:InsertElement(arg1, arg2) end

--- 
function gui.Table.Row:Select() end

--- 
--- @param arg1 int
--- @param arg2 int
function gui.Table.Row:SetCellWidth(arg1, arg2) end

--- 
--- @param arg1 int
--- @param arg2 string
--- @return gui.Element ret0
function gui.Table.Row:SetValue(arg1, arg2) end


--- 
--- @class gui.ProgressBar: gui.Element
gui.ProgressBar = {}

--- 
--- @param arg1 string
function gui.ProgressBar:AddOption(arg1) end

--- 
--- @param min number
--- @param max number
--- @overload fun(arg1: number, arg2: number, arg3: number): 
function gui.ProgressBar:SetRange(min, max) end

--- 
--- @param arg1 string
function gui.ProgressBar:SetPostFix(arg1) end

--- 
--- @return number ret0
function gui.ProgressBar:GetProgress() end

--- 
--- @param arg1 number
function gui.ProgressBar:SetProgress(arg1) end

--- 
--- @return number ret0
function gui.ProgressBar:GetValue() end

--- 
--- @return number ret0_1
--- @return number ret0_2
--- @return number ret0_3
function gui.ProgressBar:GetRange() end

--- 
--- @param arg1 table
function gui.ProgressBar:SetOptions(arg1) end

--- 
--- @param arg1 bool
function gui.ProgressBar:SetLabelVisible(arg1) end

--- 
--- @param arg1 number
function gui.ProgressBar:SetValue(arg1) end


--- 
--- @class gui.Root: gui.Element
gui.Root = {}

--- 
function gui.Root:ClearRootCursorPosOverride() end

--- 
--- @return math.Vector2 ret0
function gui.Root:GetRootCursorPosOverride() end

--- 
--- @return math.Vector2 ret0
function gui.Root:GetRootCursorPos() end

--- 
--- @return prosper.Window ret0
function gui.Root:GetAssociatedWindow() end

--- 
--- @param arg1 math.Vector2
function gui.Root:SetRootCursorPosOverride(arg1) end


--- 
--- @class gui.RoundedRect: gui.Shape, gui.Element
gui.RoundedRect = {}

--- 
--- @return number ret0
function gui.RoundedRect:GetCornerSize() end

--- 
--- @return int ret0
function gui.RoundedRect:GetRoundness() end

--- 
--- @return bool ret0
function gui.RoundedRect:IsBottomLeftRound() end

--- 
--- @return bool ret0
function gui.RoundedRect:IsBottomRightRound() end

--- 
--- @return bool ret0
function gui.RoundedRect:IsTopLeftRound() end

--- 
--- @param arg1 bool
function gui.RoundedRect:SetRoundBottomLeft(arg1) end

--- 
--- @param arg1 number
function gui.RoundedRect:SetCornerSize(arg1) end

--- 
--- @param arg1 int
function gui.RoundedRect:SetRoundness(arg1) end

--- 
--- @return bool ret0
function gui.RoundedRect:IsTopRightRound() end

--- 
--- @param arg1 bool
function gui.RoundedRect:SetRoundBottomRight(arg1) end

--- 
--- @param arg1 bool
function gui.RoundedRect:SetRoundTopLeft(arg1) end

--- 
--- @param arg1 bool
function gui.RoundedRect:SetRoundTopRight(arg1) end


--- 
--- @class gui.RoundedTexturedRect: gui.TexturedShape, gui.Shape, gui.Element
gui.RoundedTexturedRect = {}

--- 
--- @return number ret0
function gui.RoundedTexturedRect:GetCornerSize() end

--- 
--- @return int ret0
function gui.RoundedTexturedRect:GetRoundness() end

--- 
--- @return bool ret0
function gui.RoundedTexturedRect:IsBottomLeftRound() end

--- 
--- @return bool ret0
function gui.RoundedTexturedRect:IsBottomRightRound() end

--- 
--- @return bool ret0
function gui.RoundedTexturedRect:IsTopLeftRound() end

--- 
--- @param arg1 bool
function gui.RoundedTexturedRect:SetRoundBottomLeft(arg1) end

--- 
--- @param arg1 number
function gui.RoundedTexturedRect:SetCornerSize(arg1) end

--- 
--- @param arg1 int
function gui.RoundedTexturedRect:SetRoundness(arg1) end

--- 
--- @return bool ret0
function gui.RoundedTexturedRect:IsTopRightRound() end

--- 
--- @param arg1 bool
function gui.RoundedTexturedRect:SetRoundBottomRight(arg1) end

--- 
--- @param arg1 bool
function gui.RoundedTexturedRect:SetRoundTopLeft(arg1) end

--- 
--- @param arg1 bool
function gui.RoundedTexturedRect:SetRoundTopRight(arg1) end


--- 
--- @class gui.ScrollContainer: gui.Element
gui.ScrollContainer = {}

--- 
--- @param arg1 gui.Element
function gui.ScrollContainer:ScrollToElement(arg1) end

--- 
--- @return gui.ScrollBar ret0
function gui.ScrollContainer:GetHorizontalScrollBar() end

--- 
--- @param arg1 gui.Element
function gui.ScrollContainer:ScrollToElementX(arg1) end

--- 
--- @param arg1 int
function gui.ScrollContainer:SetScrollAmountY(arg1) end

--- 
--- @return gui.ScrollBar ret0
function gui.ScrollContainer:GetVerticalScrollBar() end

--- 
--- @return gui.Element ret0
function gui.ScrollContainer:GetWrapperElement() end

--- 
--- @return bool ret0
function gui.ScrollContainer:IsContentsHeightFixed() end

--- 
--- @return bool ret0
function gui.ScrollContainer:IsContentsWidthFixed() end

--- 
--- @param arg1 gui.Element
function gui.ScrollContainer:ScrollToElementY(arg1) end

--- 
--- @param arg1 bool
function gui.ScrollContainer:SetAutoStickToBottom(arg1) end

--- 
--- @param arg1 bool
function gui.ScrollContainer:SetContentsHeightFixed(arg1) end

--- 
--- @param arg1 bool
function gui.ScrollContainer:SetContentsWidthFixed(arg1) end

--- 
--- @param arg1 int
--- @param arg2 int
function gui.ScrollContainer:SetScrollAmount(arg1, arg2) end

--- 
--- @param arg1 int
function gui.ScrollContainer:SetScrollAmountX(arg1) end

--- 
--- @return bool ret0
function gui.ScrollContainer:ShouldAutoStickToBottom() end


--- 
--- @class gui.TexturedShape: gui.Shape, gui.Element
gui.TexturedShape = {}

--- 
function gui.TexturedShape:ClearTexture() end

--- 
--- @param arg1 enum wgui::ShaderTextured::Channel
--- @return enum wgui::ShaderTextured::Channel ret0
--- @overload fun(arg1: enum wgui::ShaderTextured::Channel, arg2: enum wgui::ShaderTextured::Channel): enum wgui::ShaderTextured::Channel
function gui.TexturedShape:SetChannelSwizzle(arg1) end

--- 
--- @return number ret0
function gui.TexturedShape:GetAlphaCutoff() end

--- 
--- @return prosper.Texture ret0
function gui.TexturedShape:GetTexture() end

--- 
--- @return game.Material ret0
function gui.TexturedShape:GetMaterial() end

--- 
--- @return enum AlphaMode ret0
function gui.TexturedShape:GetAlphaMode() end

--- 
--- @return math.Vector2i ret0
function gui.TexturedShape:GetTextureSize() end

--- 
--- @overload fun(x: bool): 
--- @overload fun(arg1: bool, arg2: bool): 
function gui.TexturedShape:InvertVertexUVCoordinates() end

--- 
--- @param arg1 number
function gui.TexturedShape:SetAlphaCutoff(arg1) end

--- 
--- @param tex prosper.Texture
function gui.TexturedShape:SetTexture(tex) end

--- 
--- @param arg1 enum AlphaMode
function gui.TexturedShape:SetAlphaMode(arg1) end

--- 
--- @param arg1 string
--- @overload fun(arg1: game.Material): 
function gui.TexturedShape:SetMaterial(arg1) end

--- 
--- @param arg1 shader.GUITextured
function gui.TexturedShape:SetShader(arg1) end

--- 
--- @param arg1 int
--- @param arg2 math.Vector2
function gui.TexturedShape:SetVertexUVCoord(arg1, arg2) end

--- 
function gui.TexturedShape:SizeToTexture() end


--- @enum Channel
gui.TexturedShape = {
	CHANNEL_ALPHA = 3,
	CHANNEL_BLUE = 2,
	CHANNEL_RED = 0,
	CHANNEL_GREEN = 1,
}

--- 
--- @class gui.SilkIcon: gui.Icon, gui.TexturedShape, gui.Shape, gui.Element
gui.SilkIcon = {}

--- 
--- @param arg1 string
function gui.SilkIcon:SetIcon(arg1) end


--- 
--- @class gui.SnapArea: gui.Element
gui.SnapArea = {}

--- 
--- @return gui.Element ret0
function gui.SnapArea:GetTriggerArea() end


--- 
--- @class gui.Slider: gui.ProgressBar, gui.Element
gui.Slider = {}

--- 
--- @return bool ret0
function gui.Slider:IsBeingDragged() end


--- 
--- @class gui.Tooltip: gui.Element
gui.Tooltip = {}

--- 
--- @return string ret0
function gui.Tooltip:GetText() end

--- 
--- @param text string
function gui.Tooltip:SetText(text) end


--- 
--- @class gui.TreeList: gui.Table, gui.Element
gui.TreeList = {}

--- 
--- @param text string
--- @param void unknown
--- @return gui.Element ret0
--- @overload fun(text: string): gui.Element
function gui.TreeList:AddItem(text, void) end

--- 
function gui.TreeList:CollapseAll() end

--- 
function gui.TreeList:ExpandAll() end

--- 
--- @return gui.TreeList.Element ret0
function gui.TreeList:GetRootItem() end


--- 
--- @class gui.TreeList.Cell: gui.Container, gui.Element
gui.TreeList.Cell = {}

--- 
--- @return int ret0
function gui.TreeList.Cell:GetColSpan() end

--- 
--- @return gui.Element ret0
function gui.TreeList.Cell:GetFirstElement() end

--- 
--- @param arg1 int
function gui.TreeList.Cell:SetColSpan(arg1) end


--- 
--- @class gui.TreeList.Element: gui.GridPanel.Row, gui.Element
gui.TreeList.Element = {}

--- 
--- @param text string
--- @param void unknown
--- @return gui.Element ret0
--- @overload fun(text: string): gui.Element
function gui.TreeList.Element:AddItem(text, void) end

--- 
--- @overload fun(arg1: bool): 
function gui.TreeList.Element:Collapse() end

--- 
--- @return table ret0
function gui.TreeList.Element:GetItems() end

--- 
--- @overload fun(arg1: bool): 
function gui.TreeList.Element:Expand() end


--- 
--- @class gui.TreeList.Row: gui.Container, gui.Element
gui.TreeList.Row = {}

--- 
--- @return int ret0
function gui.TreeList.Row:GetCellCount() end

--- 
function gui.TreeList.Row:Deselect() end

--- 
--- @return int ret0
function gui.TreeList.Row:GetRowIndex() end

--- 
--- @param arg1 int
--- @return gui.TreeList.Cell ret0
function gui.TreeList.Row:GetCell(arg1) end

--- 
--- @return bool ret0
function gui.TreeList.Row:IsSelected() end

--- 
--- @param arg1 int
--- @return string ret0
function gui.TreeList.Row:GetValue(arg1) end

--- 
--- @param arg1 int
--- @param arg2 gui.Element
--- @return gui.TreeList.Cell ret0
function gui.TreeList.Row:InsertElement(arg1, arg2) end

--- 
function gui.TreeList.Row:Select() end

--- 
--- @param arg1 int
--- @param arg2 int
function gui.TreeList.Row:SetCellWidth(arg1, arg2) end

--- 
--- @param arg1 int
--- @param arg2 string
--- @return gui.Element ret0
function gui.TreeList.Row:SetValue(arg1, arg2) end


--- 
--- @class gui.VideoMode
--- @field blueBits int 
--- @field redBits int 
--- @field greenBits int 
--- @field height int 
--- @field refreshRate int 
--- @field width int 
gui.VideoMode = {}

--- 
--- @return string ret0
function gui.VideoMode:__tostring() end


