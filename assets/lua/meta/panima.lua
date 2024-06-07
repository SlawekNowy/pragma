--- @meta
--- 
--- @class panima
panima = {}


--- 
--- @class panima.Animation
panima.Animation = {}

--- 
--- @param path string
--- @param valueType enum udm::Type
--- @return panima.Channel ret0
--- @overload fun(arg1: panima.Channel): panima.Channel
function panima.Animation:AddChannel(path, valueType) end

--- 
--- @param arg1 panima.Animation
function panima.Animation:Merge(arg1) end

--- 
--- @return table ret0
function panima.Animation:GetChannels() end

--- 
--- @return int ret0
function panima.Animation:GetChannelCount() end

--- 
--- @return number ret0
function panima.Animation:GetAnimationSpeedFactor() end

--- 
--- @param path string
--- @return panima.Channel ret0
function panima.Animation:FindChannel(path) end

--- 
--- @return number ret0
function panima.Animation:GetDuration() end

--- 
--- @param arg1 panima.Channel
--- @overload fun(arg1: string): 
function panima.Animation:RemoveChannel(arg1) end

--- 
--- @param arg1 udm.LinkedPropertyWrapper
--- @return bool ret0
function panima.Animation:Save(arg1) end

--- 
--- @param arg1 number
function panima.Animation:SetAnimationSpeedFactor(arg1) end

--- 
--- @param arg1 number
function panima.Animation:SetDuration(arg1) end

--- 
--- @return number ret0
function panima.Animation:UpdateDuration() end

--- 
--- @param 1 panima.Animation
function panima.Animation:__eq(arg1) end

--- 
function panima.Animation:__tostring() end


--- 
--- @class panima.Pose
--- @overload fun():panima.Pose
panima.Pose = {}

--- 
--- @param arg1 game.Model.Skeleton
function panima.Pose:Localize(arg1) end

--- 
function panima.Pose:Clear() end

--- 
--- @param arg1 panima.Pose
--- @param arg2 number
function panima.Pose:Lerp(arg1, arg2) end

--- 
--- @param arg1 game.Model.Skeleton
function panima.Pose:Globalize(arg1) end

--- 
--- @return table ret0
function panima.Pose:GetBoneTranslationTable() end

--- 
--- @param arg1 int
--- @return math.ScaledTransform ret0
function panima.Pose:GetTransform(arg1) end

--- 
--- @param arg1 int
--- @param arg2 int
function panima.Pose:SetBoneIndex(arg1, arg2) end

--- 
--- @param arg1 int
--- @param arg2 math.ScaledTransform
function panima.Pose:SetTransform(arg1, arg2) end

--- 
--- @param arg1 int
function panima.Pose:SetTransformCount(arg1) end

--- 
function panima.Pose:__tostring() end


--- 
--- @class panima.Manager
panima.Manager = {}

--- 
--- @param arg1 string
--- @param arg2 panima.Set
function panima.Manager:AddAnimationSet(arg1, arg2) end

--- 
--- @return panima.Player ret0
function panima.Manager:GetPlayer() end

--- 
--- @return panima.Animation ret0
function panima.Manager:GetCurrentAnimation() end

--- 
--- @param arg1 string
--- @param arg2 enum panima::PlaybackFlags
--- @overload fun(arg1: string, arg2: enum panima::PlaybackFlags): 
--- @overload fun(arg1: string, arg2: string, arg3: enum panima::PlaybackFlags): 
--- @overload fun(arg1: string, arg2: string, arg3: enum panima::PlaybackFlags): 
--- @overload fun(arg1: string, arg2: int, arg3: enum panima::PlaybackFlags): 
--- @overload fun(arg1: string, arg2: int, arg3: enum panima::PlaybackFlags): 
function panima.Manager:PlayAnimation(arg1, arg2) end

--- 
--- @return int ret0
function panima.Manager:GetCurrentAnimationId() end

--- 
--- @return panima.Slice ret0
function panima.Manager:GetPreviousSlice() end

--- 
function panima.Manager:StopAnimation() end

--- 
--- @param 1 panima.Manager
function panima.Manager:__eq(arg1) end

--- 
function panima.Manager:__tostring() end


--- 
--- @class panima.Channel
--- @overload fun(arg1: udm.LinkedPropertyWrapper, arg2: udm.LinkedPropertyWrapper):panima.Channel
--- @overload fun(args: panima.Channel):panima.Channel
--- @overload fun():panima.Channel
panima.Channel = {}

--- 
function panima.Channel:ClearValueExpression() end

--- 
--- @return table ret0
function panima.Channel:GetValues() end

--- 
--- @param t number
--- @param value struct luabind::adl::udm_type<class luabind::adl::object,1,1,0>
--- @return int ret0
function panima.Channel:AddValue(t, value) end

--- 
--- @param startIndex int
--- @param count int
function panima.Channel:AddValueRange(startIndex, count) end

--- 
function panima.Channel:ClearAnimationData() end

--- 
--- @return table ret0
function panima.Channel:GetTimes() end

--- 
function panima.Channel:DebugPrint() end

--- 
--- @param startIndex int
--- @param count int
function panima.Channel:RemoveValueRange(startIndex, count) end

--- 
--- @return enum panima::ChannelInterpolation ret0
function panima.Channel:GetInterpolation() end

--- 
--- @param arg1 number
--- @param arg2 number
--- @param arg3 bool
--- @return bool ret0
--- @overload fun(arg1: number, arg2: number, arg3: bool): bool
function panima.Channel:ClearRange(arg1, arg2, arg3) end

--- 
--- @overload fun(arg1: number): 
--- @overload fun(tStart: number, tEnd: number): 
--- @overload fun(arg1: number, arg2: number, arg3: number): 
function panima.Channel:Decimate() end

--- 
--- @return int ret0
function panima.Channel:Optimize() end

--- 
--- @param arg1 number
--- @param arg2 number
--- @return int ret0
--- @overload fun(time: number): int
function panima.Channel:FindIndex(arg1, arg2) end

--- 
--- @return int ret0
function panima.Channel:GetSize() end

--- 
--- @param startTime number
--- @param endTime number
--- @param clampToOuterBoundaries bool
--- @return int ret0_1
--- @return int ret0_2
--- @overload fun(startTime: number, endTime: number, clampToOuterBoundaries: bool): int, int
function panima.Channel:FindIndexRangeInTimeRange(startTime, endTime, clampToOuterBoundaries) end

--- 
--- @param arg1 number
function panima.Channel:ResolveDuplicates(arg1) end

--- 
--- @param time number
--- @return int ret0_1
--- @return int ret0_2
--- @return number ret0_3
function panima.Channel:FindInterpolationIndices(time) end

--- 
--- @return panima.Channel.Path ret0
function panima.Channel:GetTargetPath() end

--- 
--- @param tStart number
--- @param tEnd number
--- @return table ret0_1
--- @return table ret0_2
function panima.Channel:GetDataInRange(tStart, tEnd) end

--- 
--- @param t number
--- @return struct luabind::adl::udm_type<class luabind::adl::object,1,1,0> ret0
--- @overload fun(t: number, clampToBounds: bool): struct luabind::adl::udm_type<class luabind::adl::object,1,1,0>
function panima.Channel:GetInterpolatedValue(t) end

--- 
--- @param arg1 int
--- @return number ret0
function panima.Channel:GetTime(arg1) end

--- 
function panima.Channel:SortValues() end

--- 
--- @return panima.TimeFrame ret0
function panima.Channel:GetTimeFrame() end

--- 
--- @param idx int
--- @return struct luabind::adl::udm_type<class luabind::adl::object,1,1,0> ret0
function panima.Channel:GetValue(idx) end

--- 
--- @return udm.LinkedPropertyWrapper ret0
function panima.Channel:GetTimesArray() end

--- 
--- @param 1 panima.Channel
function panima.Channel:__eq(arg1) end

--- 
--- @param tStart number
--- @param tEnd number
--- @return table ret0
function panima.Channel:GetTimesInRange(tStart, tEnd) end

--- 
--- @param arg1 int
function panima.Channel:Resize(arg1) end

--- 
--- @return udm.LinkedPropertyWrapper ret0
function panima.Channel:GetValueArray() end

--- 
--- @param interp enum panima::ChannelInterpolation
function panima.Channel:SetInterpolation(interp) end

--- 
--- @return int ret0
function panima.Channel:GetValueCount() end

--- 
--- @param times table
--- @param tValues table
--- @return int ret0
--- @overload fun(times: table, tValues: table, offset: number): int
--- @overload fun(times: table, tValues: table, offset: number, flags: enum panima::Channel::InsertFlags): int
function panima.Channel:InsertValues(times, tValues) end

--- 
--- @return string ret0
function panima.Channel:GetValueExpression() end

--- 
--- @return enum udm::Type ret0
function panima.Channel:GetValueType() end

--- 
--- @param arg1 number
--- @return int ret0
function panima.Channel:InsertSample(arg1) end

--- 
--- @param t number
--- @param value any
--- @return int ret0
function panima.Channel:InsertValue(t, value) end

--- 
--- @param timeValueMap table
--- @overload fun(times: table, values: table): 
function panima.Channel:SetValues(timeValueMap) end

--- 
--- @param arg1 udm.LinkedPropertyWrapper
--- @return bool ret0
function panima.Channel:Load(arg1) end

--- 
--- @param arg1 panima.Channel
function panima.Channel:MergeValues(arg1) end

--- 
function panima.Channel:Update() end

--- 
--- @param numValues int
--- @param minTime number
--- @param maxTime number
--- @param minVal number
--- @param maxVal number
function panima.Channel:PopulateRandom(numValues, minTime, maxTime, minVal, maxVal) end

--- 
--- @param expression string
--- @return variant ret0
function panima.Channel:SetValueExpression(expression) end

--- 
--- @param idx int
--- @return bool ret0
function panima.Channel:RemoveValue(idx) end

--- 
--- @param arg1 udm.LinkedPropertyWrapper
--- @return bool ret0
function panima.Channel:Save(arg1) end

--- 
--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 bool
--- @overload fun(arg1: number, arg2: number, arg3: number, arg4: number, arg5: bool): 
function panima.Channel:ScaleTimeInRange(arg1, arg2, arg3, arg4, arg5) end

--- 
--- @param path string
function panima.Channel:SetTargetPath(path) end

--- 
--- @param valueIndex int
--- @param time number
--- @param resort bool
--- @param removeExisting bool
--- @return int ret0
--- @overload fun(idx: int, time: number, resort: bool): int
--- @overload fun(idx: int, time: number): int
function panima.Channel:SetTime(valueIndex, time, resort, removeExisting) end

--- 
--- @return bool ret0
function panima.Channel:Validate() end

--- 
--- @param arg1 panima.TimeFrame
function panima.Channel:SetTimeFrame(arg1) end

--- 
--- @param idx int
--- @param value any
--- @return bool ret0
function panima.Channel:SetValue(idx, value) end

--- 
--- @param arg1 enum udm::Type
function panima.Channel:SetValueType(arg1) end

--- 
--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 bool
--- @overload fun(arg1: number, arg2: number, arg3: number, arg4: bool): 
function panima.Channel:ShiftTimeInRange(arg1, arg2, arg3, arg4) end

--- 
--- @param expression string
--- @return variant ret0
function panima.Channel:TestValueExpression(expression) end

--- 
--- @param arg1 math.ScaledTransform
function panima.Channel:TransformGlobal(arg1) end

--- 
function panima.Channel:__tostring() end


--- @enum InsertFlagBit
panima.Channel = {
	INSERT_FLAG_BIT_CLEAR_EXISTING_DATA_IN_RANGE = 1,
	INSERT_FLAG_BIT_DECIMATE_INSERTED_DATA = 2,
}

--- @enum InsertFlagNone
panima.Channel = {
	INSERT_FLAG_NONE = 0,
}

--- 
--- @class panima.Channel.Path
--- @field components  
--- @field path util.Path 
--- @overload fun(arg1: string):panima.Channel.Path
--- @overload fun():panima.Channel.Path
panima.Channel.Path = {}

--- 
--- @param arg1 bool
--- @return string ret0
--- @overload fun(arg1: bool): string
function panima.Channel.Path:ToUri(arg1) end

--- 
function panima.Channel.Path:__tostring() end


--- 
--- @class panima.Player
panima.Player = {}

--- 
--- @param arg1 number
--- @param arg2 bool
--- @return bool ret0
--- @overload fun(arg1: number, arg2: bool): bool
function panima.Player:Advance(arg1, arg2) end

--- 
--- @return number ret0
function panima.Player:GetCurrentTimeFraction() end

--- 
--- @return panima.Animation ret0
function panima.Player:GetAnimation() end

--- 
--- @return panima.Slice ret0
function panima.Player:GetCurrentSlice() end

--- 
--- @return number ret0
function panima.Player:GetRemainingDuration() end

--- 
--- @return number ret0
function panima.Player:GetCurrentTime() end

--- 
--- @return number ret0
function panima.Player:GetDuration() end

--- 
--- @return number ret0
function panima.Player:GetPlaybackRate() end

--- 
--- @return bool ret0
function panima.Player:IsLooping() end

--- 
function panima.Player:Reset() end

--- 
--- @param arg1 panima.Animation
function panima.Player:SetAnimation(arg1) end

--- 
function panima.Player:SetAnimationDirty() end

--- 
--- @param arg1 number
--- @param arg2 bool
--- @overload fun(arg1: number, arg2: bool): 
function panima.Player:SetCurrentTime(arg1, arg2) end

--- 
--- @param arg1 bool
function panima.Player:SetLooping(arg1) end

--- 
--- @param arg1 number
function panima.Player:SetPlaybackRate(arg1) end

--- 
--- @param 1 panima.Player
function panima.Player:__eq(arg1) end

--- 
function panima.Player:__tostring() end


--- 
--- @class panima.Set
panima.Set = {}

--- 
function panima.Set:Clear() end

--- 
--- @param arg1 panima.Animation
function panima.Set:AddAnimation(arg1) end

--- 
--- @param arg1 class std::basic_string_view<char,struct std::char_traits<char> >
--- @return panima.Animation ret0
function panima.Set:FindAnimation(arg1) end

--- 
--- @param arg1 int
--- @return panima.Animation ret0
function panima.Set:GetAnimation(arg1) end

--- 
--- @return table ret0
function panima.Set:GetAnimations() end

--- 
--- @return int ret0
function panima.Set:GetSize() end

--- 
--- @param arg1 class std::basic_string_view<char,struct std::char_traits<char> >
--- @return int ret0
function panima.Set:LookupAnimation(arg1) end

--- 
--- @param arg1 int
--- @overload fun(arg1: panima.Animation): 
--- @overload fun(arg1: class std::basic_string_view<char,struct std::char_traits<char> >): 
function panima.Set:RemoveAnimation(arg1) end

--- 
--- @param arg1 int
function panima.Set:Reserve(arg1) end

--- 
--- @param 1 panima.Set
function panima.Set:__eq(arg1) end

--- 
function panima.Set:__tostring() end


--- 
--- @class panima.TimeFrame
--- @field duration  
--- @field scale  
--- @field startOffset  
--- @overload fun():panima.TimeFrame
--- @overload fun(arg1: number, arg2: number, arg3: number):panima.TimeFrame
panima.TimeFrame = {}

--- 
function panima.TimeFrame:__tostring() end


--- 
--- @class panima.Slice
panima.Slice = {}

--- 
--- @param idx int
--- @return udm.Property ret0
function panima.Slice:GetChannelProperty(idx) end

--- 
--- @return int ret0
function panima.Slice:GetChannelValueCount() end

--- 
function panima.Slice:__tostring() end


