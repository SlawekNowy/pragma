--- @meta
--- 
--- @class rig
rig = {}

--- 
--- @param arg0 game.Model
--- @return util.IkRigConfig ret0
function rig.generate_ik_rig(arg0) end

--- 
--- @param arg0 rig.RetargetFlexData
--- @param arg1 map
--- @param arg2 ents.BaseFlexComponent
--- @overload fun(arg0: rig.RetargetFlexData, arg1: ents.BaseFlexComponent, arg2: ents.BaseFlexComponent): 
function rig.apply_retarget_flex(arg0, arg1, arg2) end

--- 
--- @param arg0 game.Model
--- @param arg1 game.Model.Animation.Frame
--- @param arg2 enum pragma::SignedAxis
--- @param arg3 enum pragma::Axis
--- @return enum pragma::SignedAxis ret0
function rig.determine_forward_facing_axis(arg0, arg1, arg2, arg3) end

--- 
--- @param arg0 rig.RetargetData
--- @param arg1 game.Model
--- @param arg2 ents.BaseAnimatedComponent
--- @param arg3 ents.BaseAnimatedComponent
--- @param arg4 game.Model.Skeleton
function rig.apply_retarget_rig(arg0, arg1, arg2, arg3, arg4) end

--- 
--- @param arg0 enum pragma::animation::MetaRigBoneType
--- @return rig.BoneDefinition ret0
function rig.get_bone_definition(arg0) end

--- 
--- @param arg0 game.Model
--- @return string ret0
--- @overload fun(arg0: string): string
function rig.get_ik_rig_cache_path(arg0) end

--- 
--- @param arg0 game.Model.Skeleton
--- @param arg1 game.Model.Animation.Frame
--- @return table ret0
function rig.find_mirrored_bone_pairs(arg0, arg1) end

--- 
--- @return string ret0
function rig.get_ik_rig_cache_base_path() end

--- 
--- @param arg0 game.Model.Skeleton
--- @param arg1 game.Model.Animation.Frame
--- @return enum pragma::SignedAxis ret0
function rig.determine_up_axis(arg0, arg1) end

--- 
--- @param arg0 game.Model
--- @return util.IkRigConfig ret0_1
--- @return string ret0_2
function rig.generate_cached_ik_rig(arg0) end

--- 
--- @param arg0 any
--- @return rig.RetargetFlexData ret0
function rig.initialize_retarget_flex_data(arg0) end

--- 
--- @return string ret0
function rig.get_ik_rig_base_path() end

--- 
--- @return table ret0
function rig.get_root_bones() end

--- 
--- @param arg0 any
--- @param arg1 any
--- @param arg2 any
--- @param arg3 any
--- @param arg4 any
--- @param arg5 any
--- @param arg6 any
--- @param arg7 any
--- @param arg8 any
--- @param arg9 any
--- @param arg10 any
--- @param arg11 any
--- @return rig.RetargetData ret0
function rig.initialize_retarget_data(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- 
--- @param arg0 class Game
function rig.run_unit_tests(arg0) end


--- 
--- @class rig.BoneDefinition
--- @field upAxisRule pragma::rig::OrientationAxisRule 
--- @field parentBoneType struct pragma::GString 
--- @field boneType struct pragma::GString 
--- @field forwardAxisRule pragma::rig::OrientationAxisRule 
rig.BoneDefinition = {}

--- 
function rig.BoneDefinition:__tostring() end

--- 
--- @param arg1 int
--- @return struct pragma::GString ret0
function rig.BoneDefinition:GetChild(arg1) end

--- 
--- @return int ret0
function rig.BoneDefinition:GetChildCount() end


--- 
--- @class rig.RetargetData
rig.RetargetData = {}


--- 
--- @class rig.RetargetFlexData
rig.RetargetFlexData = {}


--- 
--- @class util.rig
util.rig = {}


