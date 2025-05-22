--- @meta
--- 
--- @class ents
ents = {}

--- 
--- @param arg0 class Game
--- @param arg1 string
--- @param arg2 unknown
--- @return util.Callback ret0
--- @overload fun(arg0: class Game, arg1: int, arg2: unknown): util.Callback
function ents.add_component_creation_listener(arg0, arg1, arg2) end

--- 
--- @param game class Game
--- @param componentName string
--- @param filterFlags enum EntityIterator::FilterFlags
--- @param oFilter table
--- @return class LuaEntityComponentIterator ret0
--- @overload fun(arg1: class Game, arg2: string, arg3: variant): class LuaEntityComponentIterator
--- @overload fun(game: class Game, componentName: string): class LuaEntityComponentIterator
--- @overload fun(componentId: int, filterFlags: enum EntityIterator::FilterFlags, oFilter: table): class LuaEntityComponentIterator
--- @overload fun(arg1: int, arg2: variant): class LuaEntityComponentIterator
--- @overload fun(componentId: int): class LuaEntityComponentIterator
--- @overload fun(ID: struct luabind::adl::nil_type<class luabind::adl::object>): class LuaEntityComponentIterator
function ents.citerator(game, componentName, filterFlags, oFilter) end

--- 
--- @param propName string
--- @return string ret0
--- @overload fun(uuid: string, propName: string): string
--- @overload fun(uuid: util.Uuid, propName: string): string
function ents.create_uri(propName) end

--- 
--- @param uuid util.Uuid
--- @return string ret0
function ents.create_entity_uri(uuid) end

--- 
--- @param uuid util.Uuid
--- @param component string
--- @return string ret0
function ents.create_component_uri(uuid, component) end

--- 
--- @param classname string
--- @return ents.BaseEntityBase ret0
function ents.create(classname) end

--- 
--- @param mdl string
--- @return ents.BaseEntityBase ret0
--- @overload fun(mdl: string, origin: math.Vector): ents.BaseEntityBase
--- @overload fun(mdl: string, origin: math.Vector, angles: math.EulerAngles): ents.BaseEntityBase
--- @overload fun(mdl: string, origin: math.Vector, angles: math.EulerAngles, false_: bool): ents.BaseEntityBase
--- @overload fun(mdl: string, origin: vector.Vector): ents.BaseEntityBase
--- @overload fun(mdl: string, origin: vector.Vector, angles: math.EulerAngles): ents.BaseEntityBase
--- @overload fun(mdl: string, origin: vector.Vector, angles: math.EulerAngles, false_: bool): ents.BaseEntityBase
function ents.create_prop(mdl) end

--- 
--- @param origin math.Vector
--- @param radius number
--- @return ents.BaseEntityBase ret0
--- @overload fun(origin: math.Vector, min: math.Vector, max: math.Vector, angles: math.EulerAngles): ents.BaseEntityBase
--- @overload fun(origin: math.Vector, shape: phys.Shape): ents.BaseEntityBase
--- @overload fun(origin: vector.Vector, radius: number): ents.BaseEntityBase
--- @overload fun(origin: vector.Vector, min: vector.Vector, max: vector.Vector, angles: math.EulerAngles): ents.BaseEntityBase
--- @overload fun(origin: vector.Vector, shape: phys.Shape): ents.BaseEntityBase
function ents.create_trigger(origin, radius) end

--- 
--- @param uriPath string
--- @param uuid util.Uuid
--- @return ents.UniversalMemberReference ret0
--- @overload fun(uriPath: string): ents.UniversalMemberReference
function ents.parse_uri(uriPath, uuid) end

--- 
--- @param arg0 class Game
--- @param arg1 string
--- @return bool ret0
function ents.load_component(arg0, arg1) end

--- 
--- @return table ret0
function ents.get_vehicles() end

--- 
--- @param className string
--- @return table ret0
function ents.find_by_class(className) end

--- 
--- @param game class Game
--- @param linkFrom int
--- @param linkTo int
function ents.link_component_type(game, linkFrom, linkTo) end

--- 
--- @return table ret0
function ents.get_players() end

--- 
--- @param componentName string
--- @return table ret0
function ents.find_by_component(componentName) end

--- 
--- @param name string
--- @return table ret0
function ents.find_by_filter(name) end

--- 
--- @param name string
--- @return table ret0
function ents.find_by_name(name) end

--- 
--- @param uuid string
--- @return ents.BaseEntityBase ret0
function ents.find_by_uuid(uuid) end

--- 
--- @param game class Game
--- @param name string
--- @return int ret0
function ents.find_component_id(game, name) end

--- 
--- @param origin math.Vector
--- @return table ret0
--- @overload fun(origin: vector.Vector): table
function ents.get_sorted_by_distance(origin) end

--- 
--- @param min math.Vector
--- @param max math.Vector
--- @return table ret0
--- @overload fun(min: vector.Vector, max: vector.Vector): table
function ents.find_in_aabb(min, max) end

--- 
--- @param type enum pragma::ents::EntityMemberType
--- @return bool ret0
function ents.is_member_type_animatable(type) end

--- 
--- @param origin math.Vector
--- @param dir math.Vector
--- @param radius number
--- @param angle number
--- @return table ret0
--- @overload fun(origin: vector.Vector, dir: vector.Vector, radius: number, angle: number): table
function ents.find_in_cone(origin, dir, radius, angle) end

--- 
--- @return table ret0
function ents.get_npcs() end

--- 
--- @param origin math.Vector
--- @param radius number
--- @return table ret0
--- @overload fun(origin: vector.Vector, radius: number): table
function ents.find_in_sphere(origin, radius) end

--- 
--- @param arg1 string
--- @param arg2 table
--- @overload fun(arg1: string, arg2: table, arg3: enum LuaEntityType): 
--- @overload fun(className: string, classObject: classObject): 
function ents.register(arg1, arg2) end

--- 
--- @param game class Game
--- @return table ret0
function ents.find_installed_custom_components(game) end

--- 
--- @param type enum pragma::ents::EntityMemberType
--- @return bool ret0
function ents.is_member_type_udm_type(type) end

--- 
--- @param origin math.Vector
--- @return ents.BaseEntityBase ret0_1
--- @return number ret0_2
--- @overload fun(origin: vector.Vector): ents.BaseEntityBase, number
function ents.get_closest(origin) end

--- 
--- @param filters table
--- @return table ret0
--- @overload fun(filterFlags: enum EntityIterator::FilterFlags, filters: table): table
--- @overload fun(filterFlags: enum EntityIterator::FilterFlags): table
--- @overload fun(func: unknown): table
--- @overload fun(): table
function ents.get_all(filters) end

--- 
--- @param func unknown
--- @return table ret0
function ents.get_all_c(func) end

--- 
--- @param idx int
--- @return ents.BaseEntityBase ret0
function ents.get_by_index(idx) end

--- 
--- @param game class Game
--- @return table ret0
function ents.get_registered_component_types(game) end

--- 
--- @param idx int
--- @return ents.BaseEntityBase ret0
function ents.get_by_local_index(idx) end

--- 
--- @return class util::TWeakSharedHandle<class BaseEntity> ret0
function ents.get_null() end

--- 
--- @param componentName string
--- @return int ret0
function ents.get_component_id(componentName) end

--- 
--- @param game class Game
--- @param componentId int
--- @return ents.ComponentInfo ret0
function ents.get_component_info(game, componentId) end

--- 
--- @param componentId int
--- @return string ret0
function ents.get_component_name(componentId) end

--- 
--- @param componentId int
--- @param name string
--- @return int ret0
function ents.register_component_net_event(componentId, name) end

--- 
--- @param componentId int
--- @param name string
--- @return int ret0
function ents.register_component_event(componentId, name) end

--- 
--- @return ents.BaseEntityBase ret0
function ents.get_random() end

--- 
--- @param origin math.Vector
--- @return ents.BaseEntityBase ret0_1
--- @return number ret0_2
--- @overload fun(origin: vector.Vector): ents.BaseEntityBase, number
function ents.get_farthest(origin) end

--- 
--- @param game class Game
--- @param componentId int
--- @return int ret0
function ents.get_lua_component_member_count(game, componentId) end

--- 
--- @param game class Game
--- @param componentId int
--- @param memberIndex int
--- @return ents.ComponentInfo.MemberInfo ret0
function ents.get_lua_component_member_info(game, componentId, memberIndex) end

--- 
--- @return ents.BaseEntityBase ret0
function ents.get_world() end

--- 
--- @param game class Game
--- @return table ret0
function ents.get_registered_entity_types(game) end

--- 
--- @return table ret0
function ents.get_spawned() end

--- 
--- @return table ret0
function ents.get_weapons() end

--- 
--- @param filterFlags enum EntityIterator::FilterFlags
--- @param oFilter table
--- @return class LuaEntityIterator ret0
--- @overload fun(arg1: variant): class LuaEntityIterator
--- @overload fun(): class LuaEntityIterator
function ents.iterator(filterFlags, oFilter) end

--- 
--- @param memberType enum pragma::ents::EntityMemberType
--- @return string ret0
function ents.member_type_to_string(memberType) end

--- 
--- @param memberType string
--- @return enum pragma::ents::EntityMemberType ret0
function ents.string_to_member_type(memberType) end


--- 
--- @class ents.ConstraintCopyScaleComponent: ents.EntityComponent
ents.ConstraintCopyScaleComponent = {}


--- 
--- @class ents.AnimationDriverComponent: ents.EntityComponent
ents.AnimationDriverComponent = {}

--- 
--- @return map ret0
function ents.AnimationDriverComponent:GetConstants() end

--- 
--- @param arg1 string
--- @param arg2 udm.Property
function ents.AnimationDriverComponent:AddConstant(arg1, arg2) end

--- 
--- @return string ret0
function ents.AnimationDriverComponent:GetExpression() end

--- 
--- @param arg1 string
--- @param arg2 string
function ents.AnimationDriverComponent:AddReference(arg1, arg2) end

--- 
--- @return ents.UniversalMemberReference ret0
function ents.AnimationDriverComponent:GetDrivenObject() end

--- 
--- @param arg1 string
function ents.AnimationDriverComponent:SetExpression(arg1) end

--- 
--- @return map ret0
function ents.AnimationDriverComponent:GetReferences() end

--- 
--- @param arg1 ents.UniversalMemberReference
function ents.AnimationDriverComponent:SetDrivenObject(arg1) end


--- 
--- @class ents.AnimationDriverComponent.Driver
--- @overload fun(arg1: int, arg2: string, arg3: game.ValueDriverDescriptor, arg4: string):ents.AnimationDriverComponent.Driver
ents.AnimationDriverComponent.Driver = {}

--- 
--- @return game.ValueDriverDescriptor ret0
function ents.AnimationDriverComponent.Driver:GetDescriptor() end

--- 
--- @return struct pragma::ComponentMemberReference ret0
function ents.AnimationDriverComponent.Driver:GetMemberReference() end

--- 
function ents.AnimationDriverComponent.Driver:__tostring() end


--- 
--- @class ents.AIComponent: ents.BaseAIComponent
ents.AIComponent = {}

--- 
--- @param pos math.Vector
--- @return enum pragma::BaseAIComponent::MoveResult ret0
--- @overload fun(arg1: math.Vector, arg2: ai.MoveInfo): enum pragma::BaseAIComponent::MoveResult
function ents.AIComponent:MoveTo(pos) end

--- 
function ents.AIComponent:DisableAI() end

--- 
function ents.AIComponent:ClearMemory() end

--- 
--- @param arg1 number
function ents.AIComponent:SetMaxViewDistance(arg1) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.AIComponent:GetLookTarget() end

--- 
--- @return bool ret0
function ents.AIComponent:CanHear() end

--- 
--- @return string ret0
function ents.AIComponent:GetSquadName() end

--- 
--- @param arg1 ai.Faction
--- @overload fun(arg1: string): 
--- @overload fun(arg1: ents.BaseEntityBase): 
function ents.AIComponent:ClearRelationship(arg1) end

--- 
--- @return bool ret0
function ents.AIComponent:CanSee() end

--- 
--- @param arg1 enum Activity
--- @param arg2 ents.AIComponent.AnimationInfo
--- @return bool ret0
function ents.AIComponent:PlayActivity(arg1, arg2) end

--- 
--- @return ai.MemoryFragment ret0
function ents.AIComponent:GetPrimaryTarget() end

--- 
--- @param arg1 string
--- @overload fun(arg1: int): 
function ents.AIComponent:ClearMoveSpeed(arg1) end

--- 
function ents.AIComponent:CancelSchedule() end

--- 
function ents.AIComponent:ClearLookTarget() end

--- 
function ents.AIComponent:EnableAI() end

--- 
function ents.AIComponent:EndControl() end

--- 
--- @param arg1 number
function ents.AIComponent:SetHearingStrength(arg1) end

--- 
--- @param arg1 ents.BaseEntityBase
function ents.AIComponent:Forget(arg1) end

--- 
--- @param arg1 ents.BaseEntityBase
--- @param arg2 enum pragma::ai::Memory::MemoryType
--- @return ai.MemoryFragment ret0
--- @overload fun(arg1: ents.BaseEntityBase, arg2: enum pragma::ai::Memory::MemoryType, arg3: math.Vector, arg4: math.Vector): ai.MemoryFragment
function ents.AIComponent:Memorize(arg1, arg2) end

--- 
--- @return bool ret0
function ents.AIComponent:IsAnimationLocked() end

--- 
--- @return ents.PlayerComponent ret0
function ents.AIComponent:GetController() end

--- 
--- @return enum Action ret0
function ents.AIComponent:GetControllerActionInput() end

--- 
--- @return ai.Schedule ret0
function ents.AIComponent:GetCurrentSchedule() end

--- 
--- @param faction ai.Faction
--- @return enum DISPOSITION ret0_1
--- @return int ret0_2
--- @overload fun(className: string): enum DISPOSITION, int
--- @overload fun(ent: ents.BaseEntityBase): enum DISPOSITION, int
function ents.AIComponent:GetDisposition(faction) end

--- 
--- @return number ret0
function ents.AIComponent:GetDistanceToMoveTarget() end

--- 
--- @param entOther ents.BaseEntityBase
--- @return bool ret0_1
--- @return number ret0_2
function ents.AIComponent:IsInViewCone(entOther) end

--- 
--- @return number ret0
function ents.AIComponent:GetHearingStrength() end

--- 
--- @param arg1 ents.BaseEntityBase
--- @return bool ret0
function ents.AIComponent:IsInMemory(arg1) end

--- 
--- @return number ret0
function ents.AIComponent:GetMaxViewAngle() end

--- 
--- @return number ret0
function ents.AIComponent:GetMaxViewDistance() end

--- 
--- @param arg1 bool
function ents.AIComponent:SetControllable(arg1) end

--- 
--- @return number ret0
function ents.AIComponent:GetMemoryDuration() end

--- 
--- @return ai.Memory ret0
--- @overload fun(arg1: ents.BaseEntityBase): ai.Memory
function ents.AIComponent:GetMemory() end

--- 
--- @return int ret0
function ents.AIComponent:GetMemoryFragmentCount() end

--- 
--- @return enum Activity ret0
function ents.AIComponent:GetMoveActivity() end

--- 
--- @param animId int
--- @overload fun(anim: string): 
function ents.AIComponent:GetMoveSpeed(animId) end

--- 
--- @return math.Vector ret0
function ents.AIComponent:GetMoveTarget() end

--- 
--- @return enum NPCSTATE ret0
function ents.AIComponent:GetNPCState() end

--- 
--- @return ai.Squad ret0
function ents.AIComponent:GetSquad() end

--- 
--- @return bool ret0
function ents.AIComponent:HasPrimaryTarget() end

--- 
--- @return bool ret0
function ents.AIComponent:HasReachedDestination() end

--- 
--- @param arg1 number
function ents.AIComponent:SetMemoryDuration(arg1) end

--- 
--- @return bool ret0
function ents.AIComponent:IsAIEnabled() end

--- 
--- @return bool ret0
function ents.AIComponent:IsControllable() end

--- 
function ents.AIComponent:StopMoving() end

--- 
--- @return bool ret0
function ents.AIComponent:IsControlled() end

--- 
--- @param arg1 ents.BaseEntityBase
--- @return bool ret0
function ents.AIComponent:IsEnemy(arg1) end

--- 
--- @param arg1 string
function ents.AIComponent:SetSquad(arg1) end

--- 
--- @return bool ret0
function ents.AIComponent:IsMoving() end

--- 
--- @param arg1 ents.PlayerComponent
function ents.AIComponent:StartControl(arg1) end

--- 
--- @param arg1 bool
function ents.AIComponent:LockAnimation(arg1) end

--- 
--- @param arg1 int
--- @param arg2 ents.AIComponent.AnimationInfo
--- @return bool ret0
function ents.AIComponent:PlayAnimation(arg1, arg2) end

--- 
--- @param arg1 bool
function ents.AIComponent:SetAIEnabled(arg1) end

--- 
--- @param ent ents.BaseEntityBase
--- @overload fun(ent: ents.BaseEntityBase, t: number): 
--- @overload fun(tgt: math.Vector): 
--- @overload fun(tgt: math.Vector, t: number): 
--- @overload fun(tgt: vector.Vector): 
--- @overload fun(tgt: vector.Vector, t: number): 
function ents.AIComponent:SetLookTarget(ent) end

--- 
--- @param arg1 number
function ents.AIComponent:SetMaxViewAngle(arg1) end

--- 
--- @param arg1 string
--- @param arg2 number
--- @overload fun(arg1: int, arg2: number): 
function ents.AIComponent:SetMoveSpeed(arg1, arg2) end

--- 
--- @param arg1 enum NPCSTATE
function ents.AIComponent:SetNPCState(arg1) end

--- 
--- @param arg1 ai.Faction
--- @param arg2 enum DISPOSITION
--- @param arg3 int
--- @overload fun(arg1: ai.Faction, arg2: enum DISPOSITION, arg3: int): 
--- @overload fun(arg1: ents.BaseEntityBase, arg2: enum DISPOSITION, arg3: bool, arg4: int): 
--- @overload fun(arg1: ents.BaseEntityBase, arg2: enum DISPOSITION, arg3: bool, arg4: int): 
--- @overload fun(arg1: ents.BaseEntityBase, arg2: enum DISPOSITION, arg3: bool, arg4: int): 
--- @overload fun(arg1: string, arg2: enum DISPOSITION, arg3: int): 
--- @overload fun(arg1: string, arg2: enum DISPOSITION, arg3: int): 
function ents.AIComponent:SetRelationship(arg1, arg2, arg3) end

--- 
--- @param arg1 ai.Schedule
function ents.AIComponent:StartSchedule(arg1) end

--- 
--- @param arg1 int
--- @return bool ret0
function ents.AIComponent:TriggerScheduleInterrupt(arg1) end

--- 
--- @param target math.Vector
--- @return bool ret0
--- @overload fun(target: math.Vector, turnSpeed: number): bool
function ents.AIComponent:TurnStep(target) end


--- @enum EventSelect
ents.AIComponent = {
	EVENT_SELECT_CONTROLLER_SCHEDULE = 27,
	EVENT_SELECT_SCHEDULE = 26,
}

--- @enum Event
ents.AIComponent = {
	EVENT_ON_CONTROLLER_ACTION_INPUT = 38,
	EVENT_ON_END_CONTROL = 40,
	EVENT_ON_NPC_STATE_CHANGED = 31,
	EVENT_ON_MEMORY_GAINED = 34,
	EVENT_ON_LOOK_TARGET_CHANGED = 42,
	EVENT_ON_TARGET_ACQUIRED = 36,
	EVENT_ON_MEMORY_LOST = 35,
	EVENT_ON_PATH_CHANGED = 30,
	EVENT_ON_PATH_NODE_CHANGED = 41,
	EVENT_ON_PRIMARY_TARGET_CHANGED = 29,
	EVENT_ON_SUSPICIOUS_SOUND_HEARED = 37,
	EVENT_ON_SCHEDULE_COMPLETE = 28,
	EVENT_ON_SCHEDULE_STARTED = 43,
	EVENT_ON_START_CONTROL = 39,
	EVENT_ON_TARGET_VISIBILITY_LOST = 32,
	EVENT_ON_TARGET_VISIBILITY_REACQUIRED = 33,
}

--- 
--- @class ents.AIComponent.AnimationInfo
--- @field flags  
--- @field playAsSchedule  
--- @overload fun():ents.AIComponent.AnimationInfo
ents.AIComponent.AnimationInfo = {}

--- 
function ents.AIComponent.AnimationInfo:ClearFaceTarget() end

--- 
function ents.AIComponent.AnimationInfo:SetFacePrimaryTarget() end

--- 
--- @param arg1 ents.BaseEntityBase
--- @overload fun(arg1: math.Vector): 
function ents.AIComponent.AnimationInfo:SetFaceTarget(arg1) end


--- 
--- @class ents.AnimatedBvhComponent: ents.EntityComponent
ents.AnimatedBvhComponent = {}

--- 
--- @param arg1 bool
function ents.AnimatedBvhComponent:SetUpdateLazily(arg1) end

--- 
--- @param arg1 bool
function ents.AnimatedBvhComponent:RebuildAnimatedBvh(arg1) end


--- 
--- @class ents.BaseEntity: ents.Entity
--- @overload fun():ents.BaseEntity
ents.BaseEntity = {}

--- 
function ents.BaseEntity:Initialize() end


--- 
--- @class ents.AnimatedComponent: ents.BaseAnimatedComponent
ents.AnimatedComponent = {}

--- 
--- @return any ret0
function ents.AnimatedComponent:GetLayeredAnimations() end

--- 
--- @return enum Activity ret0
function ents.AnimatedComponent:GetActivity() end

--- 
--- @param controller int
--- @overload fun(controller: string): 
function ents.AnimatedComponent:GetBlendController(controller) end

--- 
--- @param anim string
--- @param frameId int
--- @param f any
--- @overload fun(anim: string, frameId: int, eventId: int, args: any): 
--- @overload fun(animId: int, frameId: int, f: any): 
--- @overload fun(animId: int, frameId: int, eventId: int, args: any): 
function ents.AnimatedComponent:AddAnimationEvent(anim, frameId, f) end

--- 
--- @param arg1 number
--- @return bool ret0
function ents.AnimatedComponent:ApplyLayeredAnimations(arg1) end

--- 
--- @return bool ret0
function ents.AnimatedComponent:AreSkeletonUpdateCallbacksEnabled() end

--- 
--- @return bool ret0
function ents.AnimatedComponent:UpdateEffectiveBoneTransforms() end

--- 
--- @param boneIdentifier string
--- @param value math.Quaternion
--- @param space enum umath::CoordinateSpace
--- @return bool ret0
--- @overload fun(boneIdentifier: string, value: math.Quaternion): bool
--- @overload fun(boneIdentifier: int, value: math.Quaternion, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: int, value: math.Quaternion): bool
function ents.AnimatedComponent:SetBoneRot(boneIdentifier, value, space) end

--- 
--- @param arg1 number
--- @return bool ret0
function ents.AnimatedComponent:AdvanceAnimations(arg1) end

--- 
--- @param arg1 number
function ents.AnimatedComponent:SetPlaybackRate(arg1) end

--- 
--- @param slot int
--- @param activity int
function ents.AnimatedComponent:PlayLayeredActivity(slot, activity) end

--- 
--- @param eventId int
--- @param component ents.EntityComponent
--- @param methodName string
--- @overload fun(eventId: int, function_: any): 
function ents.AnimatedComponent:BindAnimationEvent(eventId, component, methodName) end

--- 
--- @param boneType enum pragma::animation::MetaRigBoneType
--- @param pose math.ScaledTransform
--- @return math.ScaledTransform ret0
function ents.AnimatedComponent:MetaBonePoseToSkeletal(boneType, pose) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @return int ret0
function ents.AnimatedComponent:GetMetaBoneId(arg1) end

--- 
--- @param arg1 int
--- @return int ret0
function ents.AnimatedComponent:GetLayeredAnimation(arg1) end

--- 
--- @param anim string
--- @param frameId int
--- @overload fun(anim: string): 
--- @overload fun(animId: int, frameId: int): 
--- @overload fun(animId: int): 
--- @overload fun(): 
function ents.AnimatedComponent:ClearAnimationEvents(anim, frameId) end

--- 
--- @param arg1 int
function ents.AnimatedComponent:StopLayeredAnimation(arg1) end

--- 
function ents.AnimatedComponent:ClearPreviousAnimation() end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.ScaledTransform ret0
--- @overload fun(boneIdentifier: string): math.ScaledTransform
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.ScaledTransform
--- @overload fun(boneIdentifier: int): math.ScaledTransform
function ents.AnimatedComponent:GetReferenceBonePose(boneIdentifier, space) end

--- 
--- @return int ret0
function ents.AnimatedComponent:GetAnimation() end

--- 
--- @return game.Model.Animation ret0
function ents.AnimatedComponent:GetAnimationObject() end

--- 
--- @param arg1 bool
function ents.AnimatedComponent:SetSkeletonUpdateCallbacksEnabled(arg1) end

--- 
--- @param boneIndex int
--- @return math.Mat4 ret0
function ents.AnimatedComponent:GetBoneRenderMatrix(boneIndex) end

--- 
--- @return enum pragma::FPlayAnim ret0
function ents.AnimatedComponent:GetBaseAnimationFlags() end

--- 
--- @return Animation.Frame ret0
--- @overload fun(): Animation.Frame
function ents.AnimatedComponent:GetBindPose() end

--- 
--- @return prosper.SwapBuffer ret0
function ents.AnimatedComponent:GetBoneBuffer() end

--- 
--- @return int ret0
function ents.AnimatedComponent:GetBoneCount() end

--- 
--- @param classDef string
--- @return math.Mat4 ret0
--- @overload fun(classDef: int): math.Mat4
--- @overload fun(boneName: string): math.Mat4
--- @overload fun(arg1: int): math.Mat4
function ents.AnimatedComponent:GetBoneMatrix(classDef) end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.Vector ret0
--- @overload fun(boneIdentifier: string): math.Vector
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: int): math.Vector
--- @overload fun(boneIdentifier: string, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: string): math.Vector
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: int): math.Vector
function ents.AnimatedComponent:GetBonePos(boneIdentifier, space) end

--- 
--- @param arg1 int
--- @param arg2 enum pragma::FPlayAnim
function ents.AnimatedComponent:SetLayeredAnimationFlags(arg1, arg2) end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.ScaledTransform ret0
--- @overload fun(boneIdentifier: string): math.ScaledTransform
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.ScaledTransform
--- @overload fun(boneIdentifier: int): math.ScaledTransform
function ents.AnimatedComponent:GetBonePose(boneIdentifier, space) end

--- 
--- @return table ret0
function ents.AnimatedComponent:GetBoneRenderMatrices() end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.Quaternion ret0
--- @overload fun(boneIdentifier: string): math.Quaternion
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Quaternion
--- @overload fun(boneIdentifier: int): math.Quaternion
function ents.AnimatedComponent:GetBoneRot(boneIdentifier, space) end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.Vector ret0
--- @overload fun(boneIdentifier: string): math.Vector
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: int): math.Vector
--- @overload fun(boneIdentifier: string, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: string): math.Vector
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: int): math.Vector
function ents.AnimatedComponent:GetBoneScale(boneIdentifier, space) end

--- 
--- @param subMesh game.Model.Mesh.Sub
--- @param vertexId int
--- @return math.Vector ret0
--- @overload fun(subMesh: game.Model.Mesh.Sub, vertexId: int): math.Vector
function ents.AnimatedComponent:GetLocalVertexPosition(subMesh, vertexId) end

--- 
--- @return number ret0
function ents.AnimatedComponent:GetCycle() end

--- 
--- @param classDef string
--- @return math.ScaledTransform ret0
--- @overload fun(classDef: int): math.ScaledTransform
function ents.AnimatedComponent:GetEffectiveBonePose(classDef) end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.Vector ret0
--- @overload fun(boneIdentifier: string): math.Vector
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: int): math.Vector
--- @overload fun(boneIdentifier: string, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: string): math.Vector
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: int): math.Vector
function ents.AnimatedComponent:GetReferenceBoneScale(boneIdentifier, space) end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.Vector ret0
--- @overload fun(boneIdentifier: string): math.Vector
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: int): math.Vector
--- @overload fun(boneIdentifier: string, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: string): math.Vector
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(boneIdentifier: int): math.Vector
function ents.AnimatedComponent:GetReferenceBonePos(boneIdentifier, space) end

--- 
--- @return table ret0
function ents.AnimatedComponent:GetEffectiveBonePoses() end

--- 
--- @param layerIdx int
--- @return any ret0
function ents.AnimatedComponent:GetLayeredAnimationFlags(layerIdx) end

--- 
--- @param arg1 int
--- @return enum Activity ret0
function ents.AnimatedComponent:GetLayeredActivity(arg1) end

--- 
--- @param boneType enum pragma::animation::MetaRigBoneType
--- @param space enum umath::CoordinateSpace
--- @return math.ScaledTransform ret0
function ents.AnimatedComponent:GetMetaBonePose(boneType, space) end

--- 
--- @return number ret0
function ents.AnimatedComponent:GetPlaybackRate() end

--- 
--- @param boneIndex int
--- @param m math.Mat4
function ents.AnimatedComponent:SetBoneRenderMatrix(boneIndex, m) end

--- 
--- @return class util::FloatProperty ret0
function ents.AnimatedComponent:GetPlaybackRateProperty() end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.Quaternion ret0
--- @overload fun(boneIdentifier: string): math.Quaternion
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Quaternion
--- @overload fun(boneIdentifier: int): math.Quaternion
function ents.AnimatedComponent:GetReferenceBoneRot(boneIdentifier, space) end

--- 
--- @param eventId int
--- @param args any
--- @overload fun(eventId: int): 
function ents.AnimatedComponent:InjectAnimationEvent(eventId, args) end

--- 
--- @param subMesh game.Model.Mesh.Sub
--- @param vertexId int
--- @return math.Vector ret0
--- @overload fun(meshGroupId: int, meshId: int, subMeshId: int, vertexId: int): math.Vector
--- @overload fun(subMesh: game.Model.Mesh.Sub, vertexId: int): math.Vector
--- @overload fun(meshGroupId: int, meshId: int, subMeshId: int, vertexId: int): math.Vector
function ents.AnimatedComponent:GetVertexPosition(subMesh, vertexId) end

--- 
--- @param arg1 game.Model.Mesh.Sub
--- @param arg2 int
--- @return math.Mat4 ret0
function ents.AnimatedComponent:GetVertexTransformMatrix(arg1, arg2) end

--- 
--- @param arg1 number
function ents.AnimatedComponent:SetCycle(arg1) end

--- 
--- @return bool ret0
function ents.AnimatedComponent:IsPostAnimationUpdateEnabled() end

--- 
--- @param boneType enum pragma::animation::MetaRigBoneType
--- @param rot math.Quaternion
--- @return math.Quaternion ret0
function ents.AnimatedComponent:MetaBoneRotationToSkeletal(boneType, rot) end

--- 
--- @param activity int
--- @overload fun(activity: int, flags: int): 
function ents.AnimatedComponent:PlayActivity(activity) end

--- 
--- @param anim string
--- @overload fun(anim: int): 
--- @overload fun(anim: string, flags: int): 
--- @overload fun(anim: int, flags: int): 
function ents.AnimatedComponent:PlayAnimation(anim) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @param arg2 math.ScaledTransform
--- @param arg3 enum umath::CoordinateSpace
--- @return bool ret0
function ents.AnimatedComponent:SetMetaBonePose(arg1, arg2, arg3) end

--- 
--- @param boneIdentifier string
--- @param value math.Vector
--- @param space enum umath::CoordinateSpace
--- @return bool ret0
--- @overload fun(boneIdentifier: string, value: math.Vector): bool
--- @overload fun(boneIdentifier: int, value: math.Vector, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: int, value: math.Vector): bool
--- @overload fun(boneIdentifier: string, value: vector.Vector, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: string, value: vector.Vector): bool
--- @overload fun(boneIdentifier: int, value: vector.Vector, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: int, value: vector.Vector): bool
function ents.AnimatedComponent:SetBonePos(boneIdentifier, value, space) end

--- 
--- @param slot int
--- @param anim string
--- @overload fun(slot: int, anim: int): 
function ents.AnimatedComponent:PlayLayeredAnimation(slot, anim) end

--- 
--- @param arg1 enum pragma::FPlayAnim
function ents.AnimatedComponent:SetBaseAnimationFlags(arg1) end

--- 
--- @param arg1 Animation.Frame
--- @overload fun(arg1: game.Model.Animation.Frame): 
function ents.AnimatedComponent:SetBindPose(arg1) end

--- 
--- @param controller string
--- @param val number
--- @overload fun(controller: int, val: number): 
function ents.AnimatedComponent:SetBlendController(controller, val) end

--- 
--- @param boneIdentifier string
--- @param value math.ScaledTransform
--- @param space enum umath::CoordinateSpace
--- @return bool ret0
--- @overload fun(boneIdentifier: string, value: math.Transform, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: string, value: math.ScaledTransform): bool
--- @overload fun(boneIdentifier: string, value: math.Transform): bool
--- @overload fun(boneIdentifier: int, value: math.ScaledTransform, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: int, value: math.Transform, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: int, value: math.ScaledTransform): bool
--- @overload fun(boneIdentifier: int, value: math.Transform): bool
function ents.AnimatedComponent:SetBonePose(boneIdentifier, value, space) end

--- 
--- @param boneIdentifier string
--- @param value math.Vector
--- @param space enum umath::CoordinateSpace
--- @return bool ret0
--- @overload fun(boneIdentifier: string, value: math.Vector): bool
--- @overload fun(boneIdentifier: int, value: math.Vector, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: int, value: math.Vector): bool
--- @overload fun(boneIdentifier: string, value: vector.Vector, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: string, value: vector.Vector): bool
--- @overload fun(boneIdentifier: int, value: vector.Vector, space: enum umath::CoordinateSpace): bool
--- @overload fun(boneIdentifier: int, value: vector.Vector): bool
function ents.AnimatedComponent:SetBoneScale(boneIdentifier, value, space) end

--- 
--- @param arg1 string
--- @param arg2 math.ScaledTransform
--- @return bool ret0
--- @overload fun(arg1: int, arg2: math.ScaledTransform): bool
function ents.AnimatedComponent:SetEffectiveBonePose(arg1, arg2) end

--- 
--- @param arg1 bool
function ents.AnimatedComponent:SetPostAnimationUpdateEnabled(arg1) end


--- @enum EventTranslate
ents.AnimatedComponent = {
	EVENT_TRANSLATE_ACTIVITY = 118,
	EVENT_TRANSLATE_ANIMATION = 117,
	EVENT_TRANSLATE_LAYERED_ANIMATION = 116,
}

--- @enum Event
ents.AnimatedComponent = {
	EVENT_ON_BONE_TRANSFORM_CHANGED = 125,
	EVENT_ON_BONE_POSES_FINALIZED = 128,
	EVENT_HANDLE_ANIMATION_EVENT = 108,
	EVENT_ON_ANIMATIONS_UPDATED = 126,
	EVENT_ON_ANIMATION_COMPLETE = 112,
	EVENT_ON_LAYERED_ANIMATION_START = 113,
	EVENT_ON_BLEND_ANIMATION = 129,
	EVENT_ON_ANIMATION_RESET = 131,
	EVENT_ON_ANIMATION_START = 115,
	EVENT_ON_LAYERED_ANIMATION_COMPLETE = 114,
	EVENT_ON_PLAY_ACTIVITY = 123,
	EVENT_ON_PLAY_ANIMATION = 109,
	EVENT_ON_PLAY_LAYERED_ACTIVITY = 111,
	EVENT_ON_PLAY_LAYERED_ANIMATION = 110,
	EVENT_ON_STOP_LAYERED_ANIMATION = 124,
	EVENT_PLAY_ANIMATION = 130,
	EVENT_SHOULD_UPDATE_BONES = 122,
	EVENT_UPDATE_BONE_POSES = 127,
}

--- @enum Fplayanim
ents.AnimatedComponent = {
	FPLAYANIM_DEFAULT = 2,
	FPLAYANIM_LOOP = 8,
	FPLAYANIM_SNAP_TO = 4,
	FPLAYANIM_NONE = 0,
	FPLAYANIM_RESET = 1,
	FPLAYANIM_TRANSMIT = 2,
}

--- @enum EventMaintain
ents.AnimatedComponent = {
	EVENT_MAINTAIN_ANIMATION_MOVEMENT = 121,
	EVENT_MAINTAIN_ANIMATION = 120,
	EVENT_MAINTAIN_ANIMATIONS = 119,
}

--- 
--- @class ents.AttachableComponent: ents.BaseAttachableComponent
ents.AttachableComponent = {}

--- 
--- @param ent ents.BaseEntityBase
--- @param att string
--- @return struct AttachmentData ret0
--- @overload fun(arg1: ents.BaseEntityBase, arg2: string, arg3: ents.AttachableComponent.AttachmentInfo): struct AttachmentData
--- @overload fun(ent: ents.BaseEntityBase, attIdx: int): struct AttachmentData
--- @overload fun(arg1: ents.BaseEntityBase, arg2: int, arg3: ents.AttachableComponent.AttachmentInfo): struct AttachmentData
--- @overload fun(arg1: ents.BaseEntityBase, arg2: string, arg3: ents.BaseAttachableComponent.AttachmentInfo): struct AttachmentData
--- @overload fun(arg1: ents.BaseEntityBase, arg2: int, arg3: ents.BaseAttachableComponent.AttachmentInfo): struct AttachmentData
function ents.AttachableComponent:AttachToAttachment(ent, att) end

--- 
--- @param arg2 ents.BaseEntityBase
--- @param arg3 int
--- @overload fun(parent: ents.BaseEntityBase, bone: int, attInfo: ents.AttachableComponent.AttachmentInfo): 
--- @overload fun(arg2: ents.BaseEntityBase, arg3: string): 
--- @overload fun(parent: ents.BaseEntityBase, bone: string, attInfo: ents.AttachableComponent.AttachmentInfo): 
--- @overload fun(parent: ents.BaseEntityBase, bone: int, attInfo: ents.BaseAttachableComponent.AttachmentInfo): 
--- @overload fun(parent: ents.BaseEntityBase, bone: string, attInfo: ents.BaseAttachableComponent.AttachmentInfo): 
function ents.AttachableComponent:AttachToBone(arg2, arg3) end

--- 
--- @return ents.BaseParentComponent ret0
function ents.AttachableComponent:GetParent() end

--- 
function ents.AttachableComponent:ClearAttachment() end

--- 
--- @param arg1 ents.BaseEntityBase
--- @return struct AttachmentData ret0
--- @overload fun(arg1: ents.BaseEntityBase, arg2: ents.AttachableComponent.AttachmentInfo): struct AttachmentData
--- @overload fun(arg1: ents.BaseEntityBase, arg2: ents.BaseAttachableComponent.AttachmentInfo): struct AttachmentData
function ents.AttachableComponent:AttachToEntity(arg1) end

--- 
--- @return any ret0
function ents.AttachableComponent:GetBone() end

--- 
--- @return enum FAttachmentMode ret0
function ents.AttachableComponent:GetAttachmentFlags() end

--- 
--- @return math.Transform ret0
function ents.AttachableComponent:GetLocalPose() end

--- 
--- @param arg1 enum FAttachmentMode
function ents.AttachableComponent:SetAttachmentFlags(arg1) end

--- 
--- @param arg1 math.Transform
function ents.AttachableComponent:SetLocalPose(arg1) end


--- @enum FattachmentModePlayer
ents.AttachableComponent = {
	FATTACHMENT_MODE_PLAYER_VIEW_YAW = 16,
	FATTACHMENT_MODE_PLAYER_VIEW = 8,
}

--- @enum EventOnAttachmentUpdate
ents.AttachableComponent = {
	EVENT_ON_ATTACHMENT_UPDATE = 133,
}

--- @enum FattachmentMode
ents.AttachableComponent = {
	FATTACHMENT_MODE_BONEMERGE = 2,
	FATTACHMENT_MODE_POSITION_ONLY = 1,
	FATTACHMENT_MODE_UPDATE_EACH_FRAME = 4,
	FATTACHMENT_MODE_SNAP_TO_ORIGIN = 32,
}

--- @enum FattachmentModeForce
ents.AttachableComponent = {
	FATTACHMENT_MODE_FORCE_IN_PLACE = 192,
	FATTACHMENT_MODE_FORCE_ROTATION_IN_PLACE = 128,
	FATTACHMENT_MODE_FORCE_TRANSLATION_IN_PLACE = 64,
}

--- 
--- @class ents.AttachableComponent.AttachmentInfo
--- @field flags  
--- @overload fun():ents.AttachableComponent.AttachmentInfo
ents.AttachableComponent.AttachmentInfo = {}

--- 
--- @overload fun(offset: math.Vector): 
--- @overload fun(): 
--- @overload fun(offset: vector.Vector): 
function ents.AttachableComponent.AttachmentInfo:SetOffset() end

--- 
--- @overload fun(rotation: math.Quaternion): 
--- @overload fun(): 
--- @overload fun(rotation: math.Quaternion): 
function ents.AttachableComponent.AttachmentInfo:SetRotation() end


--- 
--- @class ents.DebugCylinderComponent: ents.BaseDebugCylinderComponent
ents.DebugCylinderComponent = {}


--- 
--- @class ents.BSPComponent: ents.EntityComponent
ents.BSPComponent = {}


--- 
--- @class ents.BSPLeafComponent: ents.EntityComponent
ents.BSPLeafComponent = {}


--- 
--- @class ents.BvhComponent: ents.BaseBvhComponent
ents.BvhComponent = {}

--- 
--- @return int ret0
function ents.BvhComponent:GetTriangleCount() end

--- 
--- @param primIdx int
--- @return class util::TWeakSharedHandle<class BaseEntity> ret0_1
--- @return game.Model.Mesh.Sub ret0_2
function ents.BvhComponent:FindPrimitiveMeshInfo(primIdx) end

--- 
--- @param arg1 math.Vector
--- @param arg2 math.Vector
--- @param arg3 number
--- @param arg4 number
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector, arg3: number, arg4: number): 
function ents.BvhComponent:DebugDrawBvhTree(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 int
--- @return math.Vector ret0
--- @overload fun(arg1: int): math.Vector
function ents.BvhComponent:GetVertex(arg1) end

--- 
function ents.BvhComponent:RebuildBvh() end


--- 
--- @class ents.BvhComponent.IntersectionMeshInfo
--- @field entity  
--- @field mesh  
ents.BvhComponent.IntersectionMeshInfo = {}


--- 
--- @class ents.BuoyancyComponent: ents.BaseBuoyancyComponent
ents.BuoyancyComponent = {}


--- 
--- @class ents.BrushComponent: ents.BaseFuncBrushComponent
ents.BrushComponent = {}


--- 
--- @class ents.BaseEntityBase
ents.BaseEntityBase = {}

--- 
--- @return int ret0
function ents.BaseEntityBase:GetHealth() end

--- 
--- @param sndname string
--- @param soundType enum ALSoundType
--- @return sound.Source ret0
--- @overload fun(sndname: string, soundType: enum ALSoundType, gain: number): sound.Source
--- @overload fun(arg1: string, arg2: enum ALSoundType, arg3: number, arg4: number): sound.Source
--- @overload fun(sndname: string, soundType: enum ALSoundType): sound.Source
--- @overload fun(sndname: string, soundType: enum ALSoundType, gain: number): sound.Source
--- @overload fun(arg1: string, arg2: enum ALSoundType, arg3: number, arg4: number): sound.Source
function ents.BaseEntityBase:EmitSound(sndname, soundType) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.BaseEntityBase:AddAngularVelocity(arg1) end

--- 
--- @param componentId int
--- @return ents.EntityComponent ret0
--- @overload fun(arg1: int, arg2: bool): ents.EntityComponent
--- @overload fun(name: string): ents.EntityComponent
--- @overload fun(arg1: string, arg2: bool): ents.EntityComponent
function ents.BaseEntityBase:AddComponent(componentId) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.BaseEntityBase:GetRight() end

--- 
--- @return ents.BasePhysicsComponent ret0
function ents.BaseEntityBase:GetPhysicsComponent() end

--- 
--- @return ents.BaseNameComponent ret0
function ents.BaseEntityBase:GetNameComponent() end

--- 
--- @return ents.BaseModelComponent ret0
function ents.BaseEntityBase:GetModelComponent() end

--- 
--- @return int ret0
function ents.BaseEntityBase:GetAnimation() end

--- 
function ents.BaseEntityBase:ClearModel() end

--- 
--- @return enum CollisionMask ret0
function ents.BaseEntityBase:GetCollisionFilterMask() end

--- 
--- @return string ret0
function ents.BaseEntityBase:GetModelName() end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.BaseEntityBase:AddVelocity(arg1) end

--- 
function ents.BaseEntityBase:ClearParent() end

--- 
--- @param uri string
--- @return struct luabind::adl::udm_type<class luabind::adl::object,1,1,1> ret0
function ents.BaseEntityBase:GetMemberValue(uri) end

--- 
--- @return int ret0
function ents.BaseEntityBase:GetLocalIndex() end

--- 
--- @return ents.BaseEntityBase ret0
function ents.BaseEntityBase:GetOwner() end

--- 
--- @return ents.BaseWeaponComponent ret0
function ents.BaseEntityBase:GetWeaponComponent() end

--- 
--- @param object any
--- @return ents.EntityComponent ret0
--- @overload fun(componentId: int): ents.EntityComponent
--- @overload fun(name: string): ents.EntityComponent
function ents.BaseEntityBase:C(object) end

--- 
--- @return enum CollisionMask ret0
function ents.BaseEntityBase:GetCollisionFilterGroup() end

--- 
--- @param function unknown
--- @return util.Callback ret0
function ents.BaseEntityBase:CallOnRemove(function_) end

--- 
--- @return ents.BaseEntityBase ret0
function ents.BaseEntityBase:Copy() end

--- 
--- @return math.ScaledTransform ret0
function ents.BaseEntityBase:GetPose() end

--- 
--- @overload fun(): 
function ents.BaseEntityBase:ClearComponents() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.BaseEntityBase:GetAngularVelocity() end

--- 
--- @param arg1 string
--- @param arg2 enum ALSoundType
--- @return sound.Source ret0
--- @overload fun(arg1: string, arg2: enum ALSoundType): sound.Source
function ents.BaseEntityBase:CreateSound(arg1, arg2) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.BaseEntityBase:GetScale() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsInert() end

--- 
function ents.BaseEntityBase:DebugPrintComponentProperties() end

--- 
--- @return math.EulerAngles ret0
function ents.BaseEntityBase:GetAngles() end

--- 
--- @return math.Quaternion ret0
function ents.BaseEntityBase:GetRotation() end

--- 
--- @return int ret0
function ents.BaseEntityBase:GetMaxHealth() end

--- 
function ents.BaseEntityBase:DestroyPhysicsObject() end

--- 
--- @return phys.Object ret0
function ents.BaseEntityBase:GetPhysicsObject() end

--- 
function ents.BaseEntityBase:Disable() end

--- 
--- @return int ret0
function ents.BaseEntityBase:GetIndex() end

--- 
function ents.BaseEntityBase:DropToFloor() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsEnabled() end

--- 
function ents.BaseEntityBase:Enable() end

--- 
--- @param uri string
--- @return ents.ComponentInfo.MemberInfo ret0_1
--- @return ents.EntityComponent ret0_2
function ents.BaseEntityBase:FindMemberInfo(uri) end

--- 
--- @return string ret0
function ents.BaseEntityBase:GetUuid() end

--- 
--- @return ents.BaseAIComponent ret0
function ents.BaseEntityBase:GetAIComponent() end

--- 
--- @return util.Color ret0
function ents.BaseEntityBase:GetColor() end

--- 
--- @return enum Activity ret0
function ents.BaseEntityBase:GetActivity() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.BaseEntityBase:GetPos() end

--- 
--- @return ents.BaseParentComponent ret0
function ents.BaseEntityBase:GetParent() end

--- 
--- @return ents.BaseGenericComponent ret0
function ents.BaseEntityBase:GetGenericComponent() end

--- 
--- @return number ret0
function ents.BaseEntityBase:GetAirDensity() end

--- 
--- @return ents.BaseAnimatedComponent ret0
function ents.BaseEntityBase:GetAnimatedComponent() end

--- 
--- @param arg1 int
--- @return math.Transform ret0
function ents.BaseEntityBase:GetAttachmentPose(arg1) end

--- 
--- @param bgId int
--- @return int ret0
--- @overload fun(arg1: string): int
function ents.BaseEntityBase:GetBodyGroup(bgId) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.BaseEntityBase:GetCenter() end

--- 
--- @return ents.BaseCharacterComponent ret0
function ents.BaseEntityBase:GetCharacterComponent() end

--- 
--- @return string ret0
function ents.BaseEntityBase:GetClass() end

--- 
--- @return math.Vector ret0_1
--- @return math.Vector ret0_2
--- @overload fun(): math.Vector, math.Vector
function ents.BaseEntityBase:GetCollisionBounds() end

--- 
--- @param object any
--- @overload fun(arg1: int): 
--- @overload fun(arg1: string): 
--- @overload fun(): 
function ents.BaseEntityBase:GetComponent(object) end

--- 
--- @return table ret0
function ents.BaseEntityBase:GetComponents() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.BaseEntityBase:GetForward() end

--- 
--- @param arg1 bool
function ents.BaseEntityBase:SetTurnedOn(arg1) end

--- 
--- @return ents.BaseTransformComponent ret0
function ents.BaseEntityBase:GetTransformComponent() end

--- 
--- @return string ret0
function ents.BaseEntityBase:GetName() end

--- 
--- @return game.Model ret0
function ents.BaseEntityBase:GetModel() end

--- 
--- @return ents.BasePlayerComponent ret0
function ents.BaseEntityBase:GetPlayerComponent() end

--- 
--- @return int ret0
function ents.BaseEntityBase:GetSkin() end

--- 
--- @return int ret0
function ents.BaseEntityBase:GetSpawnFlags() end

--- 
--- @return ents.BaseTimeScaleComponent ret0
function ents.BaseEntityBase:GetTimeScaleComponent() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.BaseEntityBase:GetUp() end

--- 
--- @return string ret0
function ents.BaseEntityBase:GetUri() end

--- 
--- @return ents.BaseVehicleComponent ret0
function ents.BaseEntityBase:GetVehicleComponent() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.BaseEntityBase:GetVelocity() end

--- 
--- @param object any
--- @return bool ret0
--- @overload fun(arg1: int): bool
--- @overload fun(name: string): bool
--- @overload fun(): bool
function ents.BaseEntityBase:HasComponent(object) end

--- 
--- @param arg1 enum PHYSICSTYPE
--- @return phys.Object ret0
function ents.BaseEntityBase:InitializePhysics(arg1) end

--- 
--- @param input string
--- @overload fun(input: string, activator: ents.BaseEntityBase): 
--- @overload fun(input: string, activator: ents.BaseEntityBase, caller: ents.BaseEntityBase): 
--- @overload fun(arg1: string, arg2: ents.BaseEntityBase, arg3: ents.BaseEntityBase, arg4: string): 
function ents.BaseEntityBase:Input(input) end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsCharacter() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsDisabled() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsDynamic() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsMapEntity() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsNPC() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsPlayer() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsRemoved() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsScripted() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsSpawned() end

--- 
--- @param arg1 ents.BaseEntityBase
function ents.BaseEntityBase:SetParent(arg1) end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsStatic() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsTurnedOff() end

--- 
--- @param hOwner ents.BaseEntityBase
function ents.BaseEntityBase:SetOwner(hOwner) end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsTurnedOn() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsValid() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsVehicle() end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsWeapon() end

--- 
--- @param arg1 string
--- @param arg2 string
function ents.BaseEntityBase:SetKeyValue(arg1, arg2) end

--- 
--- @return bool ret0
function ents.BaseEntityBase:IsWorld() end

--- 
--- @param arg1 udm.LinkedPropertyWrapper
function ents.BaseEntityBase:Load(arg1) end

--- 
--- @param activity enum Activity
--- @return bool ret0
--- @overload fun(arg1: enum Activity, arg2: enum pragma::FPlayAnim): bool
function ents.BaseEntityBase:PlayActivity(activity) end

--- 
--- @param anim string
--- @return bool ret0
--- @overload fun(arg1: string, arg2: enum pragma::FPlayAnim): bool
--- @overload fun(anim: int): bool
--- @overload fun(anim: int, flags: enum pragma::FPlayAnim): bool
function ents.BaseEntityBase:PlayAnimation(anim) end

--- 
--- @param arg1 int
--- @param arg2 enum Activity
--- @param arg3 enum pragma::FPlayAnim
--- @return bool ret0
function ents.BaseEntityBase:PlayLayeredActivity(arg1, arg2, arg3) end

--- 
--- @param slot int
--- @param anim string
--- @param flags enum pragma::FPlayAnim
--- @return bool ret0
function ents.BaseEntityBase:PlayLayeredAnimation(slot, anim, flags) end

--- 
function ents.BaseEntityBase:Remove() end

--- 
--- @param arg1 int
--- @overload fun(arg1: string): 
--- @overload fun(arg1: ents.EntityComponent): 
--- @overload fun(): 
function ents.BaseEntityBase:RemoveComponent(arg1) end

--- 
--- @param entOther ents.BaseEntityBase
--- @param remove bool
--- @overload fun(entOther: ents.BaseEntityBase): 
function ents.BaseEntityBase:RemoveEntityOnRemoval(entOther, remove) end

--- 
function ents.BaseEntityBase:RemoveSafely() end

--- 
--- @param arg1 udm.LinkedPropertyWrapper
function ents.BaseEntityBase:Save(arg1) end

--- 
--- @param ang math.EulerAngles
function ents.BaseEntityBase:SetAngles(ang) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.BaseEntityBase:SetAngularVelocity(arg1) end

--- 
--- @param bgId int
--- @param id int
--- @overload fun(arg1: string, arg2: int): 
function ents.BaseEntityBase:SetBodyGroup(bgId, id) end

--- 
--- @param arg1 enum CollisionMask
function ents.BaseEntityBase:SetCollisionFilterGroup(arg1) end

--- 
--- @param arg1 enum CollisionMask
function ents.BaseEntityBase:SetCollisionFilterMask(arg1) end

--- 
--- @param arg1 util.Color
function ents.BaseEntityBase:SetColor(arg1) end

--- 
function ents.BaseEntityBase:Spawn() end

--- 
--- @param arg1 bool
function ents.BaseEntityBase:SetEnabled(arg1) end

--- 
--- @param arg1 int
function ents.BaseEntityBase:SetHealth(arg1) end

--- 
--- @param arg1 int
function ents.BaseEntityBase:SetMaxHealth(arg1) end

--- 
--- @param uri string
--- @param value struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>
--- @return bool ret0
function ents.BaseEntityBase:SetMemberValue(uri, value) end

--- 
--- @param arg1 game.Model
--- @overload fun(arg1: string): 
function ents.BaseEntityBase:SetModel(arg1) end

--- 
--- @param arg1 string
function ents.BaseEntityBase:SetName(arg1) end

--- 
--- @param pos math.Vector
--- @overload fun(pos: vector.Vector): 
function ents.BaseEntityBase:SetPos(pos) end

--- 
--- @param t math.ScaledTransform
--- @overload fun(t: math.Transform): 
function ents.BaseEntityBase:SetPose(t) end

--- 
--- @param rot math.Quaternion
function ents.BaseEntityBase:SetRotation(rot) end

--- 
--- @param v math.Vector
--- @overload fun(v: vector.Vector): 
function ents.BaseEntityBase:SetScale(v) end

--- 
--- @param arg1 int
function ents.BaseEntityBase:SetSkin(arg1) end

--- 
--- @param arg1 util.Uuid
--- @overload fun(uuid: string): 
function ents.BaseEntityBase:SetUuid(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.BaseEntityBase:SetVelocity(arg1) end

--- 
function ents.BaseEntityBase:__tostring() end

--- 
--- @param arg1 int
function ents.BaseEntityBase:StopLayeredAnimation(arg1) end

--- 
--- @param arg1 game.DamageInfo
function ents.BaseEntityBase:TakeDamage(arg1) end

--- 
function ents.BaseEntityBase:TurnOff() end

--- 
function ents.BaseEntityBase:TurnOn() end

--- 
--- @param 1 ents.BaseEntityBase
function ents.BaseEntityBase:__eq(arg1) end


--- @enum Event
ents.BaseEntityBase = {
	EVENT_ON_POST_SPAWN = 24,
	EVENT_HANDLE_KEY_VALUE = 22,
	EVENT_ON_COMPONENT_ADDED = 1,
	EVENT_ON_REMOVE = 25,
	EVENT_ON_COMPONENT_REMOVED = 2,
	EVENT_ON_SPAWN = 23,
}

--- @enum Type
ents.BaseEntityBase = {
	TYPE_SHARED = 1,
	TYPE_DEFAULT = 0,
	TYPE_LOCAL = 0,
}

--- 
--- @class ents.FogControllerComponent: ents.BaseEnvFogControllerComponent
ents.FogControllerComponent = {}


--- 
--- @class ents.BaseEntityComponent: ents.BaseBaseEntityComponent
--- @overload fun(arg1: ents.Entity):ents.BaseEntityComponent
ents.BaseEntityComponent = {}

--- 
--- @param eventId int
--- @param methodNameOrFunction any
--- @return util.Callback ret0
function ents.BaseEntityComponent:BindEvent(eventId, methodNameOrFunction) end

--- 
--- @return bool ret0
function ents.BaseEntityComponent:ShouldTransmitSnapshotData() end

--- 
--- @param name string
--- @param methodNameOrFunction any
--- @return ents.EntityComponent ret0
--- @overload fun(name: string): ents.EntityComponent
--- @overload fun(componentId: int, methodNameOrFunction: any): ents.EntityComponent
--- @overload fun(componentId: int): ents.EntityComponent
function ents.BaseEntityComponent:AddEntityComponent(name, methodNameOrFunction) end

--- 
function ents.BaseEntityComponent:OnMembersChanged() end

--- 
--- @return int ret0
function ents.BaseEntityComponent:GetVersion() end

--- 
--- @param hCb util.Callback
--- @param callbackType enum pragma::BaseEntityComponent::CallbackType
--- @overload fun(hCb: util.Callback, callbackType: enum pragma::BaseEntityComponent::CallbackType, hComponentOther: ents.BaseBaseEntityComponent): 
function ents.BaseEntityComponent:FlagCallbackForRemoval(hCb, callbackType) end

--- 
--- @param componentId int
--- @param methodNameOrFunction any
--- @return util.Callback ret0
function ents.BaseEntityComponent:BindComponentInitEvent(componentId, methodNameOrFunction) end

--- 
function ents.BaseEntityComponent:ClearMembers() end

--- 
--- @param packet net.Packet
--- @param pl ents.PlayerComponent
function ents.BaseEntityComponent:SendSnapshotData(packet, pl) end

--- 
--- @param pl ents.PlayerComponent
--- @param evId int
--- @param packet net.Packet
--- @overload fun(evId: int, packet: net.Packet): 
function ents.BaseEntityComponent:ReceiveNetEvent(pl, evId, packet) end

--- 
--- @param componentName string
--- @return ents.EntityComponent ret0
--- @overload fun(componentId: int): ents.EntityComponent
--- @overload fun(type: struct luabind::adl::nil_type<class luabind::adl::object>): ents.EntityComponent
function ents.BaseEntityComponent:GetEntityComponent(componentName) end

--- 
function ents.BaseEntityComponent:Initialize() end

--- 
--- @return bool ret0
function ents.BaseEntityComponent:IsNetworked() end

--- 
function ents.BaseEntityComponent:OnAttachedToEntity() end

--- 
function ents.BaseEntityComponent:OnDetachedFromEntity() end

--- 
function ents.BaseEntityComponent:OnEntityPostSpawn() end

--- 
--- @param arg1 int
function ents.BaseEntityComponent:ReserveMembers(arg1) end

--- 
function ents.BaseEntityComponent:OnEntitySpawn() end

--- 
function ents.BaseEntityComponent:UpdateMemberNameMap() end

--- 
--- @param arg1 int
function ents.BaseEntityComponent:OnMemberValueChanged(arg1) end

--- 
function ents.BaseEntityComponent:OnRemove() end

--- 
--- @param arg1 number
function ents.BaseEntityComponent:OnTick(arg1) end

--- 
--- @param packet net.Packet
function ents.BaseEntityComponent:ReceiveData(packet) end

--- 
--- @param packet net.Packet
function ents.BaseEntityComponent:ReceiveSnapshotData(packet) end

--- 
--- @param arg2 string
--- @param arg3 enum pragma::ents::EntityMemberType
--- @param arg4 struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>
--- @return int ret0
--- @overload fun(arg2: string, arg3: enum pragma::ents::EntityMemberType, arg4: struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>, arg5: map): int
--- @overload fun(arg2: string, arg3: enum pragma::ents::EntityMemberType, arg4: struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>, arg5: map, arg6: string): int
--- @overload fun(arg2: string, arg3: enum pragma::ents::EntityMemberType, arg4: struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>, arg5: string): int
--- @overload fun(arg2: string, arg3: enum pragma::ents::EntityMemberType, arg4: struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>, arg5: map, arg6: enum pragma::BaseLuaBaseEntityComponent::MemberFlags): int
function ents.BaseEntityComponent:RegisterMember(arg2, arg3, arg4) end

--- 
--- @param arg1 string
--- @overload fun(arg1: int): 
function ents.BaseEntityComponent:RemoveMember(arg1) end

--- 
--- @param packet net.Packet
--- @param rp net.ClientRecipientFilter
function ents.BaseEntityComponent:SendData(packet, rp) end

--- 
--- @param eventId int
--- @param packet net.Packet
--- @overload fun(protocol: int, eventId: int): 
--- @overload fun(protocol: int, eventId: int, packet: net.Packet): 
--- @overload fun(protocol: int, eventId: int, packet: net.Packet, rf: net.RecipientFilter): 
function ents.BaseEntityComponent:SendNetEvent(eventId, packet) end

--- 
--- @param arg1 bool
function ents.BaseEntityComponent:SetNetworked(arg1) end

--- 
--- @param arg1 bool
function ents.BaseEntityComponent:SetShouldTransmitSnapshotData(arg1) end


--- @enum MemberFlag
ents.BaseEntityComponent = {
	MEMBER_FLAG_NONE = 0,
	MEMBER_FLAG_SNAPSHOT_DATA = 2176,
	MEMBER_FLAG_TRANSMIT_ON_CHANGE = 1152,
}

--- @enum MemberFlagBit
ents.BaseEntityComponent = {
	MEMBER_FLAG_BIT_GETTER = 2,
	MEMBER_FLAG_BIT_INPUT = 32,
	MEMBER_FLAG_BIT_STORE = 8,
	MEMBER_FLAG_BIT_SETTER = 4,
	MEMBER_FLAG_BIT_KEY_VALUE = 16,
	MEMBER_FLAG_BIT_PROPERTY = 1,
	MEMBER_FLAG_BIT_NETWORKED = 128,
	MEMBER_FLAG_BIT_OUTPUT = 64,
}

--- @enum MemberFlagBitUse
ents.BaseEntityComponent = {
	MEMBER_FLAG_BIT_USE_HAS_GETTER = 256,
	MEMBER_FLAG_BIT_USE_IS_GETTER = 512,
}

--- @enum MemberFlagDefault
ents.BaseEntityComponent = {
	MEMBER_FLAG_DEFAULT = 126,
	MEMBER_FLAG_DEFAULT_NETWORKED = 254,
	MEMBER_FLAG_DEFAULT_SNAPSHOT = 2302,
	MEMBER_FLAG_DEFAULT_TRANSMIT = 1278,
}

--- 
--- @class ents.BaseFuncPortalComponent: ents.EntityComponent
ents.BaseFuncPortalComponent = {}


--- 
--- @class ents.BaseFuncSurfaceMaterialComponent: ents.EntityComponent
ents.BaseFuncSurfaceMaterialComponent = {}


--- 
--- @class ents.BasePointRenderTargetComponent: ents.EntityComponent
ents.BasePointRenderTargetComponent = {}


--- 
--- @class ents.RendererPpMotionBlurComponent: ents.EntityComponent
ents.RendererPpMotionBlurComponent = {}

--- 
--- @return enum pragma::MotionBlurQuality ret0
function ents.RendererPpMotionBlurComponent:GetMotionBlurQuality() end

--- 
--- @return number ret0
function ents.RendererPpMotionBlurComponent:GetMotionBlurIntensity() end

--- 
--- @param arg1 bool
function ents.RendererPpMotionBlurComponent:SetAutoUpdateMotionData(arg1) end

--- 
--- @param arg1 enum pragma::MotionBlurQuality
function ents.RendererPpMotionBlurComponent:SetMotionBlurQuality(arg1) end

--- 
--- @param arg1 number
function ents.RendererPpMotionBlurComponent:SetMotionBlurIntensity(arg1) end

--- 
function ents.RendererPpMotionBlurComponent:UpdateMotionBlurData() end


--- @enum MotionBlurQuality
ents.RendererPpMotionBlurComponent = {
	MOTION_BLUR_QUALITY_HIGH = 2,
	MOTION_BLUR_QUALITY_LOW = 0,
	MOTION_BLUR_QUALITY_MEDIUM = 1,
}

--- 
--- @class ents.BoneMergeComponent: ents.EntityComponent
ents.BoneMergeComponent = {}

--- 
--- @return ents.UniversalEntityReference ret0
function ents.BoneMergeComponent:GetTarget() end

--- 
--- @param arg1 ents.UniversalEntityReference
function ents.BoneMergeComponent:SetTarget(arg1) end


--- @enum EventOnTargetChanged
ents.BoneMergeComponent = {
	EVENT_ON_TARGET_CHANGED = 28,
}

--- 
--- @class ents.BotComponent: ents.BaseBotComponent
ents.BotComponent = {}


--- 
--- @class ents.ButtonComponent: ents.BaseFuncButtonComponent
ents.ButtonComponent = {}


--- 
--- @class ents.EntityComponent
ents.EntityComponent = {}

--- 
--- @param eventId int
--- @param function unknown
--- @return util.Callback ret0
function ents.EntityComponent:AddEventCallback(eventId, function_) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @return math.Quaternion ret0
function ents.EntityComponent:GetTransformMemberRot(idx, space) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @return math.Quaternion ret0
function ents.EntityComponent:GetTransformMemberParentRot(idx, space) end

--- 
--- @param eventId int
--- @param function unknown
--- @return util.Callback ret0
function ents.EntityComponent:AddEventListener(eventId, function_) end

--- 
--- @param eventId int
--- @param eventArgs table
--- @return enum util::EventReply ret0
--- @overload fun(arg1: int): enum util::EventReply
function ents.EntityComponent:BroadcastEvent(eventId, eventArgs) end

--- 
--- @param arg1 int
--- @return string ret0
--- @overload fun(arg1: string): string
function ents.EntityComponent:GetMemberUri(arg1) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @param value math.Vector
--- @return math.Vector ret0_1
--- @return enum umath::CoordinateSpace ret0_2
--- @overload fun(idx: int, space: enum umath::CoordinateSpace, value: vector.Vector): math.Vector, enum umath::CoordinateSpace
function ents.EntityComponent:ConvertScaleToMemberSpace(idx, space, value) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @param value math.Vector
--- @return math.Vector ret0_1
--- @return enum umath::CoordinateSpace ret0_2
--- @overload fun(idx: int, space: enum umath::CoordinateSpace, value: vector.Vector): math.Vector, enum umath::CoordinateSpace
function ents.EntityComponent:ConvertPosToMemberSpace(idx, space, value) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @param value math.ScaledTransform
--- @return math.ScaledTransform ret0_1
--- @return enum umath::CoordinateSpace ret0_2
function ents.EntityComponent:ConvertPoseToMemberSpace(idx, space, value) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @param value math.Quaternion
--- @return math.Quaternion ret0_1
--- @return enum umath::CoordinateSpace ret0_2
function ents.EntityComponent:ConvertRotToMemberSpace(idx, space, value) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @param pos math.Vector
--- @return math.Vector ret0
--- @overload fun(idx: int, space: enum umath::CoordinateSpace, pos: vector.Vector): math.Vector
function ents.EntityComponent:ConvertTransformMemberPosToTargetSpace(idx, space, pos) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @param pose math.ScaledTransform
--- @return math.ScaledTransform ret0
function ents.EntityComponent:ConvertTransformMemberPoseToTargetSpace(idx, space, pose) end

--- 
--- @return string ret0
function ents.EntityComponent:GetUri() end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @param rot math.Quaternion
--- @return math.Quaternion ret0
function ents.EntityComponent:ConvertTransformMemberRotToTargetSpace(idx, space, rot) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @return math.ScaledTransform ret0
function ents.EntityComponent:GetTransformMemberPose(idx, space) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @return math.ScaledTransform ret0
function ents.EntityComponent:GetTransformMemberParentPose(idx, space) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @param scale math.Vector
--- @return math.Vector ret0
--- @overload fun(idx: int, space: enum umath::CoordinateSpace, scale: vector.Vector): math.Vector
function ents.EntityComponent:ConvertTransformMemberScaleToTargetSpace(idx, space, scale) end

--- 
--- @param hComponentOther ents.EntityComponent
function ents.EntityComponent:Copy(hComponentOther) end

--- 
--- @return int ret0
function ents.EntityComponent:GetComponentId() end

--- 
--- @param eventName string
--- @return int ret0
function ents.EntityComponent:RegisterNetEvent(eventName) end

--- 
--- @return string ret0
function ents.EntityComponent:GetComponentName() end

--- 
--- @param memberIndex int
--- @return enum umath::CoordinateSpace ret0
function ents.EntityComponent:GetTransformMemberSpace(memberIndex) end

--- 
--- @return table ret0
function ents.EntityComponent:GetDynamicMemberIndices() end

--- 
--- @return ents.BaseEntityBase ret0
function ents.EntityComponent:GetEntity() end

--- 
--- @param arg1 string
--- @return int ret0
function ents.EntityComponent:GetMemberIndex(arg1) end

--- 
--- @return table ret0
function ents.EntityComponent:GetMemberIndices() end

--- 
--- @param arg1 int
--- @return ents.ComponentInfo.MemberInfo ret0
function ents.EntityComponent:GetMemberInfo(arg1) end

--- 
--- @param arg1 int
--- @param arg2 enum umath::CoordinateSpace
--- @param arg3 math.ScaledTransform
--- @return bool ret0
function ents.EntityComponent:SetTransformMemberPose(arg1, arg2, arg3) end

--- 
--- @return table ret0
function ents.EntityComponent:GetMemberInfos() end

--- 
--- @param memberIndex int
--- @return struct luabind::adl::udm_type<class luabind::adl::object,1,1,1> ret0
--- @overload fun(memberName: string): struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>
--- @overload fun(memberInfo: ents.ComponentInfo.MemberInfo): struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>
function ents.EntityComponent:GetMemberValue(memberIndex) end

--- 
--- @param arg1 int
--- @param arg2 enum umath::CoordinateSpace
--- @param arg3 math.Vector
--- @return bool ret0
--- @overload fun(arg1: int, arg2: enum umath::CoordinateSpace, arg3: vector.Vector): bool
function ents.EntityComponent:SetTransformMemberPos(arg1, arg2, arg3) end

--- 
--- @return number ret0
function ents.EntityComponent:GetNextTick() end

--- 
--- @return int ret0
function ents.EntityComponent:GetStaticMemberCount() end

--- 
--- @return enum pragma::TickPolicy ret0
function ents.EntityComponent:GetTickPolicy() end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @return math.Vector ret0
--- @overload fun(idx: int, space: enum umath::CoordinateSpace): math.Vector
function ents.EntityComponent:GetTransformMemberPos(idx, space) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @return math.Vector ret0
--- @overload fun(idx: int, space: enum umath::CoordinateSpace): math.Vector
function ents.EntityComponent:GetTransformMemberParentPos(idx, space) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @return math.Vector ret0
--- @overload fun(idx: int, space: enum umath::CoordinateSpace): math.Vector
function ents.EntityComponent:GetTransformMemberScale(idx, space) end

--- 
--- @param idx int
--- @param space enum umath::CoordinateSpace
--- @return math.Vector ret0
--- @overload fun(idx: int, space: enum umath::CoordinateSpace): math.Vector
function ents.EntityComponent:GetTransformMemberParentScale(idx, space) end

--- 
--- @param eventId int
--- @param eventArgs table
--- @overload fun(arg1: int): 
function ents.EntityComponent:InjectEvent(eventId, eventArgs) end

--- 
--- @param memberIndex int
--- @overload fun(memberName: string): 
function ents.EntityComponent:InvokeElementMemberChangeCallback(memberIndex) end

--- 
--- @param eventId int
--- @param eventArgs table
--- @return enum util::EventReply ret0
--- @overload fun(arg1: int): enum util::EventReply
function ents.EntityComponent:InvokeEventCallbacks(eventId, eventArgs) end

--- 
--- @param arg1 string
--- @param arg2 enum pragma::BaseEntityComponent::LogSeverity
--- @overload fun(arg1: string, arg2: enum pragma::BaseEntityComponent::LogSeverity): 
function ents.EntityComponent:Log(arg1, arg2) end

--- 
--- @param arg1 string
--- @return bool ret0
function ents.EntityComponent:IsPropertyAnimated(arg1) end

--- 
--- @return bool ret0
function ents.EntityComponent:IsValid() end

--- 
--- @param arg1 udm.LinkedPropertyWrapper
function ents.EntityComponent:Load(arg1) end

--- 
--- @param arg1 udm.LinkedPropertyWrapper
function ents.EntityComponent:Save(arg1) end

--- 
--- @param memberName string
--- @param eref ents.UniversalMemberReference
--- @return bool ret0
--- @overload fun(memberName: string, eref: ents.MultiUniversalEntityReference): bool
--- @overload fun(memberName: string, eref: ents.UniversalEntityReference): bool
--- @overload fun(memberName: string, value: struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>): bool
--- @overload fun(memberIndex: int, value: struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>): bool
--- @overload fun(memberInfo: ents.ComponentInfo.MemberInfo, eref: ents.UniversalMemberReference): bool
--- @overload fun(memberInfo: ents.ComponentInfo.MemberInfo, eref: ents.MultiUniversalEntityReference): bool
--- @overload fun(memberInfo: ents.ComponentInfo.MemberInfo, eref: ents.UniversalEntityReference): bool
--- @overload fun(memberInfo: ents.ComponentInfo.MemberInfo, value: struct luabind::adl::udm_type<class luabind::adl::object,1,1,1>): bool
function ents.EntityComponent:SetMemberValue(memberName, eref) end

--- 
function ents.EntityComponent:__tostring() end

--- 
--- @param arg1 number
function ents.EntityComponent:SetNextTick(arg1) end

--- 
--- @param arg1 string
--- @param arg2 bool
function ents.EntityComponent:SetPropertyAnimated(arg1, arg2) end

--- 
--- @param arg1 enum pragma::TickPolicy
function ents.EntityComponent:SetTickPolicy(arg1) end

--- 
--- @param arg1 int
--- @param arg2 enum umath::CoordinateSpace
--- @param arg3 math.Quaternion
--- @return bool ret0
function ents.EntityComponent:SetTransformMemberRot(arg1, arg2, arg3) end

--- 
--- @param arg1 int
--- @param arg2 enum umath::CoordinateSpace
--- @param arg3 math.Vector
--- @return bool ret0
--- @overload fun(arg1: int, arg2: enum umath::CoordinateSpace, arg3: vector.Vector): bool
function ents.EntityComponent:SetTransformMemberScale(arg1, arg2, arg3) end


--- @enum LogSeverity
ents.EntityComponent = {
	LOG_SEVERITY_CRITICAL = 3,
	LOG_SEVERITY_DEBUG = 4,
	LOG_SEVERITY_ERROR = 2,
	LOG_SEVERITY_NORMAL = 0,
	LOG_SEVERITY_WARNING = 1,
}

--- @enum CallbackType
ents.EntityComponent = {
	CALLBACK_TYPE_COMPONENT = 0,
	CALLBACK_TYPE_ENTITY = 1,
}

--- @enum Fregister
ents.EntityComponent = {
	FREGISTER_BIT_NETWORKED = 1,
	FREGISTER_NONE = 0,
}

--- 
--- @class ents.ModelComponent: ents.BaseModelComponent
ents.ModelComponent = {}

--- 
--- @param arg1 class CModelSubMesh
--- @param arg2 class CMaterial
--- @param arg3 enum pragma::rendering::RenderBufferData::StateFlags
--- @overload fun(arg1: class CModelSubMesh, arg2: class CMaterial, arg3: enum pragma::rendering::RenderBufferData::StateFlags): 
function ents.ModelComponent:AddRenderMesh(arg1, arg2, arg3) end

--- 
--- @return table ret0
function ents.ModelComponent:GetBodyGroups() end

--- 
--- @param arg1 int
--- @overload fun(matSrc: string): 
function ents.ModelComponent:ClearMaterialOverride(arg1) end

--- 
--- @param boneId int
--- @param space enum umath::CoordinateSpace
--- @return math.Vector ret0_1
--- @return math.Vector ret0_2
--- @return math.Vector ret0_3
--- @return math.Quaternion ret0_4
--- @overload fun(boneId: int): math.Vector, math.Vector, math.Vector, math.Quaternion
--- @overload fun(boneId: int, space: enum umath::CoordinateSpace): math.Vector, math.Vector, math.Vector, math.Quaternion
--- @overload fun(boneId: int): math.Vector, math.Vector, math.Vector, math.Quaternion
function ents.ModelComponent:GetHitboxBounds(boneId, space) end

--- 
function ents.ModelComponent:ClearMaterialOverrides() end

--- 
--- @return int ret0
function ents.ModelComponent:GetLOD() end

--- 
--- @param attachment int
--- @return math.Vector ret0_1
--- @return math.Quaternion ret0_2
--- @overload fun(attachment: string): math.Vector, math.Quaternion
--- @overload fun(attachment: int): math.Vector, math.Quaternion
--- @overload fun(attachment: string): math.Vector, math.Quaternion
function ents.ModelComponent:GetAttachmentTransform(attachment) end

--- 
--- @param arg1 table
function ents.ModelComponent:SetRenderBufferData(arg1) end

--- 
--- @return enum pragma::GameShaderSpecializationConstantFlag ret0
function ents.ModelComponent:GetBaseShaderSpecializationFlags() end

--- 
--- @param arg1 number
function ents.ModelComponent:SetMaxDrawDistance(arg1) end

--- 
--- @return table ret0
function ents.ModelComponent:GetRenderMeshes() end

--- 
--- @param arg1 int
--- @return int ret0
function ents.ModelComponent:GetBodyGroup(arg1) end

--- 
--- @return int ret0
function ents.ModelComponent:GetHitboxCount() end

--- 
--- @param arg1 int
--- @return class CMaterial ret0
function ents.ModelComponent:GetMaterialOverride(arg1) end

--- 
--- @return number ret0
function ents.ModelComponent:GetMaxDrawDistance() end

--- 
--- @return game.Model ret0
function ents.ModelComponent:GetModel() end

--- 
--- @return string ret0
function ents.ModelComponent:GetModelName() end

--- 
--- @return table ret0
function ents.ModelComponent:GetRenderBufferData() end

--- 
function ents.ModelComponent:SetRenderMeshesDirty() end

--- 
--- @param arg1 string
--- @param arg2 int
--- @overload fun(arg1: int, arg2: int): 
function ents.ModelComponent:SetBodyGroup(arg1, arg2) end

--- 
--- @param arg1 bool
--- @overload fun(arg1: bool): 
function ents.ModelComponent:ReloadRenderBufferList(arg1) end

--- 
--- @param arg1 int
--- @return class CMaterial ret0
--- @overload fun(arg1: int, arg2: int): class CMaterial
function ents.ModelComponent:GetRenderMaterial(arg1) end

--- 
--- @return bool ret0
function ents.ModelComponent:IsAutoLodEnabled() end

--- 
--- @return int ret0
function ents.ModelComponent:GetSkin() end

--- 
--- @return class util::UInt32Property ret0
function ents.ModelComponent:GetSkinProperty() end

--- 
--- @return enum pragma::GameShaderSpecializationConstantFlag ret0
function ents.ModelComponent:GetStaticShaderSpecializationFlags() end

--- 
--- @return bool ret0
function ents.ModelComponent:IsDepthPrepassEnabled() end

--- 
--- @param arg1 string
--- @return int ret0
function ents.ModelComponent:LookupAnimation(arg1) end

--- 
--- @param arg1 string
--- @return int ret0
function ents.ModelComponent:LookupAttachment(arg1) end

--- 
--- @param matSrc string
--- @param matDst class CMaterial
--- @overload fun(matSrc: string, matDst: string): 
--- @overload fun(arg1: int, arg2: class CMaterial): 
--- @overload fun(arg1: int, arg2: string): 
function ents.ModelComponent:SetMaterialOverride(matSrc, matDst) end

--- 
--- @param arg1 string
--- @return int ret0
function ents.ModelComponent:LookupBlendController(arg1) end

--- 
--- @param arg1 bool
function ents.ModelComponent:SetDepthPrepassEnabled(arg1) end

--- 
--- @param arg1 string
--- @return int ret0
function ents.ModelComponent:LookupBone(arg1) end

--- 
--- @param arg1 enum pragma::GameShaderSpecializationConstantFlag
function ents.ModelComponent:SetStaticShaderSpecializationFlags(arg1) end

--- 
--- @param arg1 bool
function ents.ModelComponent:SetAutoLodEnabled(arg1) end

--- 
--- @param arg1 game.Model
--- @overload fun(arg1: string): 
--- @overload fun(): 
function ents.ModelComponent:SetModel(arg1) end

--- 
--- @param flag enum pragma::GameShaderSpecializationConstantFlag
--- @overload fun(arg1: enum pragma::GameShaderSpecializationConstantFlag, arg2: bool): 
function ents.ModelComponent:SetBaseShaderSpecializationFlag(flag) end

--- 
--- @param arg1 enum pragma::GameShaderSpecializationConstantFlag
function ents.ModelComponent:SetBaseShaderSpecializationFlags(arg1) end

--- 
--- @param arg1 string
function ents.ModelComponent:SetModelName(arg1) end

--- 
--- @param t 
function ents.ModelComponent:SetBodyGroups(t) end

--- 
--- @param arg1 bool
--- @overload fun(arg1: bool): 
function ents.ModelComponent:UpdateRenderMeshes(arg1) end

--- 
function ents.ModelComponent:SetRandomSkin() end

--- 
--- @param arg1 int
function ents.ModelComponent:SetSkin(arg1) end


--- @enum Event
ents.ModelComponent = {
	EVENT_ON_MODEL_CHANGED = 104,
	EVENT_ON_MODEL_MATERIALS_LOADED = 105,
}

--- 
--- @class ents.ModelComponent.RenderBufferData
--- @field material  
--- @field pipelineSpecializationFlags pragma::GameShaderSpecializationConstantFlag 
--- @field renderBuffer  
--- @field stateFlags pragma::rendering::RenderBufferData::StateFlags 
--- @overload fun(args: ents.ModelComponent.RenderBufferData):ents.ModelComponent.RenderBufferData
--- @overload fun():ents.ModelComponent.RenderBufferData
ents.ModelComponent.RenderBufferData = {}


--- @enum StateFlag
ents.ModelComponent.RenderBufferData = {
	STATE_FLAG_EXCLUDE_FROM_ACCELERATION_STRUCTURES_BIT = 4,
	STATE_FLAG_NONE = 0,
}

--- @enum StateFlagEnable
ents.ModelComponent.RenderBufferData = {
	STATE_FLAG_ENABLE_DEPTH_PREPASS_BIT = 1,
	STATE_FLAG_ENABLE_GLOW_PASS_BIT = 2,
}

--- 
--- @class ents.CSMComponent: ents.EntityComponent
ents.CSMComponent = {}


--- 
--- @class ents.DecalComponent: ents.BaseEnvDecalComponent
ents.DecalComponent = {}

--- 
--- @return bool ret0
function ents.DecalComponent:ApplyDecal() end

--- 
--- @param tMeshes any
--- @overload fun(tMeshes: any, pose: math.ScaledTransform): 
function ents.DecalComponent:CreateFromProjection(tMeshes) end

--- 
--- @param duration number
function ents.DecalComponent:DebugDraw(duration) end


--- 
--- @class ents.CameraComponent: ents.BaseEnvCameraComponent
ents.CameraComponent = {}

--- 
--- @param uv math.Vector2
--- @return math.Vector ret0
--- @overload fun(uv: math.Vector2): math.Vector
function ents.CameraComponent:CalcRayDirection(uv) end

--- 
--- @param arg1 math.Vector2
--- @param arg2 math.Vector2
--- @param arg3 table
function ents.CameraComponent:CreateFrustumKDop(arg1, arg2, arg3) end

--- 
--- @param point math.Vector
--- @return number ret0
--- @overload fun(point: vector.Vector): number
function ents.CameraComponent:CalcScreenSpaceDistance(point) end

--- 
--- @param uvStart math.Vector2
--- @param uvEnd math.Vector2
function ents.CameraComponent:CreateFrustumMesh(uvStart, uvEnd) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.CameraComponent:GetNearPlaneCenter() end

--- 
--- @param depth number
--- @param nearZ number
--- @param farZ number
--- @return number ret0
function ents.CameraComponent:DepthToDistance(depth, nearZ, farZ) end

--- 
--- @return number ret0
function ents.CameraComponent:GetFOV() end

--- 
--- @return number ret0
function ents.CameraComponent:GetAspectRatio() end

--- 
--- @return class util::FloatProperty ret0
function ents.CameraComponent:GetAspectRatioProperty() end

--- 
--- @return class util::FloatProperty ret0
function ents.CameraComponent:GetFOVProperty() end

--- 
--- @return number ret0
function ents.CameraComponent:GetNearZ() end

--- 
--- @return number ret0
function ents.CameraComponent:GetFOVRad() end

--- 
function ents.CameraComponent:UpdateProjectionMatrix() end

--- 
--- @return class std::array<struct glm::vec<3,float,0>,4> ret0
function ents.CameraComponent:GetFarPlaneBoundaries() end

--- 
--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @overload fun(arg1: number, arg2: number): 
function ents.CameraComponent:GetFarPlaneBounds(arg1, arg2, arg3) end

--- 
--- @param lookAtPos math.Vector
--- @overload fun(lookAtPos: vector.Vector): 
function ents.CameraComponent:LookAt(lookAtPos) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.CameraComponent:GetFarPlaneCenter() end

--- 
--- @param arg1 math.Vector2
--- @return math.Vector ret0
--- @overload fun(arg1: math.Vector2): math.Vector
function ents.CameraComponent:GetFarPlanePoint(arg1) end

--- 
--- @return number ret0
function ents.CameraComponent:GetFarZ() end

--- 
--- @param arg1 number
function ents.CameraComponent:SetFocalDistance(arg1) end

--- 
--- @return class util::FloatProperty ret0
function ents.CameraComponent:GetFarZProperty() end

--- 
--- @return number ret0
function ents.CameraComponent:GetFocalDistance() end

--- 
--- @return class util::FloatProperty ret0
function ents.CameraComponent:GetFocalDistanceProperty() end

--- 
--- @param arg1 number
function ents.CameraComponent:SetFarZ(arg1) end

--- 
--- @param planeID int
function ents.CameraComponent:GetFrustumNeighbors(planeID) end

--- 
--- @param planeA int
--- @param planeB int
function ents.CameraComponent:GetFrustumPlaneCornerPoints(planeA, planeB) end

--- 
--- @param arg1 table
--- @overload fun(arg1: table): 
function ents.CameraComponent:GetFrustumPoints(arg1) end

--- 
--- @return table ret0
function ents.CameraComponent:GetFrustumPlanes() end

--- 
--- @return class std::array<struct glm::vec<3,float,0>,4> ret0
function ents.CameraComponent:GetNearPlaneBoundaries() end

--- 
--- @param arg1 number
--- @param arg2 number
function ents.CameraComponent:GetNearPlaneBounds(arg1, arg2) end

--- 
--- @param arg1 math.Vector2
--- @return math.Vector ret0
--- @overload fun(arg1: math.Vector2): math.Vector
function ents.CameraComponent:GetNearPlanePoint(arg1) end

--- 
function ents.CameraComponent:UpdateViewMatrix() end

--- 
--- @return class util::FloatProperty ret0
function ents.CameraComponent:GetNearZProperty() end

--- 
--- @param arg1 number
function ents.CameraComponent:SetNearZ(arg1) end

--- 
--- @return table ret0_1
--- @return table ret0_2
--- @overload fun(z: number): table, table
--- @overload fun(): table, table
function ents.CameraComponent:GetPlaneBoundaries() end

--- 
--- @param arg1 number
--- @return math.Vector ret0
--- @overload fun(arg1: number): math.Vector
function ents.CameraComponent:GetPlaneCenter(arg1) end

--- 
--- @param arg1 number
--- @param arg2 math.Vector2
--- @return math.Vector ret0
--- @overload fun(arg1: number, arg2: math.Vector2): math.Vector
function ents.CameraComponent:GetPlanePoint(arg1, arg2) end

--- 
--- @return math.Mat4 ret0
function ents.CameraComponent:GetViewMatrix() end

--- 
--- @return math.Mat4 ret0
function ents.CameraComponent:GetProjectionMatrix() end

--- 
--- @return class util::Matrix4Property ret0
function ents.CameraComponent:GetViewMatrixProperty() end

--- 
--- @return class util::Matrix4Property ret0
function ents.CameraComponent:GetProjectionMatrixProperty() end

--- 
--- @param uv math.Vector2
--- @param width number
--- @param height number
--- @return math.Vector ret0
--- @overload fun(uv: math.Vector2, width: number, height: number): math.Vector
function ents.CameraComponent:ScreenSpaceToWorldSpace(uv, width, height) end

--- 
--- @param arg1 number
function ents.CameraComponent:SetAspectRatio(arg1) end

--- 
--- @param arg1 number
function ents.CameraComponent:SetFOV(arg1) end

--- 
--- @param arg1 math.Mat4
function ents.CameraComponent:SetViewMatrix(arg1) end

--- 
--- @param arg1 math.Mat4
function ents.CameraComponent:SetProjectionMatrix(arg1) end

--- 
function ents.CameraComponent:UpdateMatrices() end

--- 
--- @param point math.Vector
--- @return math.Vector2 ret0_1
--- @return number ret0_2
--- @overload fun(point: vector.Vector): math.Vector2, number
function ents.CameraComponent:WorldSpaceToScreenSpace(point) end

--- 
--- @param dir math.Vector
--- @return math.Vector2 ret0
--- @overload fun(dir: vector.Vector): math.Vector2
function ents.CameraComponent:WorldSpaceToScreenSpaceDirection(dir) end


--- @enum Default
ents.CameraComponent = {
	DEFAULT_FAR_Z = 32768,
	DEFAULT_FOV = 90,
	DEFAULT_NEAR_Z = 1,
	DEFAULT_VIEWMODEL_FOV = 70,
}

--- 
--- @class ents.ConstraintCopyLocationComponent: ents.EntityComponent
ents.ConstraintCopyLocationComponent = {}


--- 
--- @class ents.FlammableComponent: ents.BaseFlammableComponent
ents.FlammableComponent = {}

--- 
function ents.FlammableComponent:Extinguish() end

--- 
--- @overload fun(duration: number): 
--- @overload fun(duration: number, attacker: ents.BaseEntityBase): 
--- @overload fun(duration: number, attacker: ents.BaseEntityBase, inflictor: ents.BaseEntityBase): 
function ents.FlammableComponent:Ignite() end

--- 
--- @return class util::BoolProperty ret0
function ents.FlammableComponent:GetIgnitableProperty() end

--- 
--- @return class util::BoolProperty ret0
function ents.FlammableComponent:GetOnFireProperty() end

--- 
function ents.FlammableComponent:IsIgnitable() end

--- 
function ents.FlammableComponent:IsOnFire() end

--- 
--- @param b bool
function ents.FlammableComponent:SetIgnitable(b) end


--- @enum Event
ents.FlammableComponent = {
	EVENT_ON_EXTINGUISHED = 62,
	EVENT_ON_IGNITED = 61,
}

--- 
--- @class ents.RenderTargetComponent: ents.BasePointRenderTargetComponent
ents.RenderTargetComponent = {}


--- 
--- @class ents.CharacterComponent: ents.BaseCharacterComponent
ents.CharacterComponent = {}

--- 
--- @param arg1 int
--- @param arg2 int
--- @overload fun(arg1: string, arg2: int): 
function ents.CharacterComponent:AddAmmo(arg1, arg2) end

--- 
--- @param arg1 enum pragma::BaseCharacterComponent::FootType
function ents.CharacterComponent:FootStep(arg1) end

--- 
function ents.CharacterComponent:Attack4() end

--- 
--- @return math.Quaternion ret0
function ents.CharacterComponent:GetLocalOrientationViewRotation() end

--- 
--- @return math.Quaternion ret0
function ents.CharacterComponent:GetLocalOrientationRotation() end

--- 
--- @param hWep ents.WeaponComponent
--- @overload fun(arg1: string): 
function ents.CharacterComponent:DeployWeapon(hWep) end

--- 
function ents.CharacterComponent:DropActiveWeapon() end

--- 
--- @return class util::FloatProperty ret0
function ents.CharacterComponent:GetSlopeLimitProperty() end

--- 
--- @param maxDist number
--- @overload fun(): 
function ents.CharacterComponent:GetAimRayData(maxDist) end

--- 
function ents.CharacterComponent:ReloadWeapon() end

--- 
--- @param hWep ents.WeaponComponent
--- @overload fun(arg1: string): 
function ents.CharacterComponent:DropWeapon(hWep) end

--- 
--- @param arg1 math.EulerAngles
--- @return math.EulerAngles ret0
--- @overload fun(arg1: math.Quaternion): math.EulerAngles
function ents.CharacterComponent:LocalOrientationToWorld(arg1) end

--- 
--- @return class util::FloatProperty ret0
function ents.CharacterComponent:GetJumpPowerProperty() end

--- 
--- @return phys.Object ret0
function ents.CharacterComponent:GetHitboxPhysicsObject() end

--- 
--- @return ents.BaseEntityBase ret0
function ents.CharacterComponent:GetActiveWeapon() end

--- 
--- @param className string
--- @overload fun(): 
function ents.CharacterComponent:GetWeapons(className) end

--- 
--- @param arg1 int
--- @return int ret0
--- @overload fun(arg1: string): int
function ents.CharacterComponent:GetAmmoCount(arg1) end

--- 
--- @return ai.Faction ret0
function ents.CharacterComponent:GetFaction() end

--- 
--- @return class util::BoolProperty ret0
function ents.CharacterComponent:GetFrozenProperty() end

--- 
--- @return number ret0
function ents.CharacterComponent:GetJumpPower() end

--- 
--- @return bool ret0
function ents.CharacterComponent:GetGodMode() end

--- 
--- @return math.EulerAngles ret0
function ents.CharacterComponent:GetLocalOrientationAngles() end

--- 
--- @return number ret0
function ents.CharacterComponent:GetSlopeLimit() end

--- 
--- @return math.EulerAngles ret0
function ents.CharacterComponent:GetLocalOrientationViewAngles() end

--- 
--- @return int ret0
function ents.CharacterComponent:GetWeaponCount() end

--- 
--- @return int ret0_1
--- @return int ret0_2
function ents.CharacterComponent:GetMoveController() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.CharacterComponent:GetMoveVelocity() end

--- 
--- @return int ret0
function ents.CharacterComponent:GetNeckPitchController() end

--- 
--- @return int ret0
function ents.CharacterComponent:GetNeckYawController() end

--- 
--- @return bool ret0
function ents.CharacterComponent:GetNoTarget() end

--- 
--- @param arg1 ai.Faction
--- @overload fun(factionName: string): 
function ents.CharacterComponent:SetFaction(arg1) end

--- 
--- @param arg1 string
--- @param arg2 string
--- @overload fun(arg1: string): 
function ents.CharacterComponent:SetMoveController(arg1, arg2) end

--- 
function ents.CharacterComponent:GetOrientationAxes() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.CharacterComponent:GetRelativeVelocity() end

--- 
--- @return math.Quaternion ret0
function ents.CharacterComponent:GetOrientationAxesRotation() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.CharacterComponent:GetShootPos() end

--- 
--- @param arg1 int
--- @param arg2 int
--- @overload fun(arg1: string, arg2: int): 
function ents.CharacterComponent:SetAmmoCount(arg1, arg2) end

--- 
--- @return number ret0
function ents.CharacterComponent:GetStepOffset() end

--- 
--- @return class util::FloatProperty ret0
function ents.CharacterComponent:GetStepOffsetProperty() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.CharacterComponent:GetViewForward() end

--- 
--- @return math.Quaternion ret0
--- @overload fun(arg1: math.Quaternion): math.Quaternion
function ents.CharacterComponent:NormalizeViewRotation() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.CharacterComponent:GetViewUp() end

--- 
--- @return number ret0
function ents.CharacterComponent:GetTurnSpeed() end

--- 
--- @return bool ret0
function ents.CharacterComponent:IsDead() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.CharacterComponent:GetUpDirection() end

--- 
function ents.CharacterComponent:Ragdolize() end

--- 
--- @return class util::Vector3Property ret0
function ents.CharacterComponent:GetUpDirectionProperty() end

--- 
--- @return bool ret0
function ents.CharacterComponent:IsAlive() end

--- 
--- @return math.EulerAngles ret0
function ents.CharacterComponent:GetViewAngles() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.CharacterComponent:GetViewRight() end

--- 
--- @param arg1 string
--- @return ents.BaseEntityBase ret0
function ents.CharacterComponent:GiveWeapon(arg1) end

--- 
--- @return math.Quaternion ret0
function ents.CharacterComponent:GetViewRotation() end

--- 
--- @return bool ret0
function ents.CharacterComponent:IsFrozen() end

--- 
--- @param arg1 string
--- @return bool ret0
function ents.CharacterComponent:HasWeapon(arg1) end

--- 
function ents.CharacterComponent:HolsterWeapon() end

--- 
--- @param arg1 int
--- @param arg2 int
--- @overload fun(arg1: string, arg2: int): 
function ents.CharacterComponent:RemoveAmmo(arg1, arg2) end

--- 
--- @return bool ret0
function ents.CharacterComponent:IsMoving() end

--- 
--- @param arg1 math.Vector
--- @return bool ret0
--- @overload fun(): bool
--- @overload fun(arg1: vector.Vector): bool
function ents.CharacterComponent:Jump(arg1) end

--- 
--- @param hWep ents.WeaponComponent
--- @overload fun(arg1: string): 
function ents.CharacterComponent:RemoveWeapon(hWep) end

--- 
--- @param arg1 game.DamageInfo
function ents.CharacterComponent:Kill(arg1) end

--- 
function ents.CharacterComponent:PrimaryAttack() end

--- 
--- @param arg1 number
function ents.CharacterComponent:SetStepOffset(arg1) end

--- 
function ents.CharacterComponent:RemoveWeapons() end

--- 
function ents.CharacterComponent:SecondaryAttack() end

--- 
function ents.CharacterComponent:SelectNextWeapon() end

--- 
function ents.CharacterComponent:SelectPreviousWeapon() end

--- 
--- @param arg1 bool
function ents.CharacterComponent:SetFrozen(arg1) end

--- 
--- @param arg1 bool
function ents.CharacterComponent:SetGodMode(arg1) end

--- 
--- @param arg1 number
function ents.CharacterComponent:SetJumpPower(arg1) end

--- 
--- @param arg1 string
--- @param arg2 string
function ents.CharacterComponent:SetNeckControllers(arg1, arg2) end

--- 
--- @param arg1 bool
function ents.CharacterComponent:SetNoTarget(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.CharacterComponent:SetOrientation(arg1) end

--- 
--- @param slopeLimit number
function ents.CharacterComponent:SetSlopeLimit(slopeLimit) end

--- 
--- @param arg1 number
function ents.CharacterComponent:SetTurnSpeed(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.CharacterComponent:SetUpDirection(arg1) end

--- 
--- @param arg1 math.EulerAngles
function ents.CharacterComponent:SetViewAngles(arg1) end

--- 
--- @param arg1 math.Quaternion
function ents.CharacterComponent:SetViewRotation(arg1) end

--- 
function ents.CharacterComponent:TertiaryAttack() end

--- 
--- @param arg1 math.EulerAngles
--- @return math.EulerAngles ret0
--- @overload fun(arg1: math.Quaternion): math.EulerAngles
function ents.CharacterComponent:WorldToLocalOrientation(arg1) end


--- @enum EventCalcMovement
ents.CharacterComponent = {
	EVENT_CALC_MOVEMENT_ACCELERATION = 54,
	EVENT_CALC_MOVEMENT_DIRECTION = 55,
	EVENT_CALC_MOVEMENT_SPEED = 52,
}

--- @enum Event
ents.CharacterComponent = {
	EVENT_ON_JUMP = 58,
	EVENT_ON_DEPLOY_WEAPON = 49,
	EVENT_CALC_AIR_MOVEMENT_MODIFIER = 53,
	EVENT_ON_FOOT_STEP = 47,
	EVENT_HANDLE_VIEW_ROTATION = 57,
	EVENT_IS_MOVING = 56,
	EVENT_ON_CHARACTER_ORIENTATION_CHANGED = 48,
	EVENT_ON_DEATH = 46,
	EVENT_ON_KILLED = 44,
	EVENT_ON_RESPAWN = 45,
	EVENT_ON_SET_ACTIVE_WEAPON = 50,
	EVENT_PLAY_FOOTSTEP_SOUND = 51,
}

--- @enum Foot
ents.CharacterComponent = {
	FOOT_LEFT = 0,
	FOOT_RIGHT = 1,
}

--- 
--- @class ents.ColorComponent: ents.BaseColorComponent
ents.ColorComponent = {}

--- 
--- @return math.Vector4 ret0
function ents.ColorComponent:GetColor() end

--- 
--- @return class util::Vector4Property ret0
function ents.ColorComponent:GetColorProperty() end

--- 
--- @param arg1 math.Vector4
--- @overload fun(arg1: math.Vector): 
--- @overload fun(arg1: util.Color): 
--- @overload fun(arg1: vector.Vector): 
function ents.ColorComponent:SetColor(arg1) end


--- @enum EventOnColorChanged
ents.ColorComponent = {
	EVENT_ON_COLOR_CHANGED = 59,
}

--- 
--- @class ents.EnvTimeScaleComponent: ents.BaseEnvTimescaleComponent
ents.EnvTimeScaleComponent = {}


--- 
--- @class ents.LifelineLinkComponent: ents.EntityComponent
ents.LifelineLinkComponent = {}


--- 
--- @class ents.ConstraintChildOfComponent: ents.EntityComponent
ents.ConstraintChildOfComponent = {}

--- 
--- @param arg1 math.ScaledTransform
--- @return math.ScaledTransform ret0
function ents.ConstraintChildOfComponent:CalcInversePose(arg1) end

--- 
--- @param arg1 enum umath::CoordinateSpace
--- @return math.Vector ret0_1
--- @return math.Quaternion ret0_2
--- @overload fun(arg1: enum umath::CoordinateSpace): math.Vector, math.Quaternion
function ents.ConstraintChildOfComponent:GetDriverPose(arg1) end

--- 
--- @return class util::TWeakSharedHandle<class pragma::ConstraintComponent> ret0
function ents.ConstraintChildOfComponent:GetConstraint() end

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintChildOfComponent:IsLocationAxisEnabled(arg1) end

--- 
--- @param arg1 enum umath::CoordinateSpace
--- @return math.Vector ret0_1
--- @return math.Quaternion ret0_2
--- @overload fun(arg1: enum umath::CoordinateSpace): math.Vector, math.Quaternion
function ents.ConstraintChildOfComponent:GetDrivenPose(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintChildOfComponent:IsRotationAxisEnabled(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintChildOfComponent:IsScaleAxisEnabled(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintChildOfComponent:SetLocationAxisEnabled(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintChildOfComponent:SetRotationAxisEnabled(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintChildOfComponent:SetScaleAxisEnabled(arg1, arg2) end


--- 
--- @class ents.ComponentInfo
--- @field flags  
--- @field id  
--- @field name  
ents.ComponentInfo = {}

--- 
--- @param name string
--- @return int ret0
function ents.ComponentInfo:FindMemberIndex(name) end

--- 
--- @return int ret0
function ents.ComponentInfo:GetMemberCount() end

--- 
--- @param componentInfo ents.ComponentInfo
--- @param name string
--- @return ents.ComponentInfo.MemberInfo ret0
--- @overload fun(memberIdx: int): ents.ComponentInfo.MemberInfo
function ents.ComponentInfo:GetMemberInfo(componentInfo, name) end


--- 
--- @class ents.ComponentInfo.MemberInfo
--- @field customSpecializationType  
--- @field name  
--- @field stepSize  
--- @field maxValue  
--- @field default  
--- @field specializationType  
--- @field metaData udm.Property 
--- @field minValue  
--- @field nameHash  
--- @field type  
ents.ComponentInfo.MemberInfo = {}

--- 
--- @return string ret0
function ents.ComponentInfo.MemberInfo:__tostring() end

--- 
--- @param eType enum TypeMetaData
--- @return any ret0
function ents.ComponentInfo.MemberInfo:FindTypeMetaData(eType) end

--- 
--- @param arg1 string
--- @return int ret0
function ents.ComponentInfo.MemberInfo:EnumNameToValue(arg1) end

--- 
--- @return table ret0
function ents.ComponentInfo.MemberInfo:GetEnumValues() end

--- 
--- @return enum pragma::ComponentMemberFlags ret0
function ents.ComponentInfo.MemberInfo:GetFlags() end

--- 
--- @param arg1 enum pragma::ComponentMemberFlags
--- @param arg2 bool
--- @overload fun(arg1: enum pragma::ComponentMemberFlags, arg2: bool): 
function ents.ComponentInfo.MemberInfo:SetFlag(arg1, arg2) end

--- 
--- @param arg1 enum pragma::ComponentMemberFlags
--- @return bool ret0
function ents.ComponentInfo.MemberInfo:HasFlag(arg1) end

--- 
--- @return bool ret0
function ents.ComponentInfo.MemberInfo:IsEnum() end

--- 
--- @param arg1 enum pragma::ComponentMemberFlags
function ents.ComponentInfo.MemberInfo:SetFlags(arg1) end

--- 
--- @param arg1 int
--- @return string ret0
function ents.ComponentInfo.MemberInfo:ValueToEnumName(arg1) end


--- @enum Flag
ents.ComponentInfo.MemberInfo = {
	FLAG_CONTROLLER_BIT = 2,
	FLAG_NONE = 0,
	FLAG_HIDE_IN_INTERFACE_BIT = 1,
	FLAG_OBJECT_SPACE_BIT = 8,
	FLAG_READ_ONLY_BIT = 16,
	FLAG_WORLD_SPACE_BIT = 4,
}

--- @enum TypeMetaData
ents.ComponentInfo.MemberInfo = {
	TYPE_META_DATA_COORDINATE = 1,
	TYPE_META_DATA_POSE_COMPONENT = 3,
	TYPE_META_DATA_POSE = 2,
	TYPE_META_DATA_ENABLER = 5,
	TYPE_META_DATA_OPTIONAL = 4,
	TYPE_META_DATA_PARENT = 6,
	TYPE_META_DATA_RANGE = 0,
}

--- @enum SpecializationType
ents.ComponentInfo.MemberInfo = {
	SPECIALIZATION_TYPE_DISTANCE = 2,
	SPECIALIZATION_TYPE_DIRECTORY = 6,
	SPECIALIZATION_TYPE_CUSTOM = 7,
	SPECIALIZATION_TYPE_ANGLE = 4,
	SPECIALIZATION_TYPE_COLOR = 1,
	SPECIALIZATION_TYPE_FILE = 5,
	SPECIALIZATION_TYPE_NONE = 0,
	SPECIALIZATION_TYPE_LIGHT_INTENSITY = 3,
}

--- 
--- @class ents.ComponentInfo.MemberInfo.PoseComponentTypeMetaData: ents.ComponentInfo.MemberInfo.TypeMetaData
--- @field poseProperty nil 
--- @overload fun(args: string):ents.ComponentInfo.MemberInfo.PoseComponentTypeMetaData
--- @overload fun():ents.ComponentInfo.MemberInfo.PoseComponentTypeMetaData
ents.ComponentInfo.MemberInfo.PoseComponentTypeMetaData = {}


--- 
--- @class ents.ComponentInfo.MemberInfo.CoordinateTypeMetaData: ents.ComponentInfo.MemberInfo.TypeMetaData
--- @field parentProperty nil 
--- @field space umath::CoordinateSpace 
--- @overload fun(arg1: enum umath::CoordinateSpace, arg2: string):ents.ComponentInfo.MemberInfo.CoordinateTypeMetaData
--- @overload fun():ents.ComponentInfo.MemberInfo.CoordinateTypeMetaData
ents.ComponentInfo.MemberInfo.CoordinateTypeMetaData = {}


--- 
--- @class ents.ComponentInfo.MemberInfo.PoseTypeMetaData: ents.ComponentInfo.MemberInfo.TypeMetaData
--- @field scaleProperty nil 
--- @field posProperty nil 
--- @field rotProperty nil 
--- @overload fun(arg1: string, arg2: string, arg3: string):ents.ComponentInfo.MemberInfo.PoseTypeMetaData
--- @overload fun():ents.ComponentInfo.MemberInfo.PoseTypeMetaData
ents.ComponentInfo.MemberInfo.PoseTypeMetaData = {}


--- 
--- @class ents.ComponentInfo.MemberInfo.EnablerTypeMetaData: ents.ComponentInfo.MemberInfo.TypeMetaData
--- @field targetProperty nil 
--- @overload fun(args: string):ents.ComponentInfo.MemberInfo.EnablerTypeMetaData
--- @overload fun():ents.ComponentInfo.MemberInfo.EnablerTypeMetaData
ents.ComponentInfo.MemberInfo.EnablerTypeMetaData = {}


--- 
--- @class ents.ComponentInfo.MemberInfo.OptionalTypeMetaData: ents.ComponentInfo.MemberInfo.TypeMetaData
--- @field enabledProperty nil 
--- @overload fun(args: string):ents.ComponentInfo.MemberInfo.OptionalTypeMetaData
--- @overload fun():ents.ComponentInfo.MemberInfo.OptionalTypeMetaData
ents.ComponentInfo.MemberInfo.OptionalTypeMetaData = {}


--- 
--- @class ents.ComponentInfo.MemberInfo.TypeMetaData
ents.ComponentInfo.MemberInfo.TypeMetaData = {}


--- 
--- @class ents.ComponentInfo.MemberInfo.ParentTypeMetaData: ents.ComponentInfo.MemberInfo.TypeMetaData
--- @field parentProperty nil 
--- @overload fun(args: string):ents.ComponentInfo.MemberInfo.ParentTypeMetaData
--- @overload fun():ents.ComponentInfo.MemberInfo.ParentTypeMetaData
ents.ComponentInfo.MemberInfo.ParentTypeMetaData = {}


--- 
--- @class ents.ComponentInfo.MemberInfo.RangeTypeMetaData: ents.ComponentInfo.MemberInfo.TypeMetaData
--- @field max number 
--- @field min number 
--- @field stepSize number 
--- @overload fun(arg1: number, arg2: number, arg3: number):ents.ComponentInfo.MemberInfo.RangeTypeMetaData
--- @overload fun():ents.ComponentInfo.MemberInfo.RangeTypeMetaData
ents.ComponentInfo.MemberInfo.RangeTypeMetaData = {}


--- 
--- @class ents.IteratorFilterClass: ents.IteratorFilter
--- @overload fun(arg1: string, arg2: bool, arg3: bool):ents.IteratorFilterClass
--- @overload fun(arg1: string, arg2: bool):ents.IteratorFilterClass
--- @overload fun(arg1: string):ents.IteratorFilterClass
ents.IteratorFilterClass = {}


--- 
--- @class ents.FilterNameComponent: ents.BaseFilterNameComponent
ents.FilterNameComponent = {}

--- 
--- @param arg1 ents.BaseEntityBase
--- @return bool ret0
function ents.FilterNameComponent:ShouldPass(arg1) end


--- @enum EventOnNameChanged
ents.FilterNameComponent = {
	EVENT_ON_NAME_CHANGED = 65,
}

--- 
--- @class ents.CompositeComponent: ents.EntityComponent
ents.CompositeComponent = {}

--- 
--- @param ent ents.BaseEntityBase
--- @param groupName string
--- @overload fun(ent: ents.BaseEntityBase): 
function ents.CompositeComponent:AddEntity(ent, groupName) end

--- 
--- @param groupName string
--- @param safely bool
--- @overload fun(groupName: string): 
--- @overload fun(arg1: bool): 
--- @overload fun(arg1: bool): 
function ents.CompositeComponent:ClearEntities(groupName, safely) end

--- 
--- @param groupName string
--- @return table ret0
--- @overload fun(): table
function ents.CompositeComponent:GetEntities(groupName) end

--- 
--- @return ents.CompositeComponent.CompositeGroup ret0
function ents.CompositeComponent:GetRootGroup() end


--- 
--- @class ents.CompositeComponent.CompositeGroup
ents.CompositeComponent.CompositeGroup = {}

--- 
--- @param groupName string
--- @param safely bool
--- @overload fun(groupName: string): 
--- @overload fun(arg1: bool): 
--- @overload fun(arg1: bool): 
function ents.CompositeComponent.CompositeGroup:ClearEntities(groupName, safely) end

--- 
--- @param arg1 string
--- @return ents.CompositeComponent.CompositeGroup ret0
function ents.CompositeComponent.CompositeGroup:AddChildGroup(arg1) end

--- 
--- @param name string
--- @return table ret0
function ents.CompositeComponent.CompositeGroup:GetChildGroups(name) end

--- 
--- @param ent ents.BaseEntityBase
--- @param groupName string
--- @overload fun(arg1: ents.BaseEntityBase): 
function ents.CompositeComponent.CompositeGroup:AddEntity(ent, groupName) end

--- 
--- @return table ret0
function ents.CompositeComponent.CompositeGroup:GetEntities() end

--- 
--- @param arg1 ents.BaseEntityBase
function ents.CompositeComponent.CompositeGroup:RemoveEntity(arg1) end


--- 
--- @class ents.VertexAnimatedComponent: ents.EntityComponent
ents.VertexAnimatedComponent = {}

--- 
--- @return prosper.SwapBuffer ret0
function ents.VertexAnimatedComponent:GetVertexAnimationBuffer() end

--- 
--- @param subMesh game.Model.Mesh.Sub
--- @param vertexId int
--- @return vector.Vector ret0_1
--- @return vector.Vector ret0_2
function ents.VertexAnimatedComponent:GetLocalVertexPosition(subMesh, vertexId) end

--- 
--- @param subMesh game.Model.Mesh.Sub
--- @return int ret0_1
--- @return int ret0_2
function ents.VertexAnimatedComponent:GetVertexAnimationBufferMeshOffset(subMesh) end

--- 
--- @param drawCmd prosper.CommandBuffer
function ents.VertexAnimatedComponent:UpdateVertexAnimationBuffer(drawCmd) end


--- 
--- @class ents.FlexMergeComponent: ents.EntityComponent
ents.FlexMergeComponent = {}

--- 
--- @return ents.UniversalEntityReference ret0
function ents.FlexMergeComponent:GetTarget() end

--- 
--- @param arg1 ents.UniversalEntityReference
function ents.FlexMergeComponent:SetTarget(arg1) end


--- @enum EventOnTargetChanged
ents.FlexMergeComponent = {
	EVENT_ON_TARGET_CHANGED = 28,
}

--- 
--- @class ents.StaticBvhUserComponent: ents.BaseStaticBvhUserComponent
ents.StaticBvhUserComponent = {}

--- 
--- @return bool ret0
function ents.StaticBvhUserComponent:IsActive() end


--- @enum EventOnActivationStateChanged
ents.StaticBvhUserComponent = {
	EVENT_ON_ACTIVATION_STATE_CHANGED = 198,
}

--- 
--- @class ents.EyeComponent: ents.EntityComponent
ents.EyeComponent = {}

--- 
--- @return math.Transform ret0
function ents.EyeComponent:GetEyePose() end

--- 
--- @param eyeIndex int
--- @return math.Transform ret0_1
--- @return math.Transform ret0_2
function ents.EyeComponent:CalcEyeballPose(eyeIndex) end

--- 
--- @param eyeIndex int
--- @return math.Vector2 ret0
function ents.EyeComponent:GetEyeJitter(eyeIndex) end

--- 
--- @param eyeIndex int
--- @return ents.EyeComponent.EyeballState ret0
function ents.EyeComponent:GetEyeballState(eyeIndex) end

--- 
function ents.EyeComponent:ClearViewTarget() end

--- 
--- @param eyeIndex int
--- @return number ret0
function ents.EyeComponent:GetIrisDilation(eyeIndex) end

--- 
--- @param skinMatIdx int
--- @return int ret0
function ents.EyeComponent:FindEyeballIndex(skinMatIdx) end

--- 
--- @return number ret0
function ents.EyeComponent:GetBlinkDuration() end

--- 
--- @return bool ret0
function ents.EyeComponent:IsBlinkingEnabled() end

--- 
--- @param eyeIndex int
--- @return vector.Vector ret0
function ents.EyeComponent:GetEyeShift(eyeIndex) end

--- 
--- @param eyeIndex int
--- @return number ret0
function ents.EyeComponent:GetEyeSize(eyeIndex) end

--- 
--- @param eyeballIndex int
--- @return math.Vector4 ret0_1
--- @return math.Vector4 ret0_2
function ents.EyeComponent:GetEyeballProjectionVectors(eyeballIndex) end

--- 
--- @return vector.Vector ret0
function ents.EyeComponent:GetViewTarget() end

--- 
--- @param arg1 number
function ents.EyeComponent:SetBlinkDuration(arg1) end

--- 
--- @param arg1 bool
function ents.EyeComponent:SetBlinkingEnabled(arg1) end

--- 
--- @param eyeIndex int
--- @param eyeJitter math.Vector2
function ents.EyeComponent:SetEyeJitter(eyeIndex, eyeJitter) end

--- 
--- @param eyeIndex int
--- @param eyeShift vector.Vector
function ents.EyeComponent:SetEyeShift(eyeIndex, eyeShift) end

--- 
--- @param eyeIndex int
--- @param eyeSize number
function ents.EyeComponent:SetEyeSize(eyeIndex, eyeSize) end

--- 
--- @param eyeIndex int
--- @param dilation number
function ents.EyeComponent:SetIrisDilation(eyeIndex, dilation) end

--- 
--- @param arg1 vector.Vector
function ents.EyeComponent:SetViewTarget(arg1) end


--- 
--- @class ents.EyeComponent.EyeballState
--- @field irisProjectionU  
--- @field forward  
--- @field origin  
--- @field irisProjectionV  
--- @field right  
--- @field up  
ents.EyeComponent.EyeballState = {}


--- 
--- @class ents.SoundScapeComponent: ents.BaseEnvSoundScapeComponent
ents.SoundScapeComponent = {}


--- 
--- @class ents.DebugHitboxComponent: ents.EntityComponent
ents.DebugHitboxComponent = {}

--- 
--- @param arg1 int
--- @param arg2 util.Color
function ents.DebugHitboxComponent:SetHitboxColor(arg1, arg2) end


--- 
--- @class ents.ConstraintComponent: ents.EntityComponent
ents.ConstraintComponent = {}

--- 
--- @return ents.UniversalMemberReference ret0
function ents.ConstraintComponent:GetDrivenObject() end

--- 
--- @return number ret0
function ents.ConstraintComponent:GetInfluence() end

--- 
--- @return ents.ConstraintComponent.ConstraintParticipants ret0
function ents.ConstraintComponent:GetConstraintParticipants() end

--- 
--- @return enum pragma::ConstraintComponent::CoordinateSpace ret0
function ents.ConstraintComponent:GetDrivenObjectSpace() end

--- 
--- @return enum pragma::ConstraintComponent::CoordinateSpace ret0
function ents.ConstraintComponent:GetDriverSpace() end

--- 
--- @return ents.UniversalMemberReference ret0
function ents.ConstraintComponent:GetDriver() end

--- 
--- @return int ret0
function ents.ConstraintComponent:GetOrderIndex() end

--- 
--- @param arg1 ents.UniversalMemberReference
function ents.ConstraintComponent:SetDrivenObject(arg1) end

--- 
--- @param arg1 enum pragma::ConstraintComponent::CoordinateSpace
function ents.ConstraintComponent:SetDrivenObjectSpace(arg1) end

--- 
--- @param arg1 enum pragma::ConstraintComponent::CoordinateSpace
function ents.ConstraintComponent:SetDriverSpace(arg1) end

--- 
--- @param arg1 ents.UniversalMemberReference
function ents.ConstraintComponent:SetDriver(arg1) end

--- 
--- @param arg1 number
function ents.ConstraintComponent:SetInfluence(arg1) end

--- 
--- @param arg1 int
function ents.ConstraintComponent:SetOrderIndex(arg1) end


--- @enum Event
ents.ConstraintComponent = {
	EVENT_APPLY_CONSTRAINT = 23,
	EVENT_ON_ORDER_INDEX_CHANGED = 26,
}

--- 
--- @class ents.ConstraintComponent.ConstraintParticipants
--- @field drivenObject class util::TWeakSharedHandle<class pragma::BaseEntityComponent> 
--- @field driver class util::TWeakSharedHandle<class pragma::BaseEntityComponent> 
--- @field drivenObjectPropertyIndex int 
--- @field driverPropertyIndex int 
ents.ConstraintComponent.ConstraintParticipants = {}


--- 
--- @class ents.ConstraintCopyRotationComponent: ents.EntityComponent
ents.ConstraintCopyRotationComponent = {}


--- 
--- @class ents.ConstraintLimitDistanceComponent: ents.EntityComponent
ents.ConstraintLimitDistanceComponent = {}

--- 
--- @return enum pragma::ConstraintLimitDistanceComponent::ClampRegion ret0
function ents.ConstraintLimitDistanceComponent:GetClampRegion() end

--- 
--- @return number ret0
function ents.ConstraintLimitDistanceComponent:GetDistance() end

--- 
--- @param arg1 enum pragma::ConstraintLimitDistanceComponent::ClampRegion
function ents.ConstraintLimitDistanceComponent:SetClampRegion(arg1) end

--- 
--- @param arg1 number
function ents.ConstraintLimitDistanceComponent:SetDistance(arg1) end


--- @enum ClampRegion
ents.ConstraintLimitDistanceComponent = {
	CLAMP_REGION_INSIDE = 0,
	CLAMP_REGION_ON_SURFACE = 2,
	CLAMP_REGION_OUTSIDE = 1,
}

--- 
--- @class ents.ConstraintLimitLocationComponent: ents.EntityComponent
ents.ConstraintLimitLocationComponent = {}

--- 
--- @param arg1 enum pragma::Axis
--- @return number ret0
function ents.ConstraintLimitLocationComponent:GetMaximum(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @return number ret0
function ents.ConstraintLimitLocationComponent:GetMinimum(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintLimitLocationComponent:IsMaximumEnabled(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintLimitLocationComponent:IsMinimumEnabled(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 number
function ents.ConstraintLimitLocationComponent:SetMaximum(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintLimitLocationComponent:SetMaximumEnabled(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 number
function ents.ConstraintLimitLocationComponent:SetMinimum(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintLimitLocationComponent:SetMinimumEnabled(arg1, arg2) end


--- 
--- @class ents.ConstraintLimitRotationComponent: ents.EntityComponent
ents.ConstraintLimitRotationComponent = {}

--- 
--- @param arg1 enum pragma::Axis
--- @return math.Vector2 ret0
function ents.ConstraintLimitRotationComponent:GetLimit(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintLimitRotationComponent:IsLimitEnabled(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 math.Vector2
function ents.ConstraintLimitRotationComponent:SetLimit(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintLimitRotationComponent:SetLimitEnabled(arg1, arg2) end


--- 
--- @class ents.ConstraintLimitScaleComponent: ents.EntityComponent
ents.ConstraintLimitScaleComponent = {}

--- 
--- @param arg1 enum pragma::Axis
--- @return number ret0
function ents.ConstraintLimitScaleComponent:GetMaximum(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @return number ret0
function ents.ConstraintLimitScaleComponent:GetMinimum(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintLimitScaleComponent:IsMaximumEnabled(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintLimitScaleComponent:IsMinimumEnabled(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 number
function ents.ConstraintLimitScaleComponent:SetMaximum(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintLimitScaleComponent:SetMaximumEnabled(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 number
function ents.ConstraintLimitScaleComponent:SetMinimum(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintLimitScaleComponent:SetMinimumEnabled(arg1, arg2) end


--- 
--- @class ents.ConstraintSpaceComponent: ents.EntityComponent
ents.ConstraintSpaceComponent = {}

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintSpaceComponent:IsAxisEnabled(arg1) end

--- 
--- @param angDriver math.EulerAngles
--- @param angDriven math.EulerAngles
--- @return math.EulerAngles ret0
--- @overload fun(posDriver: math.Vector, posDriven: math.Vector): math.EulerAngles
--- @overload fun(posDriver: vector.Vector, posDriven: vector.Vector): math.EulerAngles
function ents.ConstraintSpaceComponent:ApplyFilter(angDriver, angDriven) end

--- 
--- @param arg1 enum pragma::Axis
--- @return bool ret0
function ents.ConstraintSpaceComponent:IsAxisInverted(arg1) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintSpaceComponent:SetAxisEnabled(arg1, arg2) end

--- 
--- @param arg1 enum pragma::Axis
--- @param arg2 bool
function ents.ConstraintSpaceComponent:SetAxisInverted(arg1, arg2) end


--- 
--- @class ents.ConstraintLookAtComponent: ents.EntityComponent
ents.ConstraintLookAtComponent = {}

--- 
--- @return ents.UniversalMemberReference ret0
function ents.ConstraintLookAtComponent:GetUpTarget() end

--- 
--- @return enum pragma::ConstraintLookAtComponent::TrackAxis ret0
function ents.ConstraintLookAtComponent:GetTrackAxis() end

--- 
--- @param arg1 ents.UniversalMemberReference
function ents.ConstraintLookAtComponent:SetUpTarget(arg1) end

--- 
--- @param arg1 enum pragma::ConstraintLookAtComponent::TrackAxis
function ents.ConstraintLookAtComponent:SetTrackAxis(arg1) end


--- @enum TrackAxis
ents.ConstraintLookAtComponent = {
	TRACK_AXIS_X = 0,
	TRACK_AXIS_Y = 1,
	TRACK_AXIS_Z = 2,
}

--- @enum TrackAxisNeg
ents.ConstraintLookAtComponent = {
	TRACK_AXIS_NEG_X = 3,
	TRACK_AXIS_NEG_Y = 4,
	TRACK_AXIS_NEG_Z = 5,
}

--- 
--- @class ents.EnvTimescaleComponent: ents.BaseEnvTimescaleComponent
ents.EnvTimescaleComponent = {}


--- 
--- @class ents.WeaponComponent: ents.BaseWeaponComponent
ents.WeaponComponent = {}

--- 
--- @return bool ret0
function ents.WeaponComponent:GetHideWorldModelInFirstPerson() end

--- 
--- @param arg1 int
function ents.WeaponComponent:SetMaxPrimaryClipSize(arg1) end

--- 
--- @param arg1 int
function ents.WeaponComponent:AddPrimaryClip(arg1) end

--- 
--- @param arg1 bool
function ents.WeaponComponent:SetHideWorldModelInFirstPerson(arg1) end

--- 
--- @param arg1 bool
function ents.WeaponComponent:SetAutomaticSecondary(arg1) end

--- 
--- @return int ret0
function ents.WeaponComponent:GetPrimaryClipSize() end

--- 
function ents.WeaponComponent:EndSecondaryAttack() end

--- 
function ents.WeaponComponent:EndPrimaryAttack() end

--- 
--- @return class util::UInt32Property ret0
function ents.WeaponComponent:GetPrimaryAmmoTypeProperty() end

--- 
--- @return int ret0
function ents.WeaponComponent:GetMaxPrimaryClipSize() end

--- 
--- @param arg1 int
function ents.WeaponComponent:AddSecondaryClip(arg1) end

--- 
--- @overload fun(arg1: int): 
function ents.WeaponComponent:RefillSecondaryClip() end

--- 
--- @overload fun(arg1: int): 
function ents.WeaponComponent:RefillPrimaryClip() end

--- 
function ents.WeaponComponent:Attack4() end

--- 
function ents.WeaponComponent:EndAttack() end

--- 
--- @return bool ret0
function ents.WeaponComponent:IsAutomaticSecondary() end

--- 
function ents.WeaponComponent:Deploy() end

--- 
--- @return class util::UInt16Property ret0
function ents.WeaponComponent:GetMaxPrimaryClipSizeProperty() end

--- 
--- @return bool ret0
function ents.WeaponComponent:IsPrimaryClipEmpty() end

--- 
--- @return vector.Vector ret0
function ents.WeaponComponent:GetViewModelOffset() end

--- 
--- @return class util::UInt32Property ret0
function ents.WeaponComponent:GetSecondaryAmmoTypeProperty() end

--- 
--- @return int ret0
function ents.WeaponComponent:GetMaxSecondaryClipSize() end

--- 
--- @return class util::UInt16Property ret0
function ents.WeaponComponent:GetMaxSecondaryClipSizeProperty() end

--- 
--- @return int ret0
function ents.WeaponComponent:GetPrimaryAmmoType() end

--- 
--- @overload fun(bOnce: bool): 
function ents.WeaponComponent:SecondaryAttack() end

--- 
--- @return class util::UInt16Property ret0
function ents.WeaponComponent:GetPrimaryClipSizeProperty() end

--- 
--- @return int ret0
function ents.WeaponComponent:GetSecondaryAmmoType() end

--- 
function ents.WeaponComponent:Reload() end

--- 
--- @return int ret0
function ents.WeaponComponent:GetSecondaryClipSize() end

--- 
--- @return class util::UInt16Property ret0
function ents.WeaponComponent:GetSecondaryClipSizeProperty() end

--- 
--- @return number ret0
function ents.WeaponComponent:GetViewFOV() end

--- 
--- @overload fun(arg1: int): 
function ents.WeaponComponent:RemovePrimaryClip() end

--- 
--- @return ents.ViewModelComponent ret0
function ents.WeaponComponent:GetViewModel() end

--- 
--- @return bool ret0
function ents.WeaponComponent:HasAmmo() end

--- 
--- @overload fun(bOnce: bool): 
function ents.WeaponComponent:PrimaryAttack() end

--- 
--- @return bool ret0
function ents.WeaponComponent:HasPrimaryAmmo() end

--- 
--- @return bool ret0
function ents.WeaponComponent:HasSecondaryAmmo() end

--- 
--- @param arg1 int
function ents.WeaponComponent:SetMaxSecondaryClipSize(arg1) end

--- 
function ents.WeaponComponent:Holster() end

--- 
--- @return bool ret0
function ents.WeaponComponent:IsAutomaticPrimary() end

--- 
--- @return bool ret0
function ents.WeaponComponent:IsDeployed() end

--- 
--- @return bool ret0
function ents.WeaponComponent:IsInFirstPersonMode() end

--- 
--- @param arg1 int
function ents.WeaponComponent:SetPrimaryClipSize(arg1) end

--- 
--- @return bool ret0
function ents.WeaponComponent:IsSecondaryClipEmpty() end

--- 
--- @param activity enum Activity
--- @return bool ret0
--- @overload fun(arg1: enum Activity, arg2: enum pragma::FPlayAnim): bool
function ents.WeaponComponent:PlayViewActivity(activity) end

--- 
--- @overload fun(arg1: int): 
function ents.WeaponComponent:RemoveSecondaryClip() end

--- 
--- @param arg1 int
function ents.WeaponComponent:SetSecondaryClipSize(arg1) end

--- 
--- @param arg1 bool
function ents.WeaponComponent:SetAutomaticPrimary(arg1) end

--- 
--- @param arg1 number
function ents.WeaponComponent:SetNextAttack(arg1) end

--- 
--- @param arg1 number
function ents.WeaponComponent:SetNextPrimaryAttack(arg1) end

--- 
--- @param arg1 number
function ents.WeaponComponent:SetNextSecondaryAttack(arg1) end

--- 
--- @param arg1 string
--- @overload fun(arg1: int): 
function ents.WeaponComponent:SetPrimaryAmmoType(arg1) end

--- 
--- @param arg1 string
--- @overload fun(arg1: int): 
function ents.WeaponComponent:SetSecondaryAmmoType(arg1) end

--- 
--- @param arg1 number
function ents.WeaponComponent:SetViewFOV(arg1) end

--- 
--- @param arg1 string
function ents.WeaponComponent:SetViewModel(arg1) end

--- 
--- @param arg1 vector.Vector
function ents.WeaponComponent:SetViewModelOffset(arg1) end

--- 
function ents.WeaponComponent:TertiaryAttack() end


--- @enum Event
ents.WeaponComponent = {
	EVENT_ON_PRIMARY_CLIP_SIZE_CHANGED = 94,
	EVENT_ON_ATTACK4 = 90,
	EVENT_ON_PRIMARY_ATTACK = 87,
	EVENT_ON_TERTIARY_ATTACK = 89,
	EVENT_ON_SECONDARY_ATTACK = 88,
	EVENT_ON_DEPLOY = 85,
	EVENT_ON_END_PRIMARY_ATTACK = 91,
	EVENT_ON_RELOAD = 93,
	EVENT_ON_END_SECONDARY_ATTACK = 92,
	EVENT_ON_HOLSTER = 86,
	EVENT_ON_SECONDARY_CLIP_SIZE_CHANGED = 95,
}

--- 
--- @class ents.SoundDspChorusComponent: ents.BaseEnvSoundDspComponent
ents.SoundDspChorusComponent = {}


--- 
--- @class ents.ConstraintManagerComponent: ents.EntityComponent
ents.ConstraintManagerComponent = {}


--- @enum CoordinateSpace
ents.ConstraintManagerComponent = {
	COORDINATE_SPACE_LOCAL = 0,
	COORDINATE_SPACE_OBJECT = 2,
	COORDINATE_SPACE_WORLD = 1,
}

--- @enum EventApplyConstraint
ents.ConstraintManagerComponent = {
	EVENT_APPLY_CONSTRAINT = 23,
}

--- 
--- @class ents.DamageableComponent: ents.EntityComponent
ents.DamageableComponent = {}

--- 
--- @param arg1 game.DamageInfo
function ents.DamageableComponent:TakeDamage(arg1) end


--- @enum EventOnTakeDamage
ents.DamageableComponent = {
	EVENT_ON_TAKE_DAMAGE = 0,
}

--- 
--- @class ents.DebugBoxComponent: ents.BaseDebugBoxComponent
ents.DebugBoxComponent = {}

--- 
function ents.DebugBoxComponent:ClearColorOverride() end

--- 
--- @param arg1 util.Color
function ents.DebugBoxComponent:SetColorOverride(arg1) end

--- 
--- @return math.Vector ret0_1
--- @return math.Vector ret0_2
--- @overload fun(): math.Vector, math.Vector
function ents.DebugBoxComponent:GetBounds() end

--- 
--- @param arg1 math.Vector
--- @param arg2 math.Vector
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector): 
function ents.DebugBoxComponent:SetBounds(arg1, arg2) end

--- 
--- @return util.Color ret0
function ents.DebugBoxComponent:GetColorOverride() end

--- 
--- @param arg1 bool
function ents.DebugBoxComponent:SetIgnoreDepthBuffer(arg1) end

--- 
--- @return bool ret0
function ents.DebugBoxComponent:ShouldIgnoreDepthBuffer() end


--- 
--- @class ents.SoundDspComponent: ents.BaseEnvSoundDspComponent
ents.SoundDspComponent = {}


--- 
--- @class ents.IteratorFilterBox: ents.IteratorFilter
--- @overload fun(arg1: math.Vector, arg2: math.Vector):ents.IteratorFilterBox
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector):ents.IteratorFilterBox
ents.IteratorFilterBox = {}


--- 
--- @class ents.DebugConeComponent: ents.BaseDebugConeComponent
ents.DebugConeComponent = {}


--- 
--- @class ents.DebugLineComponent: ents.BaseDebugLineComponent
ents.DebugLineComponent = {}


--- 
--- @class ents.DebugPlaneComponent: ents.BaseDebugPlaneComponent
ents.DebugPlaneComponent = {}


--- 
--- @class ents.FieldAngleComponent: ents.BaseFieldAngleComponent
ents.FieldAngleComponent = {}

--- 
--- @return number ret0
function ents.FieldAngleComponent:GetFieldAngle() end

--- 
--- @return class util::FloatProperty ret0
function ents.FieldAngleComponent:GetFieldAngleProperty() end

--- 
--- @param arg1 number
function ents.FieldAngleComponent:SetFieldAngle(arg1) end


--- @enum EventOnFieldAngleChanged
ents.FieldAngleComponent = {
	EVENT_ON_FIELD_ANGLE_CHANGED = 88,
}

--- 
--- @class ents.DebugPointComponent: ents.BaseDebugPointComponent
ents.DebugPointComponent = {}


--- 
--- @class ents.DebugSphereComponent: ents.BaseDebugSphereComponent
ents.DebugSphereComponent = {}


--- 
--- @class ents.Entity: ents.BaseEntityBase
ents.Entity = {}

--- 
--- @param arg1 ents.Entity
function ents.Entity:AddChild(arg1) end

--- 
--- @param arg1 ents.SceneComponent
--- @return bool ret0
function ents.Entity:IsInScene(arg1) end

--- 
--- @param arg1 string
--- @return ents.EntityComponent ret0
function ents.Entity:AddNetworkedComponent(arg1) end

--- 
--- @return bool ret0
function ents.Entity:IsSynchronized() end

--- 
--- @param arg1 ents.SceneComponent
function ents.Entity:AddToScene(arg1) end

--- 
--- @param protocol enum nwm::Protocol
--- @param eventId int
--- @overload fun(protocol: enum nwm::Protocol, eventId: int, packet: net.Packet): 
function ents.Entity:BroadcastNetEvent(protocol, eventId) end

--- 
--- @return int ret0
function ents.Entity:GetSceneFlags() end

--- 
--- @return int ret0
function ents.Entity:GetClientIndex() end

--- 
--- @return bool ret0
function ents.Entity:IsClientsideOnly() end

--- 
--- @return bool ret0
function ents.Entity:IsShared() end

--- 
--- @param arg1 bool
function ents.Entity:SetSynchronized(arg1) end

--- 
function ents.Entity:RemoveFromAllScenes() end

--- 
--- @param arg1 ents.SceneComponent
function ents.Entity:RemoveFromScene(arg1) end

--- 
--- @param protocol enum nwm::Protocol
--- @param eventId int
--- @param rp net.RecipientFilter
--- @overload fun(protocol: enum nwm::Protocol, eventId: int, packet: net.Packet, rp: net.RecipientFilter): 
--- @overload fun(protocol: enum nwm::Protocol, eventId: int): 
--- @overload fun(protocol: enum nwm::Protocol, eventId: int, packet: net.Packet): 
function ents.Entity:SendNetEvent(protocol, eventId, rp) end

--- 
--- @param arg1 bool
function ents.Entity:SetShared(arg1) end

--- 
--- @param arg1 bool
function ents.Entity:SetSnapshotDirty(arg1) end

--- 
--- @param entOther ents.Entity
function ents.Entity:SyncScenes(entOther) end


--- 
--- @class ents.DebugTextComponent: ents.BaseDebugTextComponent
ents.DebugTextComponent = {}

--- 
--- @param arg1 string
function ents.DebugTextComponent:SetText(arg1) end


--- 
--- @class ents.PlayerSpawnComponent: ents.EntityComponent
ents.PlayerSpawnComponent = {}


--- 
--- @class ents.EnvSoundProbeComponent: ents.EntityComponent
ents.EnvSoundProbeComponent = {}


--- 
--- @class ents.ExplosionComponent: ents.BaseEnvExplosionComponent
ents.ExplosionComponent = {}


--- 
--- @class ents.PropPhysicsComponent: ents.BasePropPhysicsComponent
ents.PropPhysicsComponent = {}


--- 
--- @class ents.FireComponent: ents.BaseEnvFireComponent
ents.FireComponent = {}


--- 
--- @class ents.FilterClassComponent: ents.BaseFilterClassComponent
ents.FilterClassComponent = {}

--- 
--- @param arg1 ents.BaseEntityBase
--- @return bool ret0
function ents.FilterClassComponent:ShouldPass(arg1) end


--- 
--- @class ents.SceneComponent: ents.EntityComponent
ents.SceneComponent = {}

--- 
function ents.SceneComponent:ClearWorldEnvironment() end

--- 
--- @return class util::TWeakSharedHandle<class pragma::CCameraComponent> ret0
function ents.SceneComponent:GetActiveCamera() end

--- 
--- @return enum pragma::rendering::RenderMask ret0
function ents.SceneComponent:GetInclusionRenderMask() end

--- 
--- @return prosper.DescriptorSet ret0
--- @overload fun(arg1: enum prosper::PipelineBindPoint): prosper.DescriptorSet
function ents.SceneComponent:GetCameraDescriptorSet() end

--- 
--- @return enum pragma::rendering::RenderMask ret0
function ents.SceneComponent:GetExclusionRenderMask() end

--- 
--- @return int ret0
function ents.SceneComponent:GetIndex() end

--- 
--- @return enum pragma::SceneDebugMode ret0
function ents.SceneComponent:GetDebugMode() end

--- 
--- @return int ret0
function ents.SceneComponent:GetHeight() end

--- 
--- @return math.Vector4 ret0
function ents.SceneComponent:GetParticleSystemColorFactor() end

--- 
--- @param renderMode enum pragma::rendering::SceneRenderPass
--- @param translucent bool
--- @return game.RenderQueue ret0
function ents.SceneComponent:GetRenderQueue(renderMode, translucent) end

--- 
--- @return ents.RendererComponent ret0
function ents.SceneComponent:GetRenderer() end

--- 
--- @return int ret0
function ents.SceneComponent:GetSceneIndex() end

--- 
--- @return int ret0_1
--- @return int ret0_2
function ents.SceneComponent:GetSize() end

--- 
--- @return class prosper::IDescriptorSet ret0
function ents.SceneComponent:GetViewCameraDescriptorSet() end

--- 
--- @return int ret0
function ents.SceneComponent:GetWidth() end

--- 
--- @return game.WorldEnvironment ret0
function ents.SceneComponent:GetWorldEnvironment() end

--- 
--- @param arg1 int
--- @param arg2 int
function ents.SceneComponent:InitializeRenderTarget(arg1, arg2) end

--- 
--- @param arg1 ents.SceneComponent
--- @param arg2 bool
--- @overload fun(arg1: ents.SceneComponent, arg2: bool): 
function ents.SceneComponent:Link(arg1, arg2) end

--- 
--- @param method int
function ents.SceneComponent:SetOcclusionCullingMethod(method) end

--- 
--- @param arg1 int
--- @param arg2 int
--- @param arg3 bool
function ents.SceneComponent:Resize(arg1, arg2, arg3) end

--- 
--- @overload fun(arg1: ents.CameraComponent): 
function ents.SceneComponent:SetActiveCamera() end

--- 
--- @param arg1 enum pragma::SceneDebugMode
function ents.SceneComponent:SetDebugMode(arg1) end

--- 
--- @param arg1 enum pragma::rendering::RenderMask
function ents.SceneComponent:SetExclusionRenderMask(arg1) end

--- 
--- @param arg1 enum pragma::rendering::RenderMask
function ents.SceneComponent:SetInclusionRenderMask(arg1) end

--- 
--- @param arg1 math.Vector4
function ents.SceneComponent:SetParticleSystemColorFactor(arg1) end

--- 
--- @param arg1 ents.RendererComponent
function ents.SceneComponent:SetRenderer(arg1) end

--- 
--- @param arg1 game.WorldEnvironment
function ents.SceneComponent:SetWorldEnvironment(arg1) end

--- 
--- @param hCommandBuffer prosper.CommandBuffer
function ents.SceneComponent:UpdateBuffers(hCommandBuffer) end


--- @enum RenderTargetTexture
ents.SceneComponent = {
	RENDER_TARGET_TEXTURE_BLOOM = 1,
	RENDER_TARGET_TEXTURE_COLOR = 0,
	RENDER_TARGET_TEXTURE_DEPTH = 2,
}

--- @enum OcclusionCullingMethod
ents.SceneComponent = {
	OCCLUSION_CULLING_METHOD_BRUTE_FORCE = 0,
	OCCLUSION_CULLING_METHOD_CHC_PLUSPLUS = 1,
	OCCLUSION_CULLING_METHOD_BSP = 2,
	OCCLUSION_CULLING_METHOD_INERT = 4,
	OCCLUSION_CULLING_METHOD_OCTREE = 3,
}

--- @enum DebugMode
ents.SceneComponent = {
	DEBUG_MODE_ALBEDO = 2,
	DEBUG_MODE_REFLECTANCE = 8,
	DEBUG_MODE_AMBIENT_OCCLUSION = 1,
	DEBUG_MODE_DIFFUSE_LIGHTING = 5,
	DEBUG_MODE_NORMAL = 6,
	DEBUG_MODE_EMISSION = 11,
	DEBUG_MODE_NORMAL_MAP = 7,
	DEBUG_MODE_NONE = 0,
	DEBUG_MODE_METALNESS = 3,
	DEBUG_MODE_ROUGHNESS = 4,
}

--- @enum DebugModeIbl
ents.SceneComponent = {
	DEBUG_MODE_IBL_IRRADIANCE = 10,
	DEBUG_MODE_IBL_PREFILTER = 9,
}

--- @enum Event
ents.SceneComponent = {
	EVENT_ON_ACTIVE_CAMERA_CHANGED = 175,
	EVENT_ON_RENDERER_CHANGED = 177,
}

--- @enum EventOnActiveCameraChanged
ents.SceneComponent = {
	EVENT_ON_ACTIVE_CAMERA_CHANGED = 167,
}

--- 
--- @class ents.SceneComponent.CreateInfo
--- @field sampleCount  
--- @overload fun():ents.SceneComponent.CreateInfo
ents.SceneComponent.CreateInfo = {}


--- 
--- @class ents.PointConstraintSliderComponent: ents.BasePointConstraintSliderComponent
ents.PointConstraintSliderComponent = {}


--- 
--- @class ents.FlashlightComponent: ents.BaseFlashlightComponent
ents.FlashlightComponent = {}


--- 
--- @class ents.FlexComponent: ents.BaseFlexComponent
ents.FlexComponent = {}

--- 
--- @param id string
--- @return number ret0
--- @overload fun(id: int): number
function ents.FlexComponent:GetFlexAnimationCycle(id) end

--- 
--- @param flexId int
function ents.FlexComponent:GetFlexWeight(flexId) end

--- 
--- @param flexController string
--- @return number ret0
--- @overload fun(flexId: int): number
function ents.FlexComponent:GetFlexController(flexController) end

--- 
--- @param flexId int
--- @return number ret0
function ents.FlexComponent:CalcFlexValue(flexId) end

--- 
--- @param flexId int
function ents.FlexComponent:ClearFlexWeightOverride(flexId) end

--- 
--- @return int ret0
function ents.FlexComponent:GetFlexAnimationCount() end

--- 
--- @return any ret0
function ents.FlexComponent:GetFlexAnimations() end

--- 
function ents.FlexComponent:GetFlexControllerScale() end

--- 
function ents.FlexComponent:GetFlexWeights() end

--- 
--- @param flexControllerId int
function ents.FlexComponent:GetScaledFlexController(flexControllerId) end

--- 
--- @param flexId int
function ents.FlexComponent:HasFlexWeightOverride(flexId) end

--- 
--- @param id string
--- @overload fun(id: string, loop: bool): 
--- @overload fun(id: string, loop: bool, reset: bool): 
--- @overload fun(id: int): 
--- @overload fun(id: int, loop: bool): 
--- @overload fun(id: int, loop: bool, reset: bool): 
function ents.FlexComponent:PlayFlexAnimation(id) end

--- 
--- @param id string
--- @param cycle number
--- @overload fun(id: int, cycle: number): 
function ents.FlexComponent:SetFlexAnimationCycle(id, cycle) end

--- 
--- @param id string
--- @param playbackRate number
--- @overload fun(id: int, playbackRate: number): 
function ents.FlexComponent:SetFlexAnimationPlaybackRate(id, playbackRate) end

--- 
--- @param flexName string
--- @param value number
--- @overload fun(flexName: string, value: number, duration: number): 
--- @overload fun(flexName: string, value: number, duration: number, clampToLimits: bool): 
--- @overload fun(flexId: int, value: number): 
--- @overload fun(flexId: int, value: number, duration: number): 
--- @overload fun(flexId: int, value: number, duration: number, clampToLimits: bool): 
function ents.FlexComponent:SetFlexController(flexName, value) end

--- 
--- @param scale number
function ents.FlexComponent:SetFlexControllerScale(scale) end

--- 
--- @param flexId int
--- @param weight number
function ents.FlexComponent:SetFlexWeight(flexId, weight) end

--- 
--- @param flexId int
--- @param weight number
function ents.FlexComponent:SetFlexWeightOverride(flexId, weight) end

--- 
--- @param id string
--- @overload fun(id: int): 
function ents.FlexComponent:StopFlexAnimation(id) end


--- @enum EventOnFlexControllerChanged
ents.FlexComponent = {
	EVENT_ON_FLEX_CONTROLLER_CHANGED = 193,
}

--- @enum Event
ents.FlexComponent = {
	EVENT_ON_FLEX_CONTROLLERS_UPDATED = 194,
	EVENT_ON_FLEX_CONTROLLER_CHANGED = 193,
}

--- @enum EventOnFlexControllersUpdated
ents.FlexComponent = {
	EVENT_ON_FLEX_CONTROLLERS_UPDATED = 170,
}

--- 
--- @class ents.FuncPhysicsComponent: ents.BaseFuncPhysicsComponent
ents.FuncPhysicsComponent = {}


--- 
--- @class ents.FuncPortalComponent: ents.BaseFuncPortalComponent
ents.FuncPortalComponent = {}


--- 
--- @class ents.GamemodeComponent: ents.BaseGamemodeComponent
ents.GamemodeComponent = {}

--- 
--- @return string ret0
function ents.GamemodeComponent:GetAuthor() end

--- 
--- @return util.Version ret0
function ents.GamemodeComponent:GetGamemodeVersion() end

--- 
--- @return string ret0
function ents.GamemodeComponent:GetName() end

--- 
--- @return string ret0
function ents.GamemodeComponent:GetIdentifier() end


--- @enum Event
ents.GamemodeComponent = {
	EVENT_ON_PLAYER_JOINED = 139,
	EVENT_ON_GAME_INITIALIZED = 140,
	EVENT_ON_GAME_READY = 142,
	EVENT_ON_MAP_INITIALIZED = 141,
	EVENT_ON_PLAYER_DEATH = 135,
	EVENT_ON_PLAYER_SPAWNED = 136,
	EVENT_ON_PLAYER_DROPPED = 137,
	EVENT_ON_PLAYER_READY = 138,
}

--- 
--- @class ents.FuncSoftPhysicsComponent: ents.BaseFuncSoftPhysicsComponent
ents.FuncSoftPhysicsComponent = {}


--- 
--- @class ents.GameComponent: ents.BaseGameComponent
ents.GameComponent = {}


--- 
--- @class ents.GenericComponent: ents.BaseGenericComponent
ents.GenericComponent = {}


--- @enum Event
ents.GenericComponent = {
	EVENT_ON_COMPONENT_ADDED = 134,
	EVENT_ON_COMPONENT_REMOVED = 135,
	EVENT_ON_MEMBERS_CHANGED = 136,
}

--- 
--- @class ents.GlobalComponent: ents.EntityComponent
ents.GlobalComponent = {}

--- 
--- @return string ret0
function ents.GlobalComponent:GetGlobalName() end

--- 
--- @param arg1 string
function ents.GlobalComponent:SetGlobalName(arg1) end


--- 
--- @class ents.LightDirectionalComponent: ents.BaseEnvLightDirectionalComponent
ents.LightDirectionalComponent = {}

--- 
--- @return util.Color ret0
function ents.LightDirectionalComponent:GetAmbientColor() end

--- 
--- @return class util::ColorProperty ret0
function ents.LightDirectionalComponent:GetAmbientColorProperty() end

--- 
--- @param arg1 util.Color
function ents.LightDirectionalComponent:SetAmbientColor(arg1) end


--- 
--- @class ents.GravityComponent: ents.EntityComponent
ents.GravityComponent = {}

--- 
--- @return bool ret0
function ents.GravityComponent:HasGravityDirectionOverride() end

--- 
--- @param origin math.Vector
--- @param destPos math.Vector
--- @param fireAngle number
--- @param maxSpeed number
--- @param spread number
--- @param maxPitch number
--- @param maxYaw number
--- @overload fun(origin: vector.Vector, destPos: vector.Vector, fireAngle: number, maxSpeed: number, spread: number, maxPitch: number, maxYaw: number): 
function ents.GravityComponent:CalcBallisticVelocity(origin, destPos, fireAngle, maxSpeed, spread, maxPitch, maxYaw) end

--- 
--- @return number ret0
function ents.GravityComponent:GetGravity() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.GravityComponent:GetGravityDirection() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.GravityComponent:GetGravityForce() end

--- 
--- @return bool ret0
function ents.GravityComponent:HasGravityForceOverride() end

--- 
--- @param arg1 number
function ents.GravityComponent:SetGravityScale(arg1) end

--- 
--- @overload fun(arg1: number): 
--- @overload fun(arg1: math.Vector): 
--- @overload fun(arg1: math.Vector, arg2: number): 
--- @overload fun(arg1: vector.Vector): 
--- @overload fun(arg1: vector.Vector, arg2: number): 
function ents.GravityComponent:SetGravityOverride() end


--- 
--- @class ents.OriginComponent: ents.EntityComponent
ents.OriginComponent = {}

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.OriginComponent:GetOriginPos() end

--- 
--- @return math.Transform ret0
function ents.OriginComponent:GetOriginPose() end

--- 
--- @return math.Quaternion ret0
function ents.OriginComponent:GetOriginRot() end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.OriginComponent:SetOriginPos(arg1) end

--- 
--- @param arg1 math.Transform
function ents.OriginComponent:SetOriginPose(arg1) end

--- 
--- @param arg1 math.Quaternion
function ents.OriginComponent:SetOriginRot(arg1) end


--- @enum EventOnOriginChanged
ents.OriginComponent = {
	EVENT_ON_ORIGIN_CHANGED = 22,
}

--- 
--- @class ents.HealthComponent: ents.BaseHealthComponent
ents.HealthComponent = {}

--- 
function ents.HealthComponent:GetMaxHealth() end

--- 
function ents.HealthComponent:GetHealth() end

--- 
--- @return class util::UInt16Property ret0
function ents.HealthComponent:GetMaxHealthProperty() end

--- 
--- @return class util::UInt16Property ret0
function ents.HealthComponent:GetHealthProperty() end

--- 
--- @param maxHealth int
function ents.HealthComponent:SetMaxHealth(maxHealth) end

--- 
--- @param health int
function ents.HealthComponent:SetHealth(health) end


--- @enum Event
ents.HealthComponent = {
	EVENT_ON_TAKEN_DAMAGE = 63,
	EVENT_ON_HEALTH_CHANGED = 64,
}

--- 
--- @class ents.IteratorFilterComponent: ents.IteratorFilter
--- @overload fun(arg2: string):ents.IteratorFilterComponent
--- @overload fun(arg1: int):ents.IteratorFilterComponent
--- @overload fun(arg1: any):ents.IteratorFilterComponent
ents.IteratorFilterComponent = {}


--- 
--- @class ents.HitboxBvhComponent: ents.EntityComponent
ents.HitboxBvhComponent = {}

--- 
--- @param arg1 int
--- @param arg2 number
function ents.HitboxBvhComponent:DebugDrawHitboxMeshes(arg1, arg2) end

--- 
--- @param origin vector.Vector
--- @param dir vector.Vector
--- @param minDist number
--- @param maxDist number
--- @param debugDrawInfo ents.HitboxBvhComponent.DebugDrawInfo
--- @return number ret0
function ents.HitboxBvhComponent:IntersectionTest(origin, dir, minDist, maxDist, debugDrawInfo) end


--- 
--- @class ents.HitboxBvhComponent.DebugDrawInfo
--- @field duration number 
--- @field pose  
--- @field flags pragma::bvh::DebugDrawInfo::Flags 
--- @overload fun():ents.HitboxBvhComponent.DebugDrawInfo
ents.HitboxBvhComponent.DebugDrawInfo = {}


--- @enum FlagDrawHit
ents.HitboxBvhComponent.DebugDrawInfo = {
	FLAG_DRAW_HIT_LEAVES_BIT = 4,
	FLAG_DRAW_HIT_MESHES_BIT = 16,
}

--- @enum FlagDrawTraversed
ents.HitboxBvhComponent.DebugDrawInfo = {
	FLAG_DRAW_TRAVERSED_LEAVES_BIT = 2,
	FLAG_DRAW_TRAVERSED_MESHES_BIT = 8,
	FLAG_DRAW_TRAVERSED_NODES_BIT = 1,
}

--- @enum FlagNone
ents.HitboxBvhComponent.DebugDrawInfo = {
	FLAG_NONE = 0,
}

--- 
--- @class ents.IKComponent: ents.EntityComponent
ents.IKComponent = {}

--- 
--- @param arg1 int
--- @param arg2 int
--- @return math.Vector ret0
--- @overload fun(arg1: int, arg2: int): math.Vector
function ents.IKComponent:GetIKEffectorPos(arg1, arg2) end

--- 
--- @param arg1 int
--- @return bool ret0
function ents.IKComponent:IsIKControllerEnabled(arg1) end

--- 
--- @param arg1 int
--- @param arg2 bool
function ents.IKComponent:SetIKControllerEnabled(arg1, arg2) end

--- 
--- @param arg1 int
--- @param arg2 int
--- @param arg3 math.Vector
--- @overload fun(arg1: int, arg2: int, arg3: vector.Vector): 
function ents.IKComponent:SetIKEffectorPos(arg1, arg2, arg3) end


--- 
--- @class ents.IOComponent: ents.BaseIOComponent
ents.IOComponent = {}

--- 
--- @param arg1 string
--- @param arg2 ents.BaseEntityBase
--- @param arg3 enum pragma::BaseIOComponent::IoFlags
--- @overload fun(name: string, ent: ents.BaseEntityBase): 
function ents.IOComponent:FireOutput(arg1, arg2, arg3) end

--- 
--- @param input string
--- @overload fun(input: string, data: string): 
--- @overload fun(input: string, activator: ents.BaseEntityBase, data: string): 
--- @overload fun(input: string, activator: ents.BaseEntityBase, caller: ents.BaseEntityBase, data: string): 
function ents.IOComponent:Input(input) end

--- 
--- @param name string
--- @param info string
--- @overload fun(name: string, entities: string, input: string, param: string): 
--- @overload fun(name: string, entities: string, input: string, param: string, delay: number): 
--- @overload fun(name: string, entities: string, input: string, param: string, delay: number, times: int): 
function ents.IOComponent:StoreOutput(name, info) end


--- @enum EventHandleInput
ents.IOComponent = {
	EVENT_HANDLE_INPUT = 132,
}

--- @enum IoFlag
ents.IOComponent = {
	IO_FLAG_BIT_FORCE_DELAYED_FIRE = 1,
	IO_FLAG_NONE = 0,
}

--- 
--- @class ents.TimeScaleComponent: ents.BaseTimeScaleComponent
ents.TimeScaleComponent = {}

--- 
--- @return number ret0
function ents.TimeScaleComponent:GetEffectiveTimeScale() end

--- 
--- @return number ret0
function ents.TimeScaleComponent:GetTimeScale() end

--- 
--- @return number ret0
function ents.TimeScaleComponent:SetTimeScale() end


--- 
--- @class ents.RendererPpVolumetricComponent: ents.EntityComponent
ents.RendererPpVolumetricComponent = {}


--- 
--- @class ents.IkSolverComponent: ents.EntityComponent
ents.IkSolverComponent = {}

--- 
--- @param arg1 struct pragma::IkSolverComponent::ConstraintInfo
--- @param arg2 math.EulerAngles
--- @param arg3 math.EulerAngles
--- @param arg4 enum pragma::SignedAxis
function ents.IkSolverComponent:AddBallSocketConstraint(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 string
--- @param arg2 int
--- @return bool ret0
function ents.IkSolverComponent:AddIkSolverByChain(arg1, arg2) end

--- 
--- @param arg1 int
--- @param arg2 number
--- @param arg3 number
function ents.IkSolverComponent:AddDragControl(arg1, arg2, arg3) end

--- 
--- @param arg1 struct pragma::IkSolverComponent::ConstraintInfo
function ents.IkSolverComponent:AddFixedConstraint(arg1) end

--- 
--- @param arg1 int
--- @return ik.Bone ret0
function ents.IkSolverComponent:AddSkeletalBone(arg1) end

--- 
--- @param arg1 struct pragma::IkSolverComponent::ConstraintInfo
--- @param arg2 number
--- @param arg3 number
--- @param arg4 math.Quaternion
--- @param arg5 enum pragma::SignedAxis
function ents.IkSolverComponent:AddHingeConstraint(arg1, arg2, arg3, arg4, arg5) end

--- 
--- @param arg1 util.IkRigConfig
--- @return bool ret0
function ents.IkSolverComponent:AddIkSolverByRig(arg1) end

--- 
--- @param arg1 int
--- @param arg2 number
--- @param arg3 number
function ents.IkSolverComponent:AddStateControl(arg1, arg2, arg3) end

--- 
--- @param arg1 math.Transform
--- @param arg2 int
--- @return math.Transform ret0
function ents.IkSolverComponent:IkPoseToBonePose(arg1, arg2) end

--- 
--- @param arg1 math.ScaledTransform
--- @param arg2 int
--- @return math.ScaledTransform ret0
function ents.IkSolverComponent:BonePoseToIkPose(arg1, arg2) end

--- 
--- @param arg1 int
--- @return math.Transform ret0
function ents.IkSolverComponent:GetAnchorPoseToBonePose(arg1) end

--- 
--- @param arg1 int
--- @return ik.Bone ret0
function ents.IkSolverComponent:GetBone(arg1) end

--- 
--- @return int ret0
function ents.IkSolverComponent:GetBoneCount() end

--- 
--- @param arg1 bool
function ents.IkSolverComponent:SetSimulationDisabled(arg1) end

--- 
--- @param arg1 int
--- @return ik.Control ret0
function ents.IkSolverComponent:GetControl(arg1) end

--- 
--- @return udm.Property ret0
function ents.IkSolverComponent:GetIkRig() end

--- 
--- @param arg1 string
--- @return int ret0
function ents.IkSolverComponent:GetControlBoneId(arg1) end

--- 
--- @param arg1 int
--- @return int ret0
function ents.IkSolverComponent:GetIkBoneId(arg1) end

--- 
--- @param arg1 bool
function ents.IkSolverComponent:SetSkeletalUpdateDisabled(arg1) end

--- 
--- @return string ret0
function ents.IkSolverComponent:GetIkRigFile() end

--- 
--- @return ik.Solver ret0
function ents.IkSolverComponent:GetIkSolver() end

--- 
--- @param arg1 int
--- @return int ret0
function ents.IkSolverComponent:GetSkeletalBoneId(arg1) end

--- 
--- @return bool ret0
function ents.IkSolverComponent:IsDirty() end

--- 
function ents.IkSolverComponent:ResetIkRig() end

--- 
--- @return bool ret0
function ents.IkSolverComponent:IsSimulationDisabled() end

--- 
--- @return bool ret0
function ents.IkSolverComponent:IsSkeletalUpdateDisabled() end

--- 
function ents.IkSolverComponent:ResetIkBones() end

--- 
--- @param arg1 int
--- @param arg2 bool
function ents.IkSolverComponent:SetBoneLocked(arg1, arg2) end

--- 
function ents.IkSolverComponent:SetDirty() end

--- 
--- @param arg1 string
function ents.IkSolverComponent:SetIkRigFile(arg1) end

--- 
--- @param arg1 bool
function ents.IkSolverComponent:SetResetSolver(arg1) end

--- 
--- @return bool ret0
function ents.IkSolverComponent:ShouldResetSolver() end

--- 
function ents.IkSolverComponent:Solve() end


--- @enum Event
ents.IkSolverComponent = {
	EVENT_INITIALIZE_SOLVER = 248,
	EVENT_ON_CONTROL_STRENGTH_CHANGED = 250,
	EVENT_ON_IK_UPDATED = 249,
}

--- 
--- @class ents.InfoLandmarkComponent: ents.BaseInfoLandmarkComponent
ents.InfoLandmarkComponent = {}


--- 
--- @class ents.IntersectionHandlerComponent: ents.EntityComponent
ents.IntersectionHandlerComponent = {}

--- 
--- @param planes table
--- @param flags enum BvhIntersectionFlags
--- @return unknown ret0
--- @overload fun(arg1: table): unknown
function ents.IntersectionHandlerComponent:IntersectionTestKDop(planes, flags) end

--- 
--- @param origin math.Vector
--- @param dir math.Vector
--- @param minDist number
--- @param maxDist number
--- @return ents.IntersectionHandlerComponent.HitInfo ret0
--- @overload fun(origin: vector.Vector, dir: vector.Vector, minDist: number, maxDist: number): ents.IntersectionHandlerComponent.HitInfo
function ents.IntersectionHandlerComponent:IntersectionTest(origin, dir, minDist, maxDist) end

--- 
--- @param origin math.Vector
--- @param dir math.Vector
--- @param minDist number
--- @param maxDist number
--- @overload fun(origin: vector.Vector, dir: vector.Vector, minDist: number, maxDist: number): 
function ents.IntersectionHandlerComponent:IntersectionTest2(origin, dir, minDist, maxDist) end

--- 
function ents.IntersectionHandlerComponent:IntersectionTest3() end

--- 
--- @param min math.Vector
--- @param max math.Vector
--- @param flags enum BvhIntersectionFlags
--- @return unknown ret0
--- @overload fun(arg1: math.Vector, arg2: math.Vector): unknown
--- @overload fun(min: vector.Vector, max: vector.Vector, flags: enum BvhIntersectionFlags): unknown
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector): unknown
function ents.IntersectionHandlerComponent:IntersectionTestAabb(min, max, flags) end


--- @enum IntersectionFlagBitReturn
ents.IntersectionHandlerComponent = {
	INTERSECTION_FLAG_BIT_RETURN_MESHES = 2,
	INTERSECTION_FLAG_BIT_RETURN_PRIMITIVES = 1,
}

--- @enum IntersectionFlagNone
ents.IntersectionHandlerComponent = {
	INTERSECTION_FLAG_NONE = 0,
}

--- 
--- @class ents.IntersectionHandlerComponent.HitInfo
--- @field primitiveIndex int 
--- @field entity nil 
--- @field distance number 
--- @field mesh  
--- @field t number 
--- @field u number 
--- @field v number 
ents.IntersectionHandlerComponent.HitInfo = {}

--- 
--- @return math.Vector2 ret0
function ents.IntersectionHandlerComponent.HitInfo:CalcHitUv() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.IntersectionHandlerComponent.HitInfo:CalcHitNormal() end


--- 
--- @class ents.IteratorFilter
ents.IteratorFilter = {}


--- 
--- @class ents.IteratorFilterCone: ents.IteratorFilter
--- @overload fun(arg1: math.Vector, arg2: math.Vector, arg3: number, arg4: number):ents.IteratorFilterCone
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector, arg3: number, arg4: number):ents.IteratorFilterCone
ents.IteratorFilterCone = {}


--- 
--- @class ents.IteratorFilterEntity: ents.IteratorFilter
--- @overload fun(arg1: string):ents.IteratorFilterEntity
ents.IteratorFilterEntity = {}


--- 
--- @class ents.QuakeComponent: ents.BaseEnvQuakeComponent
ents.QuakeComponent = {}


--- 
--- @class ents.IteratorFilterFunction: ents.IteratorFilter
--- @overload fun(arg1: unknown):ents.IteratorFilterFunction
ents.IteratorFilterFunction = {}


--- 
--- @class ents.SkyboxComponent: ents.BaseSkyboxComponent
ents.SkyboxComponent = {}

--- 
--- @return math.EulerAngles ret0
function ents.SkyboxComponent:GetSkyAngles() end

--- 
--- @param arg1 math.EulerAngles
function ents.SkyboxComponent:SetSkyAngles(arg1) end

--- 
--- @param arg1 game.Material
function ents.SkyboxComponent:SetSkyMaterial(arg1) end


--- 
--- @class ents.IteratorFilterModel: ents.IteratorFilter
--- @overload fun(arg1: string):ents.IteratorFilterModel
ents.IteratorFilterModel = {}


--- 
--- @class ents.IteratorFilterName: ents.IteratorFilter
--- @overload fun(arg1: string, arg2: bool, arg3: bool):ents.IteratorFilterName
--- @overload fun(arg1: string, arg2: bool):ents.IteratorFilterName
--- @overload fun(arg1: string):ents.IteratorFilterName
ents.IteratorFilterName = {}


--- 
--- @class ents.SoundDspEchoComponent: ents.BaseEnvSoundDspComponent
ents.SoundDspEchoComponent = {}


--- 
--- @class ents.IteratorFilterNameOrClass: ents.IteratorFilter
--- @overload fun(arg1: string, arg2: bool, arg3: bool):ents.IteratorFilterNameOrClass
--- @overload fun(arg1: string, arg2: bool):ents.IteratorFilterNameOrClass
--- @overload fun(arg1: string):ents.IteratorFilterNameOrClass
ents.IteratorFilterNameOrClass = {}


--- 
--- @class ents.IteratorFilterSphere: ents.IteratorFilter
--- @overload fun(arg1: math.Vector, arg2: number):ents.IteratorFilterSphere
--- @overload fun(arg1: vector.Vector, arg2: number):ents.IteratorFilterSphere
ents.IteratorFilterSphere = {}


--- 
--- @class ents.IteratorFilterUuid: ents.IteratorFilter
--- @overload fun(arg1: string):ents.IteratorFilterUuid
ents.IteratorFilterUuid = {}


--- 
--- @class ents.KinematicComponent: ents.BaseFuncKinematicComponent
ents.KinematicComponent = {}


--- 
--- @class ents.LightComponent: ents.BaseEnvLightComponent
ents.LightComponent = {}

--- 
--- @return number ret0
function ents.LightComponent:GetLightIntensityCandela() end

--- 
--- @return number ret0
function ents.LightComponent:GetFalloffExponent() end

--- 
--- @return bool ret0
function ents.LightComponent:AreMorphTargetsInShadowsEnabled() end

--- 
--- @return enum pragma::BaseEnvLightComponent::LightIntensityType ret0
function ents.LightComponent:GetLightIntensityType() end

--- 
--- @return number ret0
function ents.LightComponent:GetLightIntensity() end

--- 
--- @param arg1 math.Vector
--- @return math.Vector ret0
--- @overload fun(arg1: vector.Vector): math.Vector
function ents.LightComponent:CalcLightDirectionToPoint(arg1) end

--- 
--- @param arg1 math.Vector
--- @return number ret0
--- @overload fun(arg1: vector.Vector): number
function ents.LightComponent:CalcLightIntensityAtPoint(arg1) end

--- 
--- @return enum pragma::BaseEnvLightComponent::ShadowType ret0
function ents.LightComponent:GetShadowType() end

--- 
--- @return bool ret0
function ents.LightComponent:IsBaked() end

--- 
function ents.LightComponent:UpdateBuffers() end

--- 
--- @param b bool
function ents.LightComponent:SetAddToGameScene(b) end

--- 
--- @param arg1 bool
function ents.LightComponent:SetMorphTargetsInShadowsEnabled(arg1) end

--- 
--- @param arg1 bool
function ents.LightComponent:SetBaked(arg1) end

--- 
--- @param arg1 number
function ents.LightComponent:SetFalloffExponent(arg1) end

--- 
--- @param intensity number
--- @param type string
--- @overload fun(arg1: number, arg2: enum pragma::BaseEnvLightComponent::LightIntensityType): 
--- @overload fun(arg1: number): 
function ents.LightComponent:SetLightIntensity(intensity, type) end

--- 
--- @param type string
--- @overload fun(arg1: enum pragma::BaseEnvLightComponent::LightIntensityType): 
function ents.LightComponent:SetLightIntensityType(type) end

--- 
--- @param arg1 enum pragma::BaseEnvLightComponent::ShadowType
function ents.LightComponent:SetShadowType(arg1) end


--- @enum Event
ents.LightComponent = {
	EVENT_ON_SHADOW_BUFFER_INITIALIZED = 162,
	EVENT_GET_TRANSFORMATION_MATRIX = 160,
	EVENT_SHOULD_UPDATE_RENDER_PASS = 159,
	EVENT_HANDLE_SHADOW_MAP = 161,
}

--- @enum EventShouldPass
ents.LightComponent = {
	EVENT_SHOULD_PASS_ENTITY = 156,
	EVENT_SHOULD_PASS_MESH = 158,
	EVENT_SHOULD_PASS_ENTITY_MESH = 157,
}

--- @enum IntensityType
ents.LightComponent = {
	INTENSITY_TYPE_CANDELA = 0,
	INTENSITY_TYPE_LUX = 2,
	INTENSITY_TYPE_LUMEN = 1,
}

--- @enum ShadowType
ents.LightComponent = {
	SHADOW_TYPE_FULL = 3,
	SHADOW_TYPE_NONE = 0,
	SHADOW_TYPE_STATIC_ONLY = 1,
}

--- @enum LightFlag
ents.LightComponent = {
	LIGHT_FLAG_BAKED_LIGHT_SOURCE_BIT = 1,
	LIGHT_FLAG_NONE = 0,
}

--- 
--- @class ents.TriggerRemoveComponent: ents.BaseTriggerRemoveComponent
ents.TriggerRemoveComponent = {}


--- 
--- @class ents.LightMapComponent: ents.EntityComponent
ents.LightMapComponent = {}

--- 
--- @param arg1 enum pragma::CLightMapComponent::Texture
--- @return prosper.Texture ret0
--- @overload fun(): prosper.Texture
function ents.LightMapComponent:GetLightmapTexture(arg1) end

--- 
--- @param arg1 string
function ents.LightMapComponent:SetLightmapMaterial(arg1) end

--- 
--- @return prosper.Texture ret0
function ents.LightMapComponent:GetLightmapAtlas() end

--- 
function ents.LightMapComponent:ConvertLightmapToBSPLuxelData() end

--- 
function ents.LightMapComponent:ReloadLightmapData() end

--- 
--- @return number ret0
function ents.LightMapComponent:GetExposure() end

--- 
--- @return prosper.Texture ret0
function ents.LightMapComponent:GetDirectionalLightmapTexture() end

--- 
--- @return prosper.Texture ret0
function ents.LightMapComponent:GetDirectionalLightmapAtlas() end

--- 
--- @return string ret0
function ents.LightMapComponent:GetLightmapMaterialName() end

--- 
--- @return class util::FloatProperty ret0
function ents.LightMapComponent:GetExposureProperty() end

--- 
--- @param path string
--- @overload fun(arg1: prosper.Texture): 
function ents.LightMapComponent:SetDirectionalLightmapAtlas(path) end

--- 
--- @param arg1 number
function ents.LightMapComponent:SetExposure(arg1) end

--- 
function ents.LightMapComponent:UpdateLightmapUvBuffers() end

--- 
--- @param path string
--- @overload fun(arg1: prosper.Texture): 
function ents.LightMapComponent:SetLightmapAtlas(path) end


--- @enum Texture
ents.LightMapComponent = {
	TEXTURE_COUNT = 4,
	TEXTURE_DOMINANT_DIRECTION = 3,
}

--- @enum TextureDiffuse
ents.LightMapComponent = {
	TEXTURE_DIFFUSE = 2,
	TEXTURE_DIFFUSE_DIRECT = 0,
	TEXTURE_DIFFUSE_INDIRECT = 1,
}

--- 
--- @class ents.LightMapComponent.DataCache
--- @overload fun():ents.LightMapComponent.DataCache
ents.LightMapComponent.DataCache = {}

--- 
--- @param entUuid string
--- @param model string
--- @param pose math.Transform
--- @param meshUuid string
--- @param uvs table
function ents.LightMapComponent.DataCache:AddInstanceData(entUuid, model, pose, meshUuid, uvs) end

--- 
--- @param path string
--- @return variant ret0
function ents.LightMapComponent.DataCache:SaveAs(path) end

--- 
--- @param entUuid string
--- @param meshUuid string
--- @return table ret0
function ents.LightMapComponent.DataCache:FindLightmapUvs(entUuid, meshUuid) end

--- 
--- @param uuid string
function ents.LightMapComponent.DataCache:SetLightmapEntity(uuid) end

--- 
--- @return table ret0
function ents.LightMapComponent.DataCache:GetInstanceIds() end

--- 
--- @param uuid string
--- @return math.Transform ret0
function ents.LightMapComponent.DataCache:GetInstancePose(uuid) end

--- 
--- @return string ret0
function ents.LightMapComponent.DataCache:GetLightmapEntity() end


--- 
--- @class ents.LightMapComponent.BakeSettings
--- @field samples  
--- @field globalLightIntensityFactor  
--- @field denoise  
--- @field createAsRenderJob  
--- @field exposure  
--- @field rebuildUvAtlas  
--- @field height  
--- @field width  
--- @overload fun():ents.LightMapComponent.BakeSettings
ents.LightMapComponent.BakeSettings = {}

--- 
function ents.LightMapComponent.BakeSettings:ResetColorTransform() end

--- 
--- @param config string
--- @param look string
function ents.LightMapComponent.BakeSettings:SetColorTransform(config, look) end


--- 
--- @class ents.LightMapDataCacheComponent: ents.EntityComponent
ents.LightMapDataCacheComponent = {}

--- 
--- @return ents.LightMapComponent.DataCache ret0
function ents.LightMapDataCacheComponent:GetLightMapDataCache() end

--- 
--- @return string ret0
function ents.LightMapDataCacheComponent:GetLightMapDataCacheFilePath() end

--- 
function ents.LightMapDataCacheComponent:ReloadCache() end

--- 
--- @return string ret0
function ents.LightMapDataCacheComponent:GetLightMapDataCachePath() end

--- 
--- @param arg1 string
function ents.LightMapDataCacheComponent:SetLightMapDataCachePath(arg1) end


--- 
--- @class ents.LightMapReceiverComponent: ents.EntityComponent
ents.LightMapReceiverComponent = {}

--- 
function ents.LightMapReceiverComponent:UpdateLightmapUvData() end


--- 
--- @class ents.LightPointComponent: ents.BaseEnvLightPointComponent
ents.LightPointComponent = {}

--- 
--- @param arg1 math.Vector
--- @return number ret0
--- @overload fun(arg1: vector.Vector): number
function ents.LightPointComponent:CalcDistanceFalloff(arg1) end


--- 
--- @class ents.LightSpotComponent: ents.BaseEnvLightSpotComponent
ents.LightSpotComponent = {}

--- 
--- @param arg1 math.Vector
--- @return number ret0
--- @overload fun(arg1: vector.Vector): number
function ents.LightSpotComponent:CalcConeFalloff(arg1) end

--- 
--- @param arg1 math.Vector
--- @return number ret0
--- @overload fun(arg1: vector.Vector): number
function ents.LightSpotComponent:CalcDistanceFalloff(arg1) end

--- 
--- @return number ret0
function ents.LightSpotComponent:GetOuterConeAngle() end

--- 
--- @return number ret0
function ents.LightSpotComponent:GetBlendFraction() end

--- 
--- @return class util::FloatProperty ret0
function ents.LightSpotComponent:GetOuterConeAngleProperty() end

--- 
--- @return class util::FloatProperty ret0
function ents.LightSpotComponent:GetBlendFractionProperty() end

--- 
--- @return number ret0
function ents.LightSpotComponent:GetInnerConeAngle() end

--- 
--- @return class util::FloatProperty ret0
function ents.LightSpotComponent:GetConeStartOffsetProperty() end

--- 
--- @param arg1 number
function ents.LightSpotComponent:SetBlendFraction(arg1) end

--- 
--- @param arg1 number
function ents.LightSpotComponent:SetInnerConeAngle(arg1) end

--- 
--- @param arg1 number
function ents.LightSpotComponent:SetOuterConeAngle(arg1) end


--- 
--- @class ents.LightSpotVolComponent: ents.BaseEnvLightSpotVolComponent
ents.LightSpotVolComponent = {}

--- 
--- @return number ret0
function ents.LightSpotVolComponent:GetIntensity() end

--- 
--- @param arg1 number
function ents.LightSpotVolComponent:SetIntensity(arg1) end


--- 
--- @class ents.LiquidComponent: ents.BaseFuncLiquidComponent
ents.LiquidComponent = {}

--- 
--- @param arg1 math.Vector
--- @param arg2 math.Vector
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 bool
--- @return bool ret0
--- @overload fun(lineOrigin: math.Vector, lineDir: math.Vector): bool
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector, arg3: number, arg4: number, arg5: number, arg6: bool): bool
--- @overload fun(lineOrigin: vector.Vector, lineDir: vector.Vector): bool
function ents.LiquidComponent:CalcLineSurfaceIntersection(arg1, arg2, arg3, arg4, arg5, arg6) end


--- 
--- @class ents.LiquidControlComponent: ents.BaseLiquidControlComponent
ents.LiquidControlComponent = {}

--- 
--- @param arg1 math.Vector
--- @param arg2 number
--- @param arg3 number
--- @overload fun(arg1: vector.Vector, arg2: number, arg3: number): 
function ents.LiquidControlComponent:CreateSplash(arg1, arg2, arg3) end

--- 
--- @param arg1 number
function ents.LiquidControlComponent:SetLinearDragCoefficient(arg1) end

--- 
--- @return number ret0
function ents.LiquidControlComponent:GetDensity() end

--- 
--- @param arg1 number
function ents.LiquidControlComponent:SetDensity(arg1) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.LiquidControlComponent:GetWaterVelocity() end

--- 
--- @return number ret0
function ents.LiquidControlComponent:GetLinearDragCoefficient() end

--- 
--- @return number ret0
function ents.LiquidControlComponent:GetPropagation() end

--- 
--- @return number ret0
function ents.LiquidControlComponent:GetTorqueDragCoefficient() end

--- 
--- @return number ret0
function ents.LiquidControlComponent:GetStiffness() end

--- 
--- @param arg1 number
function ents.LiquidControlComponent:SetPropagation(arg1) end

--- 
--- @param arg1 number
function ents.LiquidControlComponent:SetTorqueDragCoefficient(arg1) end

--- 
--- @param arg1 number
function ents.LiquidControlComponent:SetStiffness(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.LiquidControlComponent:SetWaterVelocity(arg1) end


--- 
--- @class ents.LiquidSurfaceComponent: ents.BaseLiquidSurfaceComponent
ents.LiquidSurfaceComponent = {}

--- 
--- @param tex prosper.Texture
function ents.LiquidSurfaceComponent:Test(tex) end


--- 
--- @class ents.LiquidSurfaceSimulationComponent: ents.BaseLiquidSurfaceSimulationComponent
ents.LiquidSurfaceSimulationComponent = {}


--- @enum EventOnWaterSurfaceSimulatorChanged
ents.LiquidSurfaceSimulationComponent = {
	EVENT_ON_WATER_SURFACE_SIMULATOR_CHANGED = 150,
}

--- 
--- @class ents.LiquidVolumeComponent: ents.BaseLiquidVolumeComponent
ents.LiquidVolumeComponent = {}


--- 
--- @class ents.ListenerComponent: ents.EntityComponent
ents.ListenerComponent = {}


--- 
--- @class ents.LogicComponent: ents.EntityComponent
ents.LogicComponent = {}


--- @enum EventOnTick
ents.LogicComponent = {
	EVENT_ON_TICK = 4,
}

--- 
--- @class ents.LogicRelayComponent: ents.BaseLogicRelayComponent
ents.LogicRelayComponent = {}


--- 
--- @class ents.MapComponent: ents.EntityComponent
ents.MapComponent = {}

--- 
--- @return int ret0
function ents.MapComponent:GetMapIndex() end


--- 
--- @class ents.MetaRigComponent: ents.EntityComponent
ents.MetaRigComponent = {}

--- 
--- @param bone enum pragma::animation::MetaRigBoneType
--- @return math.Vector ret0
--- @overload fun(bone: enum pragma::animation::MetaRigBoneType, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(bone: enum pragma::animation::MetaRigBoneType): math.Vector
--- @overload fun(bone: enum pragma::animation::MetaRigBoneType, space: enum umath::CoordinateSpace): math.Vector
function ents.MetaRigComponent:GetBoneScale(bone) end

--- 
--- @param bone enum pragma::animation::MetaRigBoneType
--- @return math.Vector ret0
--- @overload fun(bone: enum pragma::animation::MetaRigBoneType, space: enum umath::CoordinateSpace): math.Vector
--- @overload fun(bone: enum pragma::animation::MetaRigBoneType): math.Vector
--- @overload fun(bone: enum pragma::animation::MetaRigBoneType, space: enum umath::CoordinateSpace): math.Vector
function ents.MetaRigComponent:GetBonePos(bone) end

--- 
--- @param bone enum pragma::animation::MetaRigBoneType
--- @return math.ScaledTransform ret0
--- @overload fun(bone: enum pragma::animation::MetaRigBoneType, space: enum umath::CoordinateSpace): math.ScaledTransform
function ents.MetaRigComponent:GetBonePose(bone) end

--- 
--- @param bone enum pragma::animation::MetaRigBoneType
--- @return math.Quaternion ret0
--- @overload fun(bone: enum pragma::animation::MetaRigBoneType, space: enum umath::CoordinateSpace): math.Quaternion
function ents.MetaRigComponent:GetBoneRot(bone) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @param arg2 math.Vector
--- @param arg3 enum umath::CoordinateSpace
--- @return bool ret0
--- @overload fun(arg1: enum pragma::animation::MetaRigBoneType, arg2: vector.Vector, arg3: enum umath::CoordinateSpace): bool
function ents.MetaRigComponent:SetBoneScale(arg1, arg2, arg3) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @param arg2 math.Vector
--- @param arg3 enum umath::CoordinateSpace
--- @return bool ret0
--- @overload fun(arg1: enum pragma::animation::MetaRigBoneType, arg2: vector.Vector, arg3: enum umath::CoordinateSpace): bool
function ents.MetaRigComponent:SetBonePos(arg1, arg2, arg3) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @param arg2 math.ScaledTransform
--- @param arg3 enum umath::CoordinateSpace
--- @return bool ret0
function ents.MetaRigComponent:SetBonePose(arg1, arg2, arg3) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @param arg2 math.Quaternion
--- @param arg3 enum umath::CoordinateSpace
--- @return bool ret0
function ents.MetaRigComponent:SetBoneRot(arg1, arg2, arg3) end


--- 
--- @class ents.MicrophoneComponent: ents.BaseEnvMicrophoneComponent
ents.MicrophoneComponent = {}


--- 
--- @class ents.MotionBlurDataComponent: ents.EntityComponent
ents.MotionBlurDataComponent = {}

--- 
function ents.MotionBlurDataComponent:UpdatePoses() end


--- 
--- @class ents.RendererComponent: ents.EntityComponent
ents.RendererComponent = {}

--- 
--- @param scene ents.SceneComponent
--- @param width int
--- @param height int
--- @overload fun(scene: ents.SceneComponent, width: int, height: int, reload: bool): 
function ents.RendererComponent:InitializeRenderTarget(scene, width, height) end

--- 
--- @return prosper.Texture ret0
function ents.RendererComponent:GetHDRPresentationTexture() end

--- 
--- @return int ret0
function ents.RendererComponent:GetHeight() end

--- 
--- @return prosper.Texture ret0
function ents.RendererComponent:GetPresentationTexture() end

--- 
--- @return prosper.Texture ret0
function ents.RendererComponent:GetSceneTexture() end

--- 
--- @return int ret0
function ents.RendererComponent:GetWidth() end


--- 
--- @class ents.MultiUniversalEntityReference
--- @overload fun(args: util.Uuid):ents.MultiUniversalEntityReference
--- @overload fun(arg1: string):ents.MultiUniversalEntityReference
--- @overload fun(arg1: ents.BaseEntityBase):ents.MultiUniversalEntityReference
ents.MultiUniversalEntityReference = {}

--- 
--- @param arg1 class Game
--- @param arg2 table
function ents.MultiUniversalEntityReference:FindEntities(arg1, arg2) end


--- 
--- @class ents.NameComponent: ents.BaseNameComponent
ents.NameComponent = {}

--- 
function ents.NameComponent:GetName() end

--- 
--- @return class util::StringProperty ret0
function ents.NameComponent:GetNameProperty() end

--- 
--- @param name string
function ents.NameComponent:SetName(name) end


--- 
--- @class ents.NetworkedComponent: ents.BaseNetworkedComponent
ents.NetworkedComponent = {}


--- 
--- @class ents.ObservableComponent: ents.BaseObservableComponent
ents.ObservableComponent = {}

--- 
--- @param camType int
function ents.ObservableComponent:GetCameraData(camType) end

--- 
--- @param arg1 enum pragma::BaseObservableComponent::CameraType
--- @return class util::BoolProperty ret0
function ents.ObservableComponent:GetCameraEnabledProperty(arg1) end

--- 
--- @param camType int
function ents.ObservableComponent:GetLocalCameraOffset(camType) end

--- 
--- @param arg1 enum pragma::BaseObservableComponent::CameraType
--- @return class util::Vector3Property ret0
function ents.ObservableComponent:GetCameraOffsetProperty(arg1) end

--- 
--- @param camType int
function ents.ObservableComponent:GetLocalCameraOrigin(camType) end

--- 
--- @param camType int
--- @param enabled bool
function ents.ObservableComponent:SetCameraEnabled(camType, enabled) end

--- 
--- @param camType int
--- @param offset math.Vector
--- @overload fun(camType: int, offset: vector.Vector): 
function ents.ObservableComponent:SetLocalCameraOffset(camType, offset) end

--- 
--- @param camType int
--- @param origin math.Vector
--- @overload fun(camType: int, origin: vector.Vector): 
function ents.ObservableComponent:SetLocalCameraOrigin(camType, origin) end


--- @enum CameraType
ents.ObservableComponent = {
	CAMERA_TYPE_FIRST_PERSON = 0,
	CAMERA_TYPE_THIRD_PERSON = 1,
}

--- 
--- @class ents.ObservableComponent.CameraData
--- @field enabled  
--- @field offset  
--- @field localOrigin  
--- @field rotateWithObservee  
ents.ObservableComponent.CameraData = {}

--- 
function ents.ObservableComponent.CameraData:ClearAngleLimits() end

--- 
function ents.ObservableComponent.CameraData:GetAngleLimits() end

--- 
--- @param min math.EulerAngles
--- @param max math.EulerAngles
function ents.ObservableComponent.CameraData:SetAngleLimits(min, max) end


--- 
--- @class ents.OcclusionCullerComponent: ents.EntityComponent
ents.OcclusionCullerComponent = {}


--- 
--- @class ents.OpticalCameraComponent: ents.EntityComponent
ents.OpticalCameraComponent = {}


--- 
--- @class ents.OwnableComponent: ents.BaseOwnableComponent
ents.OwnableComponent = {}

--- 
--- @return ents.BaseEntityBase ret0
function ents.OwnableComponent:GetOwner() end

--- 
--- @overload fun(owner: ents.BaseEntityBase): 
function ents.OwnableComponent:SetOwner() end


--- @enum EventOnOwnerChanged
ents.OwnableComponent = {
	EVENT_ON_OWNER_CHANGED = 134,
}

--- 
--- @class ents.PBRConverterComponent: ents.EntityComponent
ents.PBRConverterComponent = {}

--- 
--- @param ent ents.BaseEntityBase
--- @overload fun(ent: ents.BaseEntityBase, width: int, height: int): 
--- @overload fun(ent: ents.BaseEntityBase, width: int, height: int, samples: int): 
--- @overload fun(ent: ents.BaseEntityBase, width: int, height: int, samples: int, rebuild: bool): 
--- @overload fun(mdl: game.Model): 
--- @overload fun(mdl: game.Model, width: int, height: int): 
--- @overload fun(mdl: game.Model, width: int, height: int, samples: int): 
--- @overload fun(mdl: game.Model, width: int, height: int, samples: int, rebuild: bool): 
function ents.PBRConverterComponent:GenerateAmbientOcclusionMaps(ent) end


--- 
--- @class ents.PanimaComponent: ents.EntityComponent
ents.PanimaComponent = {}

--- 
--- @param arg1 panima.Manager
--- @return number ret0
function ents.PanimaComponent:GetCurrentTime(arg1) end

--- 
--- @return class util::FloatProperty ret0
function ents.PanimaComponent:GetPlaybackRateProperty() end

--- 
--- @param arg1 string
--- @param arg2 int
--- @return panima.Manager ret0
--- @overload fun(arg1: string, arg2: int): panima.Manager
function ents.PanimaComponent:AddAnimationManager(arg1, arg2) end

--- 
--- @param arg1 number
function ents.PanimaComponent:AdvanceAnimations(arg1) end

--- 
function ents.PanimaComponent:ClearAnimationManagers() end

--- 
--- @param arg1 panima.Manager
--- @return number ret0
function ents.PanimaComponent:GetCurrentTimeFraction(arg1) end

--- 
--- @return table ret0
function ents.PanimaComponent:GetAnimationManagers() end

--- 
function ents.PanimaComponent:DebugPrint() end

--- 
--- @param name string
--- @return panima.Manager ret0
function ents.PanimaComponent:GetAnimationManager(name) end

--- 
--- @return number ret0
function ents.PanimaComponent:GetPlaybackRate() end

--- 
--- @param arg1 number
function ents.PanimaComponent:SetPlaybackRate(arg1) end

--- 
--- @param manager panima.Manager
--- @param propName string
--- @param type enum udm::Type
--- @return struct luabind::adl::udm_type<class luabind::adl::object,1,1,0> ret0
function ents.PanimaComponent:GetRawAnimatedPropertyValue(manager, propName, type) end

--- 
--- @param arg1 string
--- @param arg2 bool
function ents.PanimaComponent:SetPropertyEnabled(arg1, arg2) end

--- 
--- @param manager panima.Manager
--- @param propName string
--- @param type enum udm::Type
--- @return struct luabind::adl::udm_type<class luabind::adl::object,1,1,0> ret0
function ents.PanimaComponent:GetRawPropertyValue(manager, propName, type) end

--- 
function ents.PanimaComponent:UpdateAnimationChannelSubmitters() end

--- 
--- @param arg1 string
--- @return bool ret0
function ents.PanimaComponent:IsPropertyEnabled(arg1) end

--- 
--- @param arg1 panima.Manager
--- @param arg2 number
function ents.PanimaComponent:SetCurrentTimeFraction(arg1, arg2) end

--- 
--- @param arg1 panima.Manager
--- @param arg2 panima.Animation
function ents.PanimaComponent:PlayAnimation(arg1, arg2) end

--- 
--- @param arg1 panima.Manager
--- @overload fun(): 
function ents.PanimaComponent:ReloadAnimation(arg1) end

--- 
--- @param arg1 class std::basic_string_view<char,struct std::char_traits<char> >
--- @overload fun(arg1: panima.Manager): 
function ents.PanimaComponent:RemoveAnimationManager(arg1) end

--- 
--- @param arg1 panima.Manager
--- @param arg2 number
function ents.PanimaComponent:SetCurrentTime(arg1, arg2) end


--- @enum Event
ents.PanimaComponent = {
	EVENT_INITIALIZE_CHANNEL_VALUE_SUBMITTER = 19,
	EVENT_HANDLE_ANIMATION_EVENT = 11,
	EVENT_MAINTAIN_ANIMATIONS = 15,
	EVENT_ON_PLAY_ANIMATION = 12,
	EVENT_ON_ANIMATIONS_UPDATED = 16,
	EVENT_ON_ANIMATION_COMPLETE = 13,
	EVENT_PLAY_ANIMATION = 17,
	EVENT_ON_ANIMATION_START = 14,
	EVENT_TRANSLATE_ANIMATION = 18,
}

--- 
--- @class ents.ParentComponent: ents.BaseParentComponent
ents.ParentComponent = {}


--- 
--- @class ents.ParticleSystemComponent: ents.BaseEnvParticleSystemComponent
ents.ParticleSystemComponent = {}

--- 
function ents.ParticleSystemComponent:IsDying() end

--- 
function ents.ParticleSystemComponent:Clear() end

--- 
--- @param hChild ents.ParticleSystemComponent
--- @overload fun(name: string): 
function ents.ParticleSystemComponent:AddChild(hChild) end

--- 
--- @param name string
--- @param o any
--- @return ents.ParticleSystemComponent.ParticleInitializer ret0
function ents.ParticleSystemComponent:AddInitializer(name, o) end

--- 
--- @param name string
--- @param o any
--- @return ents.ParticleSystemComponent.ParticleOperator ret0
function ents.ParticleSystemComponent:AddOperator(name, o) end

--- 
function ents.ParticleSystemComponent:GetRenderParticleCount() end

--- 
--- @param nodeId int
function ents.ParticleSystemComponent:GetNodePosition(nodeId) end

--- 
--- @return int ret0
function ents.ParticleSystemComponent:GetMaxNodes() end

--- 
--- @param name string
--- @param o any
--- @return ents.ParticleSystemComponent.ParticleRenderer ret0
function ents.ParticleSystemComponent:AddRenderer(name, o) end

--- 
function ents.ParticleSystemComponent:CalcRenderBounds() end

--- 
function ents.ParticleSystemComponent:GetRadius() end

--- 
--- @param ptIdx int
function ents.ParticleSystemComponent:GetParticleBufferIndexFromParticleIndex(ptIdx) end

--- 
function ents.ParticleSystemComponent:GetColorFactor() end

--- 
--- @param t number
--- @overload fun(): 
function ents.ParticleSystemComponent:Die(t) end

--- 
function ents.ParticleSystemComponent:GetRenderBounds() end

--- 
--- @param name string
function ents.ParticleSystemComponent:FindInitializer(name) end

--- 
function ents.ParticleSystemComponent:GetEffectiveAlphaMode() end

--- 
--- @param name string
function ents.ParticleSystemComponent:FindInitializerByType(name) end

--- 
function ents.ParticleSystemComponent:GetInitializers() end

--- 
function ents.ParticleSystemComponent:GetEmissionRate() end

--- 
--- @param name string
function ents.ParticleSystemComponent:FindOperator(name) end

--- 
--- @param name string
function ents.ParticleSystemComponent:FindOperatorByType(name) end

--- 
--- @param idx int
function ents.ParticleSystemComponent:GetParticle(idx) end

--- 
--- @param name string
function ents.ParticleSystemComponent:FindRenderer(name) end

--- 
--- @param name string
function ents.ParticleSystemComponent:FindRendererByType(name) end

--- 
--- @param cpIdx int
--- @param pose math.Transform
--- @param timeStamp number
--- @overload fun(cpIdx: int, pose: math.Transform): 
function ents.ParticleSystemComponent:SetControlPointPose(cpIdx, pose, timeStamp) end

--- 
function ents.ParticleSystemComponent:GetParticleBuffer() end

--- 
function ents.ParticleSystemComponent:GenerateModel() end

--- 
function ents.ParticleSystemComponent:GetAlphaMode() end

--- 
function ents.ParticleSystemComponent:GetSortParticles() end

--- 
function ents.ParticleSystemComponent:GetAnimationDescriptorSet() end

--- 
function ents.ParticleSystemComponent:GetExtent() end

--- 
function ents.ParticleSystemComponent:GetAnimationSpriteSheetBuffer() end

--- 
function ents.ParticleSystemComponent:GetBloomColorFactor() end

--- 
function ents.ParticleSystemComponent:GetCastShadows() end

--- 
function ents.ParticleSystemComponent:GetChildren() end

--- 
function ents.ParticleSystemComponent:GetRemoveOnComplete() end

--- 
--- @param cpIdx int
function ents.ParticleSystemComponent:GetControlPointEntity(cpIdx) end

--- 
--- @param cpIdx int
--- @param timeStamp number
--- @overload fun(cpIdx: int): 
function ents.ParticleSystemComponent:GetControlPointPose(cpIdx, timeStamp) end

--- 
function ents.ParticleSystemComponent:GetEffectiveBloomColorFactor() end

--- 
function ents.ParticleSystemComponent:GetMaterial() end

--- 
--- @return enum pragma::CParticleSystemComponent::Flags ret0
function ents.ParticleSystemComponent:GetFlags() end

--- 
function ents.ParticleSystemComponent:GetInitialColor() end

--- 
function ents.ParticleSystemComponent:GetOperators() end

--- 
function ents.ParticleSystemComponent:GetLifeTime() end

--- 
--- @return int ret0
function ents.ParticleSystemComponent:GetMaxParticleCount() end

--- 
function ents.ParticleSystemComponent:GetName() end

--- 
--- @param cpIdx int
function ents.ParticleSystemComponent:GetPrevControlPointPose(cpIdx) end

--- 
function ents.ParticleSystemComponent:GetNodeCount() end

--- 
--- @param nodeId int
function ents.ParticleSystemComponent:GetNodeTarget(nodeId) end

--- 
function ents.ParticleSystemComponent:GetOrientationType() end

--- 
function ents.ParticleSystemComponent:GetParent() end

--- 
function ents.ParticleSystemComponent:GetParticleAnimationBuffer() end

--- 
function ents.ParticleSystemComponent:GetParticleCount() end

--- 
--- @param ptBufIdx int
function ents.ParticleSystemComponent:GetParticleIndexFromParticleBufferIndex(ptBufIdx) end

--- 
function ents.ParticleSystemComponent:GetParticles() end

--- 
function ents.ParticleSystemComponent:GetRenderers() end

--- 
function ents.ParticleSystemComponent:GetSceneRenderPass() end

--- 
--- @param hChild ents.ParticleSystemComponent
function ents.ParticleSystemComponent:RemoveChild(hChild) end

--- 
function ents.ParticleSystemComponent:GetSimulationTime() end

--- 
function ents.ParticleSystemComponent:GetSoftParticles() end

--- 
function ents.ParticleSystemComponent:GetSpriteSheetAnimation() end

--- 
function ents.ParticleSystemComponent:GetStartTime() end

--- 
function ents.ParticleSystemComponent:IsActiveOrPaused() end

--- 
--- @param hChild ents.ParticleSystemComponent
function ents.ParticleSystemComponent:HasChild(hChild) end

--- 
--- @param name string
function ents.ParticleSystemComponent:InitializeFromParticleSystemDefinition(name) end

--- 
function ents.ParticleSystemComponent:IsActive() end

--- 
function ents.ParticleSystemComponent:IsAnimated() end

--- 
function ents.ParticleSystemComponent:IsBloomEnabled() end

--- 
function ents.ParticleSystemComponent:IsContinuous() end

--- 
function ents.ParticleSystemComponent:IsEmissionPaused() end

--- 
--- @param hParent ents.ParticleSystemComponent
function ents.ParticleSystemComponent:SetParent(hParent) end

--- 
function ents.ParticleSystemComponent:IsStatic() end

--- 
function ents.ParticleSystemComponent:PauseEmission() end

--- 
--- @param name string
function ents.ParticleSystemComponent:RemoveInitializer(name) end

--- 
--- @param name string
function ents.ParticleSystemComponent:RemoveInitializerByType(name) end

--- 
--- @param name string
function ents.ParticleSystemComponent:RemoveOperator(name) end

--- 
--- @param renderMode int
function ents.ParticleSystemComponent:SetSceneRenderPass(renderMode) end

--- 
--- @param name string
function ents.ParticleSystemComponent:RemoveOperatorByType(name) end

--- 
--- @param name string
function ents.ParticleSystemComponent:RemoveRenderer(name) end

--- 
--- @param name string
function ents.ParticleSystemComponent:RemoveRendererByType(name) end

--- 
function ents.ParticleSystemComponent:ResumeEmission() end

--- 
--- @param bSort bool
function ents.ParticleSystemComponent:SetSortParticles(bSort) end

--- 
--- @param alphaMode int
function ents.ParticleSystemComponent:SetAlphaMode(alphaMode) end

--- 
--- @param autoSimulate bool
--- @overload fun(autoSimulate: bool): 
function ents.ParticleSystemComponent:SetAutoSimulate(autoSimulate) end

--- 
--- @param factor math.Vector4
function ents.ParticleSystemComponent:SetBloomColorFactor(factor) end

--- 
--- @param b bool
function ents.ParticleSystemComponent:SetCastShadows(b) end

--- 
--- @param bStopImmediately bool
--- @overload fun(): 
function ents.ParticleSystemComponent:Stop(bStopImmediately) end

--- 
--- @param factor math.Vector4
function ents.ParticleSystemComponent:SetColorFactor(factor) end

--- 
--- @param b bool
function ents.ParticleSystemComponent:SetContinuous(b) end

--- 
--- @param cpIdx int
--- @param ent ents.BaseEntityBase
function ents.ParticleSystemComponent:SetControlPointEntity(cpIdx, ent) end

--- 
--- @param cpIdx int
--- @param pos vector.Vector
function ents.ParticleSystemComponent:SetControlPointPosition(cpIdx, pos) end

--- 
--- @param cpIdx int
--- @param rot math.Quaternion
function ents.ParticleSystemComponent:SetControlPointRotation(cpIdx, rot) end

--- 
--- @param emissionRate int
function ents.ParticleSystemComponent:SetEmissionRate(emissionRate) end

--- 
--- @param extent number
function ents.ParticleSystemComponent:SetExtent(extent) end

--- 
--- @param arg1 enum pragma::CParticleSystemComponent::Flags
function ents.ParticleSystemComponent:SetFlags(arg1) end

--- 
--- @param col util.Color
function ents.ParticleSystemComponent:SetInitialColor(col) end

--- 
--- @param mat game.Material
--- @overload fun(name: string): 
function ents.ParticleSystemComponent:SetMaterial(mat) end

--- 
--- @param arg1 int
function ents.ParticleSystemComponent:SetMaxNodes(arg1) end

--- 
--- @param arg1 int
function ents.ParticleSystemComponent:SetMaxParticleCount(arg1) end

--- 
--- @param name string
function ents.ParticleSystemComponent:SetName(name) end

--- 
--- @param count int
function ents.ParticleSystemComponent:SetNextParticleEmissionCount(count) end

--- 
--- @param nodeId int
--- @param pos vector.Vector
--- @overload fun(nodeId: int, ent: ents.BaseEntityBase): 
function ents.ParticleSystemComponent:SetNodeTarget(nodeId, pos) end

--- 
--- @param orientationType int
function ents.ParticleSystemComponent:SetOrientationType(orientationType) end

--- 
--- @param radius number
function ents.ParticleSystemComponent:SetRadius(radius) end

--- 
--- @param b bool
function ents.ParticleSystemComponent:SetRemoveOnComplete(b) end

--- 
--- @param bSoft bool
function ents.ParticleSystemComponent:SetSoftParticles(bSoft) end

--- 
function ents.ParticleSystemComponent:ShouldAutoSimulate() end

--- 
--- @param tDelta number
function ents.ParticleSystemComponent:Simulate(tDelta) end

--- 
function ents.ParticleSystemComponent:Start() end


--- @enum SfParticleSystemContinuous
ents.ParticleSystemComponent = {
	SF_PARTICLE_SYSTEM_CONTINUOUS = 2048,
}

--- @enum AlphaMode
ents.ParticleSystemComponent = {
	ALPHA_MODE_ADDITIVE = 0,
	ALPHA_MODE_PREMULTIPLIED = 5,
	ALPHA_MODE_ADDITIVE_BY_COLOR = 1,
	ALPHA_MODE_TRANSLUCENT = 4,
	ALPHA_MODE_COUNT = 7,
	ALPHA_MODE_MASKED = 3,
	ALPHA_MODE_OPAQUE = 2,
}

--- @enum RenderFlagBit
ents.ParticleSystemComponent = {
	RENDER_FLAG_BIT_BLOOM = 1,
	RENDER_FLAG_BIT_DEPTH_ONLY = 2,
}

--- @enum FlagBit
ents.ParticleSystemComponent = {
	FLAG_BIT_ALWAYS_SIMULATE = 1024,
	FLAG_BIT_PREMULTIPLY_ALPHA = 512,
	FLAG_BIT_AUTO_SIMULATE = 8192,
	FLAG_BIT_CAST_SHADOWS = 2048,
	FLAG_BIT_DYING = 128,
	FLAG_BIT_HAS_MOVING_PARTICLES = 8,
	FLAG_BIT_MATERIAL_DESCRIPT_SET_INITIALIZED = 16384,
	FLAG_BIT_MOVE_WITH_EMITTER = 16,
	FLAG_BIT_RANDOM_START_FRAME = 256,
	FLAG_BIT_RENDERER_BUFFER_UPDATE_REQUIRED = 4,
	FLAG_BIT_TEXTURE_SCROLLING_ENABLED = 2,
	FLAG_BIT_SETUP = 4096,
	FLAG_BIT_ROTATE_WITH_EMITTER = 32,
	FLAG_BIT_SOFT_PARTICLES = 1,
	FLAG_BIT_SORT_PARTICLES = 64,
}

--- @enum RenderFlagNone
ents.ParticleSystemComponent = {
	RENDER_FLAG_NONE = 0,
}

--- @enum OrientationType
ents.ParticleSystemComponent = {
	ORIENTATION_TYPE_WORLD = 3,
	ORIENTATION_TYPE_STATIC = 2,
	ORIENTATION_TYPE_ALIGNED = 0,
	ORIENTATION_TYPE_BILLBOARD = 4,
	ORIENTATION_TYPE_UPRIGHT = 1,
}

--- @enum FlagNone
ents.ParticleSystemComponent = {
	FLAG_NONE = 0,
}

--- 
--- @class ents.ParticleSystemComponent.BaseInitializer: ents.ParticleSystemComponent.ParticleInitializer, ents.ParticleSystemComponent.ParticleModifier
--- @overload fun():ents.ParticleSystemComponent.BaseInitializer
ents.ParticleSystemComponent.BaseInitializer = {}

--- 
function ents.ParticleSystemComponent.BaseInitializer:Initialize() end

--- 
--- @param arg1 ents.ParticleSystemComponent.Particle
function ents.ParticleSystemComponent.BaseInitializer:OnParticleCreated(arg1) end

--- 
--- @param arg1 ents.ParticleSystemComponent.Particle
function ents.ParticleSystemComponent.BaseInitializer:OnParticleDestroyed(arg1) end

--- 
function ents.ParticleSystemComponent.BaseInitializer:OnParticleSystemStopped() end

--- 
function ents.ParticleSystemComponent.BaseInitializer:OnParticleSystemStarted() end


--- 
--- @class ents.ParticleSystemComponent.ParticleRenderer: ents.ParticleSystemComponent.ParticleModifier
ents.ParticleSystemComponent.ParticleRenderer = {}


--- 
--- @class ents.ParticleSystemComponent.BaseOperator: ents.ParticleSystemComponent.ParticleOperator, ents.ParticleSystemComponent.ParticleModifier
--- @overload fun():ents.ParticleSystemComponent.BaseOperator
ents.ParticleSystemComponent.BaseOperator = {}

--- 
function ents.ParticleSystemComponent.BaseOperator:Initialize() end

--- 
--- @param arg1 ents.ParticleSystemComponent.Particle
function ents.ParticleSystemComponent.BaseOperator:OnParticleCreated(arg1) end

--- 
--- @param arg1 ents.ParticleSystemComponent.Particle
function ents.ParticleSystemComponent.BaseOperator:OnParticleDestroyed(arg1) end

--- 
function ents.ParticleSystemComponent.BaseOperator:OnParticleSystemStopped() end

--- 
function ents.ParticleSystemComponent.BaseOperator:OnParticleSystemStarted() end

--- 
--- @param arg1 ents.ParticleSystemComponent.Particle
--- @param arg2 number
--- @param arg3 number
function ents.ParticleSystemComponent.BaseOperator:Simulate(arg1, arg2, arg3) end


--- 
--- @class ents.ParticleSystemComponent.ParticleOperator: ents.ParticleSystemComponent.ParticleModifier
ents.ParticleSystemComponent.ParticleOperator = {}

--- 
--- @param curTime number
function ents.ParticleSystemComponent.ParticleOperator:CalcStrength(curTime) end


--- 
--- @class ents.ParticleSystemComponent.Particle
ents.ParticleSystemComponent.Particle = {}

--- 
function ents.ParticleSystemComponent.Particle:GetWorldRotation() end

--- 
function ents.ParticleSystemComponent.Particle:GetAnimationFrameOffset() end

--- 
--- @param dist number
function ents.ParticleSystemComponent.Particle:SetCameraDistance(dist) end

--- 
function ents.ParticleSystemComponent.Particle:GetTimeAlive() end

--- 
function ents.ParticleSystemComponent.Particle:GetInitialRotation() end

--- 
function ents.ParticleSystemComponent.Particle:GetInitialLife() end

--- 
--- @param min number
--- @param max number
--- @param seed int
--- @overload fun(min: number, max: number): 
function ents.ParticleSystemComponent.Particle:CalcRandomFloat(min, max, seed) end

--- 
function ents.ParticleSystemComponent.Particle:GetColor() end

--- 
--- @param min number
--- @param max number
--- @param exp number
--- @param seed int
--- @overload fun(min: number, max: number, exp: number): 
function ents.ParticleSystemComponent.Particle:CalcRandomFloatExp(min, max, exp, seed) end

--- 
function ents.ParticleSystemComponent.Particle:GetAngularVelocity() end

--- 
function ents.ParticleSystemComponent.Particle:ShouldDraw() end

--- 
--- @param min int
--- @param max int
--- @param seed int
--- @overload fun(min: int, max: int): 
function ents.ParticleSystemComponent.Particle:CalcRandomInt(min, max, seed) end

--- 
function ents.ParticleSystemComponent.Particle:GetOrigin() end

--- 
--- @param fieldId int
function ents.ParticleSystemComponent.Particle:GetField(fieldId) end

--- 
function ents.ParticleSystemComponent.Particle:GetAlpha() end

--- 
--- @param radius number
function ents.ParticleSystemComponent.Particle:SetRadius(radius) end

--- 
function ents.ParticleSystemComponent.Particle:Die() end

--- 
function ents.ParticleSystemComponent.Particle:GetCameraDistance() end

--- 
function ents.ParticleSystemComponent.Particle:GetTimeCreated() end

--- 
function ents.ParticleSystemComponent.Particle:GetDeathTime() end

--- 
function ents.ParticleSystemComponent.Particle:GetLength() end

--- 
function ents.ParticleSystemComponent.Particle:GetExtent() end

--- 
--- @param rot number
function ents.ParticleSystemComponent.Particle:SetRotation(rot) end

--- 
function ents.ParticleSystemComponent.Particle:GetIndex() end

--- 
function ents.ParticleSystemComponent.Particle:GetInitialAlpha() end

--- 
function ents.ParticleSystemComponent.Particle:GetLifeSpan() end

--- 
function ents.ParticleSystemComponent.Particle:GetInitialAnimationFrameOffset() end

--- 
function ents.ParticleSystemComponent.Particle:GetInitialColor() end

--- 
--- @param a number
function ents.ParticleSystemComponent.Particle:SetAlpha(a) end

--- 
function ents.ParticleSystemComponent.Particle:GetInitialLength() end

--- 
function ents.ParticleSystemComponent.Particle:GetInitialRadius() end

--- 
function ents.ParticleSystemComponent.Particle:GetLife() end

--- 
function ents.ParticleSystemComponent.Particle:GetPosition() end

--- 
function ents.ParticleSystemComponent.Particle:GetRadius() end

--- 
function ents.ParticleSystemComponent.Particle:GetPreviousPosition() end

--- 
function ents.ParticleSystemComponent.Particle:GetRotation() end

--- 
function ents.ParticleSystemComponent.Particle:GetRotationYaw() end

--- 
function ents.ParticleSystemComponent.Particle:GetSeed() end

--- 
function ents.ParticleSystemComponent.Particle:GetSequence() end

--- 
function ents.ParticleSystemComponent.Particle:GetVelocity() end

--- 
function ents.ParticleSystemComponent.Particle:IsAlive() end

--- 
--- @param color math.Vector4
function ents.ParticleSystemComponent.Particle:SetColor(color) end

--- 
function ents.ParticleSystemComponent.Particle:IsDying() end

--- 
--- @param t number
function ents.ParticleSystemComponent.Particle:Reset(t) end

--- 
--- @param pos vector.Vector
function ents.ParticleSystemComponent.Particle:SetPosition(pos) end

--- 
function ents.ParticleSystemComponent.Particle:Resurrect() end

--- 
--- @param vel vector.Vector
function ents.ParticleSystemComponent.Particle:SetVelocity(vel) end

--- 
--- @param alive bool
function ents.ParticleSystemComponent.Particle:SetAlive(alive) end

--- 
--- @param vel vector.Vector
function ents.ParticleSystemComponent.Particle:SetAngularVelocity(vel) end

--- 
--- @param offset number
function ents.ParticleSystemComponent.Particle:SetAnimationFrameOffset(offset) end

--- 
--- @param fieldId int
--- @param value number
--- @overload fun(fieldId: int, value: math.Vector4): 
function ents.ParticleSystemComponent.Particle:SetField(fieldId, value) end

--- 
--- @param len number
function ents.ParticleSystemComponent.Particle:SetLength(len) end

--- 
--- @param prevPos vector.Vector
function ents.ParticleSystemComponent.Particle:SetPreviousPosition(prevPos) end

--- 
--- @param life number
function ents.ParticleSystemComponent.Particle:SetLife(life) end

--- 
--- @param origin vector.Vector
function ents.ParticleSystemComponent.Particle:SetOrigin(origin) end

--- 
--- @param rot number
function ents.ParticleSystemComponent.Particle:SetRotationYaw(rot) end

--- 
--- @param sequence int
function ents.ParticleSystemComponent.Particle:SetSequence(sequence) end

--- 
--- @param life number
function ents.ParticleSystemComponent.Particle:SetTimeAlive(life) end

--- 
--- @param time number
function ents.ParticleSystemComponent.Particle:SetTimeCreated(time) end

--- 
--- @param rot math.Quaternion
function ents.ParticleSystemComponent.Particle:SetWorldRotation(rot) end


--- @enum FieldId
ents.ParticleSystemComponent.Particle = {
	FIELD_ID_ANGULAR_VELOCITY = 5,
	FIELD_ID_ALPHA = 10,
	FIELD_ID_CREATION_TIME = 12,
	FIELD_ID_COLOR = 9,
	FIELD_ID_VELOCITY = 4,
	FIELD_ID_INVALID = 13,
	FIELD_ID_COUNT = 13,
	FIELD_ID_LENGTH = 7,
	FIELD_ID_LIFE = 8,
	FIELD_ID_ORIGIN = 3,
	FIELD_ID_POS = 0,
	FIELD_ID_RADIUS = 6,
	FIELD_ID_ROT = 1,
	FIELD_ID_ROT_YAW = 2,
	FIELD_ID_SEQUENCE = 11,
}

--- 
--- @class ents.ParticleSystemComponent.BaseRenderer: ents.ParticleSystemComponent.ParticleRenderer, ents.ParticleSystemComponent.ParticleModifier
--- @overload fun():ents.ParticleSystemComponent.BaseRenderer
ents.ParticleSystemComponent.BaseRenderer = {}

--- 
function ents.ParticleSystemComponent.BaseRenderer:GetShader() end

--- 
function ents.ParticleSystemComponent.BaseRenderer:Initialize() end

--- 
--- @param arg1 ents.ParticleSystemComponent.Particle
function ents.ParticleSystemComponent.BaseRenderer:OnParticleCreated(arg1) end

--- 
--- @param shader shader.BaseParticle2D
function ents.ParticleSystemComponent.BaseRenderer:SetShader(shader) end

--- 
--- @param arg1 prosper.CommandBuffer
--- @param arg2 ents.SceneComponent
--- @param arg3 ents.RasterizationRendererComponent
--- @param arg4 bool
function ents.ParticleSystemComponent.BaseRenderer:Render(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 ents.ParticleSystemComponent.Particle
function ents.ParticleSystemComponent.BaseRenderer:OnParticleDestroyed(arg1) end

--- 
function ents.ParticleSystemComponent.BaseRenderer:OnParticleSystemStopped() end

--- 
function ents.ParticleSystemComponent.BaseRenderer:OnParticleSystemStarted() end


--- 
--- @class ents.ParticleSystemComponent.ParticleInitializer: ents.ParticleSystemComponent.ParticleModifier
ents.ParticleSystemComponent.ParticleInitializer = {}


--- 
--- @class ents.ParticleSystemComponent.ParticleModifier
ents.ParticleSystemComponent.ParticleModifier = {}

--- 
function ents.ParticleSystemComponent.ParticleModifier:GetType() end

--- 
function ents.ParticleSystemComponent.ParticleModifier:GetPriority() end

--- 
--- @param key string
function ents.ParticleSystemComponent.ParticleModifier:GetKeyValue(key) end

--- 
function ents.ParticleSystemComponent.ParticleModifier:GetName() end

--- 
function ents.ParticleSystemComponent.ParticleModifier:GetKeyValues() end

--- 
function ents.ParticleSystemComponent.ParticleModifier:GetParticleSystem() end

--- 
--- @param priority int
function ents.ParticleSystemComponent.ParticleModifier:SetPriority(priority) end

--- 
--- @param key string
--- @param value string
function ents.ParticleSystemComponent.ParticleModifier:SetKeyValue(key, value) end


--- 
--- @class ents.PathNodeComponent: ents.BasePointPathNodeComponent
ents.PathNodeComponent = {}


--- 
--- @class ents.PhysicsComponent: ents.BasePhysicsComponent
ents.PhysicsComponent = {}

--- 
--- @param bool bool
function ents.PhysicsComponent:SetCollisionContactReportEnabled(bool) end

--- 
--- @param force math.Vector
--- @param relPos math.Vector
--- @overload fun(force: math.Vector): 
--- @overload fun(force: vector.Vector, relPos: vector.Vector): 
--- @overload fun(force: vector.Vector): 
function ents.PhysicsComponent:ApplyForce(force, relPos) end

--- 
--- @overload fun(arg1: ents.BaseEntityBase): 
function ents.PhysicsComponent:DisableCollisions() end

--- 
--- @param impulse math.Vector
--- @param relPos math.Vector
--- @overload fun(impulse: math.Vector): 
--- @overload fun(impulse: vector.Vector, relPos: vector.Vector): 
--- @overload fun(impulse: vector.Vector): 
function ents.PhysicsComponent:ApplyImpulse(impulse, relPos) end

--- 
function ents.PhysicsComponent:DestroyPhysicsObject() end

--- 
--- @param arg1 math.Vector
--- @param arg2 math.Vector
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector): 
function ents.PhysicsComponent:GetRotatedCollisionBounds(arg1, arg2) end

--- 
--- @param torque math.Vector
--- @overload fun(torque: vector.Vector): 
function ents.PhysicsComponent:ApplyTorque(torque) end

--- 
--- @param shape class util::TSharedHandle<class pragma::physics::IConvexShape>
--- @overload fun(shape: class util::TSharedHandle<class pragma::physics::IConvexShape>, physFlags: int): 
--- @overload fun(shape: class util::TSharedHandle<class pragma::physics::IConvexShape>, physFlags: int): 
--- @overload fun(type: int): 
--- @overload fun(type: int, physFlags: int): 
function ents.PhysicsComponent:InitializePhysics(shape) end

--- 
--- @param torque math.Vector
--- @overload fun(torque: vector.Vector): 
function ents.PhysicsComponent:ApplyTorqueImpulse(torque) end

--- 
function ents.PhysicsComponent:DropToFloor() end

--- 
--- @overload fun(arg1: ents.BaseEntityBase): 
function ents.PhysicsComponent:EnableCollisions() end

--- 
--- @return bool ret0
function ents.PhysicsComponent:IsKinematic() end

--- 
--- @param other ents.BaseEntityBase
--- @overload fun(hOther: ents.BasePhysicsComponent): 
--- @overload fun(p: math.Vector): 
--- @overload fun(p: vector.Vector): 
function ents.PhysicsComponent:GetAABBDistance(other) end

--- 
function ents.PhysicsComponent:GetCollisionBounds() end

--- 
--- @return bool ret0
function ents.PhysicsComponent:GetCollisionCallbacksEnabled() end

--- 
function ents.PhysicsComponent:GetCollisionCenter() end

--- 
--- @param moveType int
function ents.PhysicsComponent:SetMoveType(moveType) end

--- 
--- @return bool ret0
function ents.PhysicsComponent:GetCollisionContactReportEnabled() end

--- 
function ents.PhysicsComponent:GetCollisionExtents() end

--- 
--- @return enum CollisionMask ret0
function ents.PhysicsComponent:GetCollisionFilterGroup() end

--- 
--- @return enum CollisionMask ret0
function ents.PhysicsComponent:GetCollisionFilterMask() end

--- 
--- @param arg1 math.Vector
--- @return number ret0
--- @overload fun(arg1: vector.Vector): number
function ents.PhysicsComponent:GetCollisionRadius(arg1) end

--- 
--- @return bool ret0
function ents.PhysicsComponent:IsPhysicsProp() end

--- 
--- @return number ret0
function ents.PhysicsComponent:GetMass() end

--- 
function ents.PhysicsComponent:GetMoveType() end

--- 
--- @return bool ret0
function ents.PhysicsComponent:IsTrigger() end

--- 
--- @return bool ret0
function ents.PhysicsComponent:IsSimulationEnabled() end

--- 
function ents.PhysicsComponent:GetPhysJointConstraints() end

--- 
function ents.PhysicsComponent:GetPhysicsObject() end

--- 
--- @return enum PHYSICSTYPE ret0
function ents.PhysicsComponent:GetPhysicsType() end

--- 
--- @return bool ret0
function ents.PhysicsComponent:IsRagdoll() end

--- 
--- @param arg1 ents.BaseEntityBase
function ents.PhysicsComponent:ResetCollisions(arg1) end

--- 
--- @param min math.Vector
--- @param max math.Vector
--- @overload fun(min: vector.Vector, max: vector.Vector): 
function ents.PhysicsComponent:SetCollisionBounds(min, max) end

--- 
--- @param bool bool
function ents.PhysicsComponent:SetCollisionCallbacksEnabled(bool) end

--- 
--- @param arg1 enum CollisionMask
--- @param arg2 enum CollisionMask
function ents.PhysicsComponent:SetCollisionFilter(arg1, arg2) end

--- 
--- @param arg1 enum CollisionMask
function ents.PhysicsComponent:SetCollisionFilterGroup(arg1) end

--- 
--- @param arg1 enum CollisionMask
function ents.PhysicsComponent:SetCollisionFilterMask(arg1) end

--- 
--- @param arg1 ents.BaseEntityBase
--- @param arg2 bool
--- @overload fun(arg1: bool): 
function ents.PhysicsComponent:SetCollisionsEnabled(arg1, arg2) end

--- 
--- @param arg1 bool
function ents.PhysicsComponent:SetKinematic(arg1) end

--- 
--- @param arg1 bool
function ents.PhysicsComponent:SetSimulationEnabled(arg1) end


--- @enum Event
ents.PhysicsComponent = {
	EVENT_HANDLE_RAYCAST = 74,
	EVENT_INITIALIZE_PHYSICS = 75,
	EVENT_ON_DYNAMIC_PHYSICS_UPDATED = 69,
	EVENT_ON_PHYSICS_DESTROYED = 67,
	EVENT_ON_PHYSICS_INITIALIZED = 66,
	EVENT_ON_PHYSICS_UPDATED = 68,
	EVENT_ON_POST_PHYSICS_SIMULATE = 71,
	EVENT_ON_PRE_PHYSICS_SIMULATE = 70,
	EVENT_ON_SLEEP = 72,
	EVENT_ON_WAKE = 73,
}

--- @enum Movetype
ents.PhysicsComponent = {
	MOVETYPE_PHYSICS = 5,
	MOVETYPE_FLY = 2,
	MOVETYPE_NONE = 0,
	MOVETYPE_FREE = 4,
	MOVETYPE_NOCLIP = 3,
	MOVETYPE_WALK = 1,
}

--- 
--- @class ents.RaytracingRendererComponent: ents.EntityComponent
ents.RaytracingRendererComponent = {}


--- 
--- @class ents.PlayerComponent: ents.BasePlayerComponent
ents.PlayerComponent = {}

--- 
--- @param arg1 number
function ents.PlayerComponent:SetRunSpeed(arg1) end

--- 
--- @param ang math.EulerAngles
--- @overload fun(arg1: math.EulerAngles, arg2: number): 
function ents.PlayerComponent:ApplyViewRotationOffset(ang) end

--- 
function ents.PlayerComponent:ToggleFlashlight() end

--- 
--- @param arg1 enum Action
--- @return bool ret0
function ents.PlayerComponent:GetActionInput(arg1) end

--- 
--- @param arg1 number
function ents.PlayerComponent:SetStandEyeLevel(arg1) end

--- 
--- @return number ret0
function ents.PlayerComponent:GetCrouchedWalkSpeed() end

--- 
--- @return number ret0
function ents.PlayerComponent:GetCrouchEyeLevel() end

--- 
--- @return enum Action ret0
function ents.PlayerComponent:GetActionInputs() end

--- 
--- @return bool ret0
function ents.PlayerComponent:IsFlashlightEnabled() end

--- 
--- @param arg1 enum Action
--- @return number ret0
function ents.PlayerComponent:GetActionInputAxisMagnitude(arg1) end

--- 
--- @return number ret0
function ents.PlayerComponent:GetCrouchHeight() end

--- 
--- @return number ret0
function ents.PlayerComponent:GetSprintSpeed() end

--- 
--- @return enum OBSERVERMODE ret0
function ents.PlayerComponent:GetObserverMode() end

--- 
--- @return class util::TEnumProperty<enum OBSERVERMODE> ret0
function ents.PlayerComponent:GetObserverModeProperty() end

--- 
--- @return ents.BaseObservableComponent ret0
function ents.PlayerComponent:GetObserverTarget() end

--- 
--- @return number ret0
function ents.PlayerComponent:GetRunSpeed() end

--- 
--- @return number ret0
function ents.PlayerComponent:GetStandEyeLevel() end

--- 
--- @return number ret0
function ents.PlayerComponent:GetStandHeight() end

--- 
--- @return number ret0
function ents.PlayerComponent:GetTimeConnected() end

--- 
function ents.PlayerComponent:GetViewOffset() end

--- 
--- @param arg1 int
--- @return bool ret0
function ents.PlayerComponent:IsKeyDown(arg1) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.PlayerComponent:GetViewPos() end

--- 
--- @return number ret0
function ents.PlayerComponent:GetWalkSpeed() end

--- 
function ents.PlayerComponent:IsInFirstPersonMode() end

--- 
--- @return bool ret0
function ents.PlayerComponent:IsLocalPlayer() end

--- 
function ents.PlayerComponent:Respawn() end

--- 
--- @param arg1 string
--- @param arg2 enum MESSAGE
function ents.PlayerComponent:PrintMessage(arg1, arg2) end

--- 
--- @param arg1 string
function ents.PlayerComponent:Kick(arg1) end

--- 
--- @param name string
--- @return bool ret0
function ents.PlayerComponent:SendResource(name) end

--- 
--- @param input int
--- @param pressed bool
function ents.PlayerComponent:SetActionInput(input, pressed) end

--- 
--- @param arg1 enum Action
--- @param arg2 number
function ents.PlayerComponent:SetActionInputAxisMagnitude(arg1, arg2) end

--- 
--- @param arg1 number
function ents.PlayerComponent:SetCrouchEyeLevel(arg1) end

--- 
--- @param arg1 number
function ents.PlayerComponent:SetCrouchHeight(arg1) end

--- 
--- @param arg1 number
function ents.PlayerComponent:SetCrouchedWalkSpeed(arg1) end

--- 
--- @param arg1 bool
function ents.PlayerComponent:SetFlashlightEnabled(arg1) end

--- 
--- @param arg1 enum OBSERVERMODE
function ents.PlayerComponent:SetObserverMode(arg1) end

--- 
--- @param arg1 ents.BaseObservableComponent
function ents.PlayerComponent:SetObserverTarget(arg1) end

--- 
--- @param arg1 number
function ents.PlayerComponent:SetSprintSpeed(arg1) end

--- 
--- @param arg1 number
function ents.PlayerComponent:SetStandHeight(arg1) end

--- 
--- @param offset vector.Vector
function ents.PlayerComponent:SetViewOffset(offset) end

--- 
--- @param arg1 number
function ents.PlayerComponent:SetWalkSpeed(arg1) end


--- @enum Event
ents.PlayerComponent = {
	EVENT_HANDLE_ACTION_INPUT = 76,
	EVENT_ON_OBSERVATION_MODE_CHANGED = 77,
}

--- @enum MessageType
ents.PlayerComponent = {
	MESSAGE_TYPE_CHAT = 1,
	MESSAGE_TYPE_CONSOLE = 0,
}

--- @enum Observermode
ents.PlayerComponent = {
	OBSERVERMODE_FIRSTPERSON = 1,
	OBSERVERMODE_THIRDPERSON = 2,
	OBSERVERMODE_NONE = 0,
	OBSERVERMODE_ROAMING = 4,
	OBSERVERMODE_SHOULDER = 3,
}

--- 
--- @class ents.PointAtTargetComponent: ents.BasePointAtTargetComponent
ents.PointAtTargetComponent = {}

--- 
--- @return ents.BaseEntityBase ret0
function ents.PointAtTargetComponent:GetPointAtTarget() end

--- 
--- @overload fun(target: ents.BaseEntityBase): 
function ents.PointAtTargetComponent:SetPointAtTarget() end


--- 
--- @class ents.PointConstraintBallSocketComponent: ents.BasePointConstraintBallSocketComponent
ents.PointConstraintBallSocketComponent = {}


--- 
--- @class ents.PointConstraintConeTwistComponent: ents.BasePointConstraintConeTwistComponent
ents.PointConstraintConeTwistComponent = {}


--- 
--- @class ents.PointConstraintDoFComponent: ents.BasePointConstraintDoFComponent
ents.PointConstraintDoFComponent = {}


--- 
--- @class ents.PointConstraintFixedComponent: ents.BasePointConstraintFixedComponent
ents.PointConstraintFixedComponent = {}


--- 
--- @class ents.PointConstraintHingeComponent: ents.BasePointConstraintHingeComponent
ents.PointConstraintHingeComponent = {}


--- 
--- @class ents.ViewBodyComponent: ents.EntityComponent
ents.ViewBodyComponent = {}


--- 
--- @class ents.PointTargetComponent: ents.BasePointTargetComponent
ents.PointTargetComponent = {}


--- 
--- @class ents.PropComponent: ents.BasePropComponent
ents.PropComponent = {}


--- 
--- @class ents.PropDynamicComponent: ents.BasePropDynamicComponent
ents.PropDynamicComponent = {}


--- 
--- @class ents.RadiusComponent: ents.BaseRadiusComponent
ents.RadiusComponent = {}

--- 
--- @return number ret0
function ents.RadiusComponent:GetRadius() end

--- 
--- @return class util::FloatProperty ret0
function ents.RadiusComponent:GetRadiusProperty() end

--- 
--- @param arg1 number
function ents.RadiusComponent:SetRadius(arg1) end


--- @enum EventOnRadiusChanged
ents.RadiusComponent = {
	EVENT_ON_RADIUS_CHANGED = 78,
}

--- 
--- @class ents.WindComponent: ents.BaseEnvWindComponent
ents.WindComponent = {}


--- 
--- @class ents.RasterizationRendererComponent: ents.EntityComponent
ents.RasterizationRendererComponent = {}

--- 
--- @return prosper.DescriptorSet ret0
function ents.RasterizationRendererComponent:GetLightSourceDescriptorSet() end

--- 
--- @param arg1 string
function ents.RasterizationRendererComponent:ClearShaderOverride(arg1) end

--- 
--- @param drawSceneInfo game.DrawSceneInfo
--- @return bool ret0
--- @overload fun(drawSceneInfo: game.DrawSceneInfo, rp: prosper.RenderPass): bool
function ents.RasterizationRendererComponent:BeginRenderPass(drawSceneInfo) end

--- 
--- @return prosper.Texture ret0
function ents.RasterizationRendererComponent:GetPostPrepassDepthTexture() end

--- 
--- @param arg1 game.DrawSceneInfo
--- @return bool ret0
function ents.RasterizationRendererComponent:EndRenderPass(arg1) end

--- 
--- @return prosper.CommandBufferRecorder ret0
function ents.RasterizationRendererComponent:GetLightingPassCommandBufferRecorder() end

--- 
--- @param arg1 game.DrawSceneInfo
function ents.RasterizationRendererComponent:ExecuteLightingPass(arg1) end

--- 
--- @param arg1 game.DrawSceneInfo
function ents.RasterizationRendererComponent:ExecutePrepass(arg1) end

--- 
--- @return prosper.Texture ret0
function ents.RasterizationRendererComponent:GetBloomTexture() end

--- 
--- @return prosper.DescriptorSet ret0
function ents.RasterizationRendererComponent:GetPostProcessingHDRColorDescriptorSet() end

--- 
--- @return prosper.DescriptorSet ret0
function ents.RasterizationRendererComponent:GetPostProcessingDepthDescriptorSet() end

--- 
--- @return prosper.CommandBufferRecorder ret0
function ents.RasterizationRendererComponent:GetPrepassCommandBufferRecorder() end

--- 
--- @param arg1 game.DrawSceneInfo
function ents.RasterizationRendererComponent:RecordLightingPass(arg1) end

--- 
--- @return prosper.Texture ret0
function ents.RasterizationRendererComponent:GetPrepassDepthTexture() end

--- 
--- @return enum pragma::CRasterizationRendererComponent::PrepassMode ret0
function ents.RasterizationRendererComponent:GetPrepassMode() end

--- 
--- @return prosper.Texture ret0
function ents.RasterizationRendererComponent:GetPrepassNormalTexture() end

--- 
--- @return class pragma::ShaderPrepassBase ret0
function ents.RasterizationRendererComponent:GetPrepassShader() end

--- 
--- @param arg1 bool
function ents.RasterizationRendererComponent:SetSSAOEnabled(arg1) end

--- 
--- @return prosper.RenderTarget ret0
function ents.RasterizationRendererComponent:GetRenderTarget() end

--- 
--- @return prosper.DescriptorSet ret0
function ents.RasterizationRendererComponent:GetRenderTargetTextureDescriptorSet() end

--- 
--- @return prosper.CommandBufferRecorder ret0
function ents.RasterizationRendererComponent:GetShadowCommandBufferRecorder() end

--- 
--- @return bool ret0
function ents.RasterizationRendererComponent:IsSSAOEnabled() end

--- 
--- @param arg1 game.DrawSceneInfo
function ents.RasterizationRendererComponent:RecordPrepass(arg1) end

--- 
function ents.RasterizationRendererComponent:ReloadPresentationRenderTarget() end

--- 
--- @param arg1 enum pragma::CRasterizationRendererComponent::PrepassMode
function ents.RasterizationRendererComponent:SetPrepassMode(arg1) end

--- 
--- @param arg1 string
--- @param arg2 string
function ents.RasterizationRendererComponent:SetShaderOverride(arg1, arg2) end

--- 
--- @param arg1 game.DrawSceneInfo
function ents.RasterizationRendererComponent:UpdateLightingPassRenderBuffers(arg1) end

--- 
--- @param arg1 game.DrawSceneInfo
function ents.RasterizationRendererComponent:UpdatePrepassRenderBuffers(arg1) end


--- @enum EventPreExecute
ents.RasterizationRendererComponent = {
	EVENT_PRE_EXECUTE_LIGHTING_PASS = 187,
	EVENT_PRE_EXECUTE_PREPASS = 185,
}

--- @enum Event
ents.RasterizationRendererComponent = {
	EVENT_ON_RECORD_PREPASS = 183,
	EVENT_ON_RECORD_LIGHTING_PASS = 184,
}

--- @enum EventPost
ents.RasterizationRendererComponent = {
	EVENT_POST_PREPASS = 190,
	EVENT_POST_LIGHTING_PASS = 192,
}

--- @enum EventPostExecute
ents.RasterizationRendererComponent = {
	EVENT_POST_EXECUTE_PREPASS = 186,
	EVENT_POST_EXECUTE_LIGHTING_PASS = 188,
}

--- @enum PrepassMode
ents.RasterizationRendererComponent = {
	PREPASS_MODE_DISABLED = 0,
	PREPASS_MODE_DEPTH_ONLY = 1,
	PREPASS_MODE_EXTENDED = 2,
}

--- @enum EventPre
ents.RasterizationRendererComponent = {
	EVENT_PRE_LIGHTING_PASS = 191,
	EVENT_PRE_PREPASS = 189,
}

--- 
--- @class ents.RaytracingComponent: ents.EntityComponent
ents.RaytracingComponent = {}


--- 
--- @class ents.ReflectionProbeComponent: ents.EntityComponent
ents.ReflectionProbeComponent = {}

--- 
--- @return string ret0
function ents.ReflectionProbeComponent:GetIBLMaterialFilePath() end

--- 
--- @return bool ret0
--- @overload fun(renderJob: bool): bool
--- @overload fun(tEnts: ): bool
--- @overload fun(tEnts: , renderJob: bool): bool
function ents.ReflectionProbeComponent:CaptureIBLReflectionsFromScene() end

--- 
--- @return string ret0
function ents.ReflectionProbeComponent:GetLocationIdentifier() end

--- 
--- @param arg1 util.ImageBuffer
--- @return bool ret0
function ents.ReflectionProbeComponent:GenerateFromEquirectangularImage(arg1) end

--- 
--- @return number ret0
function ents.ReflectionProbeComponent:GetIBLStrength() end

--- 
--- @return bool ret0
function ents.ReflectionProbeComponent:RequiresRebuild() end

--- 
--- @param arg1 number
function ents.ReflectionProbeComponent:SetIBLStrength(arg1) end


--- 
--- @class ents.StaticBvhCacheComponent: ents.BaseStaticBvhCacheComponent
ents.StaticBvhCacheComponent = {}

--- 
--- @param arg1 ents.BaseEntityBase
function ents.StaticBvhCacheComponent:AddEntity(arg1) end

--- 
--- @param ent ents.BaseEntityBase
function ents.StaticBvhCacheComponent:RemoveEntity(ent) end

--- 
--- @return int ret0
function ents.StaticBvhCacheComponent:GetTriangleCount() end

--- 
--- @param primIdx int
--- @return class util::TWeakSharedHandle<class BaseEntity> ret0_1
--- @return game.Model.Mesh.Sub ret0_2
function ents.StaticBvhCacheComponent:FindPrimitiveMeshInfo(primIdx) end

--- 
--- @param arg1 math.Vector
--- @param arg2 math.Vector
--- @param arg3 number
--- @param arg4 number
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector, arg3: number, arg4: number): 
function ents.StaticBvhCacheComponent:DebugDrawBvhTree(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 int
--- @return math.Vector ret0
--- @overload fun(arg1: int): math.Vector
function ents.StaticBvhCacheComponent:GetVertex(arg1) end

--- 
function ents.StaticBvhCacheComponent:RebuildBvh() end

--- 
--- @param arg1 ents.BaseEntityBase
function ents.StaticBvhCacheComponent:SetEntityDirty(arg1) end


--- 
--- @class ents.StaticBvhCacheComponent.IntersectionMeshInfo
--- @field entity  
--- @field mesh  
ents.StaticBvhCacheComponent.IntersectionMeshInfo = {}


--- 
--- @class ents.RenderComponent: ents.BaseRenderComponent
ents.RenderComponent = {}

--- 
--- @param arg1 enum pragma::rendering::RenderMask
--- @overload fun(arg1: string): 
function ents.RenderComponent:AddToRenderGroup(arg1) end

--- 
function ents.RenderComponent:ClearBuffers() end

--- 
--- @param arg1 enum pragma::rendering::RenderMask
--- @return bool ret0
function ents.RenderComponent:IsInRenderGroup(arg1) end

--- 
function ents.RenderComponent:GetDepthBias() end

--- 
--- @param start vector.Vector
--- @param dir vector.Vector
--- @overload fun(start: vector.Vector, dir: vector.Vector, precise: bool): 
function ents.RenderComponent:CalcRayIntersection(start, dir) end

--- 
--- @return number ret0
function ents.RenderComponent:GetTranslucencyPassDistanceOverrideSqr() end

--- 
function ents.RenderComponent:GetLocalRenderSphereBounds() end

--- 
function ents.RenderComponent:ClearDepthBias() end

--- 
function ents.RenderComponent:ClearRenderClipPlane() end

--- 
function ents.RenderComponent:GetAbsoluteRenderBounds() end

--- 
--- @param arg1 enum pragma::rendering::RenderMask
function ents.RenderComponent:SetRenderGroups(arg1) end

--- 
--- @param exempt bool
function ents.RenderComponent:SetExemptFromOcclusionCulling(exempt) end

--- 
function ents.RenderComponent:ClearRenderOffsetTransform() end

--- 
function ents.RenderComponent:ClearTranslucencyPassDistanceOverride() end

--- 
function ents.RenderComponent:IsReceivingShadows() end

--- 
function ents.RenderComponent:GetAbsoluteRenderSphereBounds() end

--- 
--- @return enum pragma::rendering::RenderMask ret0
function ents.RenderComponent:GetRenderGroups() end

--- 
function ents.RenderComponent:GetBoneBuffer() end

--- 
--- @return bool ret0
function ents.RenderComponent:GetCastShadows() end

--- 
function ents.RenderComponent:SetRenderBufferDirty() end

--- 
function ents.RenderComponent:GetLODMeshes() end

--- 
function ents.RenderComponent:GetLocalRenderBounds() end

--- 
--- @param lod int
function ents.RenderComponent:GetLodRenderMeshes(lod) end

--- 
--- @param clipPlane math.Vector4
function ents.RenderComponent:SetRenderClipPlane(clipPlane) end

--- 
--- @param arg1 bool
function ents.RenderComponent:SetCastShadows(arg1) end

--- 
function ents.RenderComponent:GetRenderBuffer() end

--- 
function ents.RenderComponent:GetRenderClipPlane() end

--- 
function ents.RenderComponent:GetRenderGroupsProperty() end

--- 
function ents.RenderComponent:GetRenderMeshes() end

--- 
function ents.RenderComponent:GetRenderOffsetTransform() end

--- 
--- @return bool ret0
function ents.RenderComponent:ShouldCastShadows() end

--- 
function ents.RenderComponent:GetRenderPose() end

--- 
--- @return bool ret0
function ents.RenderComponent:ShouldDrawShadow() end

--- 
--- @param arg1 number
function ents.RenderComponent:SetTranslucencyPassDistanceOverride(arg1) end

--- 
--- @return enum pragma::rendering::SceneRenderPass ret0
function ents.RenderComponent:GetSceneRenderPass() end

--- 
function ents.RenderComponent:GetSceneRenderPassProperty() end

--- 
function ents.RenderComponent:GetTransformationMatrix() end

--- 
function ents.RenderComponent:IsDepthPassEnabled() end

--- 
function ents.RenderComponent:IsExemptFromOcclusionCulling() end

--- 
--- @param arg1 vector.Vector
--- @return bool ret0
--- @overload fun(arg1: vector.Vector, arg2: ents.WorldComponent): bool
function ents.RenderComponent:IsInPvs(arg1) end

--- 
--- @param arg1 enum pragma::rendering::SceneRenderPass
function ents.RenderComponent:SetSceneRenderPass(arg1) end

--- 
--- @param arg1 enum pragma::rendering::RenderMask
--- @overload fun(arg1: string): 
function ents.RenderComponent:RemoveFromRenderGroup(arg1) end

--- 
--- @param d number
--- @param delta number
function ents.RenderComponent:SetDepthBias(d, delta) end

--- 
--- @param depthPassEnabled bool
function ents.RenderComponent:SetDepthPassEnabled(depthPassEnabled) end

--- 
--- @param min vector.Vector
--- @param max vector.Vector
function ents.RenderComponent:SetLocalRenderBounds(min, max) end

--- 
--- @param enabled bool
function ents.RenderComponent:SetReceiveShadows(enabled) end

--- 
--- @param pose math.ScaledTransform
function ents.RenderComponent:SetRenderOffsetTransform(pose) end

--- 
--- @return bool ret0
function ents.RenderComponent:ShouldDraw() end


--- @enum Event
ents.RenderComponent = {
	EVENT_ON_DEPTH_BIAS_CHANGED = 154,
	EVENT_ON_CLIP_PLANE_CHANGED = 153,
	EVENT_ON_RENDER_BOUNDS_CHANGED = 146,
	EVENT_ON_RENDER_MODE_CHANGED = 147,
	EVENT_ON_RENDER_BUFFERS_INITIALIZED = 145,
	EVENT_ON_UPDATE_RENDER_MATRICES = 151,
	EVENT_UPDATE_INSTANTIABILITY = 152,
}

--- @enum EventShould
ents.RenderComponent = {
	EVENT_SHOULD_DRAW = 148,
	EVENT_SHOULD_DRAW_SHADOW = 149,
}

--- @enum Rendermode
ents.RenderComponent = {
	RENDERMODE_NONE = 0,
	RENDERMODE_WORLD = 1,
	RENDERMODE_SKYBOX = 3,
	RENDERMODE_VIEW = 2,
	RENDERMODE_WATER = 4,
}

--- 
--- @class ents.RendererPpBloomComponent: ents.EntityComponent
ents.RendererPpBloomComponent = {}

--- 
--- @return number ret0
function ents.RendererPpBloomComponent:GetBlurSigma() end

--- 
--- @return number ret0
function ents.RendererPpBloomComponent:GetBloomThreshold() end

--- 
--- @return int ret0
function ents.RendererPpBloomComponent:GetBlurAmount() end

--- 
--- @return int ret0
function ents.RendererPpBloomComponent:GetBlurRadius() end

--- 
--- @param arg1 number
function ents.RendererPpBloomComponent:SetBlurSigma(arg1) end

--- 
--- @param arg1 number
function ents.RendererPpBloomComponent:SetBloomThreshold(arg1) end

--- 
--- @param arg1 int
function ents.RendererPpBloomComponent:SetBlurAmount(arg1) end

--- 
--- @param arg1 int
function ents.RendererPpBloomComponent:SetBlurRadius(arg1) end


--- 
--- @class ents.RendererPpDoFComponent: ents.EntityComponent
ents.RendererPpDoFComponent = {}


--- 
--- @class ents.RendererPpFogComponent: ents.EntityComponent
ents.RendererPpFogComponent = {}


--- 
--- @class ents.RendererPpFxaaComponent: ents.EntityComponent
ents.RendererPpFxaaComponent = {}


--- 
--- @class ents.RendererPpGlowComponent: ents.EntityComponent
ents.RendererPpGlowComponent = {}

--- 
--- @return int ret0
function ents.RendererPpGlowComponent:GetBlurAmount() end

--- 
--- @return int ret0
function ents.RendererPpGlowComponent:GetBlurRadius() end

--- 
--- @return number ret0
function ents.RendererPpGlowComponent:GetBlurSigma() end

--- 
--- @param arg1 int
function ents.RendererPpGlowComponent:SetBlurAmount(arg1) end

--- 
--- @param arg1 int
function ents.RendererPpGlowComponent:SetBlurRadius(arg1) end

--- 
--- @param arg1 number
function ents.RendererPpGlowComponent:SetBlurSigma(arg1) end


--- 
--- @class ents.RendererPpToneMappingComponent: ents.EntityComponent
ents.RendererPpToneMappingComponent = {}

--- 
--- @param arg1 bool
function ents.RendererPpToneMappingComponent:SetApplyToHdrImage(arg1) end


--- 
--- @class ents.ScoreComponent: ents.BaseScoreComponent
ents.ScoreComponent = {}

--- 
--- @param arg1 int
function ents.ScoreComponent:AddScore(arg1) end

--- 
--- @return int ret0
function ents.ScoreComponent:GetScore() end

--- 
--- @return class util::Int32Property ret0
function ents.ScoreComponent:GetScoreProperty() end

--- 
--- @param arg1 int
function ents.ScoreComponent:SetScore(arg1) end

--- 
--- @param arg1 int
function ents.ScoreComponent:SubtractScore(arg1) end


--- @enum EventOnScoreChanged
ents.ScoreComponent = {
	EVENT_ON_SCORE_CHANGED = 60,
}

--- 
--- @class ents.ShadowManagerComponent: ents.EntityComponent
ents.ShadowManagerComponent = {}


--- 
--- @class ents.ShadowMapComponent: ents.EntityComponent
ents.ShadowMapComponent = {}


--- 
--- @class ents.ShooterComponent: ents.BaseShooterComponent
ents.ShooterComponent = {}

--- 
--- @param o any
--- @overload fun(o: any, bHitReport: bool): 
--- @overload fun(o: any, bHitReport: bool, bMaster: bool): 
function ents.ShooterComponent:FireBullets(o) end


--- @enum EventOnFireBullets
ents.ShooterComponent = {
	EVENT_ON_FIRE_BULLETS = 102,
}

--- 
--- @class ents.SkyCameraComponent: ents.EntityComponent
ents.SkyCameraComponent = {}


--- 
--- @class ents.SmokeTrailComponent: ents.BaseEnvSmokeTrailComponent
ents.SmokeTrailComponent = {}


--- 
--- @class ents.SoftBodyComponent: ents.BaseSoftBodyComponent
ents.SoftBodyComponent = {}


--- 
--- @class ents.SoundComponent: ents.BaseEnvSoundComponent
ents.SoundComponent = {}

--- 
--- @param arg1 number
function ents.SoundComponent:SetGain(arg1) end

--- 
--- @return number ret0
function ents.SoundComponent:GetOffset() end

--- 
--- @return sound.Source ret0
--- @overload fun(): sound.Source
function ents.SoundComponent:GetSound() end

--- 
--- @return number ret0
function ents.SoundComponent:GetTimeOffset() end

--- 
function ents.SoundComponent:Play() end

--- 
--- @param arg1 bool
function ents.SoundComponent:SetPlayOnSpawn(arg1) end

--- 
--- @return bool ret0
function ents.SoundComponent:IsPaused() end

--- 
function ents.SoundComponent:Pause() end

--- 
function ents.SoundComponent:Stop() end

--- 
--- @return bool ret0
function ents.SoundComponent:IsPlaying() end

--- 
--- @param arg1 number
function ents.SoundComponent:SetInnerConeAngle(arg1) end

--- 
--- @param arg1 bool
function ents.SoundComponent:SetLooping(arg1) end

--- 
--- @param arg1 number
function ents.SoundComponent:SetMaxGain(arg1) end

--- 
--- @param arg1 number
function ents.SoundComponent:SetMaxDistance(arg1) end

--- 
--- @param arg1 number
function ents.SoundComponent:SetMinGain(arg1) end

--- 
--- @param arg1 number
function ents.SoundComponent:SetOuterConeAngle(arg1) end

--- 
--- @param arg1 number
function ents.SoundComponent:SetOffset(arg1) end

--- 
--- @param arg1 number
function ents.SoundComponent:SetPitch(arg1) end

--- 
--- @param arg1 number
function ents.SoundComponent:SetReferenceDistance(arg1) end

--- 
--- @param arg1 bool
function ents.SoundComponent:SetRelativeToListener(arg1) end

--- 
--- @param arg1 number
function ents.SoundComponent:SetRolloffFactor(arg1) end

--- 
--- @param arg1 string
function ents.SoundComponent:SetSoundSource(arg1) end

--- 
--- @param arg1 enum ALSoundType
function ents.SoundComponent:SetSoundTypes(arg1) end

--- 
--- @param arg1 number
function ents.SoundComponent:SetTimeOffset(arg1) end


--- 
--- @class ents.SoundDspDistortionComponent: ents.BaseEnvSoundDspComponent
ents.SoundDspDistortionComponent = {}


--- 
--- @class ents.SoundDspEAXReverbComponent: ents.BaseEnvSoundDspComponent
ents.SoundDspEAXReverbComponent = {}


--- 
--- @class ents.SoundDspEqualizerComponent: ents.BaseEnvSoundDspComponent
ents.SoundDspEqualizerComponent = {}


--- 
--- @class ents.SoundDspFlangerComponent: ents.BaseEnvSoundDspComponent
ents.SoundDspFlangerComponent = {}


--- 
--- @class ents.SoundEmitterComponent: ents.BaseSoundEmitterComponent
ents.SoundEmitterComponent = {}

--- 
--- @param snd string
--- @param type enum ALSoundType
--- @return sound.Source ret0
--- @overload fun(arg1: string, arg2: enum ALSoundType, arg3: ents.SoundEmitterComponent.SoundInfo): sound.Source
--- @overload fun(snd: string, type: enum ALSoundType): sound.Source
--- @overload fun(arg1: string, arg2: enum ALSoundType, arg3: ents.SoundEmitterComponent.SoundInfo): sound.Source
function ents.SoundEmitterComponent:CreateSound(snd, type) end

--- 
--- @param snd string
--- @param type enum ALSoundType
--- @return sound.Source ret0
--- @overload fun(arg1: string, arg2: enum ALSoundType, arg3: ents.SoundEmitterComponent.SoundInfo): sound.Source
--- @overload fun(snd: string, type: enum ALSoundType): sound.Source
--- @overload fun(arg1: string, arg2: enum ALSoundType, arg3: ents.SoundEmitterComponent.SoundInfo): sound.Source
function ents.SoundEmitterComponent:EmitSound(snd, type) end

--- 
function ents.SoundEmitterComponent:GetSounds() end

--- 
function ents.SoundEmitterComponent:StopSounds() end


--- @enum EventOnSoundCreated
ents.SoundEmitterComponent = {
	EVENT_ON_SOUND_CREATED = 79,
}

--- 
--- @class ents.SoundEmitterComponent.SoundInfo
--- @field gain  
--- @field transmit  
--- @field pitch  
--- @overload fun():ents.SoundEmitterComponent.SoundInfo
--- @overload fun(arg1: number):ents.SoundEmitterComponent.SoundInfo
--- @overload fun(arg1: number, arg2: number):ents.SoundEmitterComponent.SoundInfo
ents.SoundEmitterComponent.SoundInfo = {}


--- 
--- @class ents.TriggerTeleportComponent: ents.BaseTriggerTeleportComponent
ents.TriggerTeleportComponent = {}


--- 
--- @class ents.SpriteComponent: ents.BaseEnvSpriteComponent
ents.SpriteComponent = {}

--- 
function ents.SpriteComponent:StopAndRemoveEntity() end


--- 
--- @class ents.SubmergibleComponent: ents.EntityComponent
ents.SubmergibleComponent = {}

--- 
--- @return bool ret0
function ents.SubmergibleComponent:IsSubmerged() end

--- 
--- @return bool ret0
function ents.SubmergibleComponent:IsInWater() end

--- 
--- @return number ret0
function ents.SubmergibleComponent:GetSubmergedFraction() end

--- 
--- @return class util::FloatProperty ret0
function ents.SubmergibleComponent:GetSubmergedFractionProperty() end

--- 
--- @return ents.BaseEntityBase ret0
function ents.SubmergibleComponent:GetWaterEntity() end

--- 
--- @return bool ret0
function ents.SubmergibleComponent:IsFullySubmerged() end


--- @enum Event
ents.SubmergibleComponent = {
	EVENT_ON_WATER_EMERGED = 6,
	EVENT_ON_WATER_ENTERED = 7,
	EVENT_ON_WATER_EXITED = 8,
	EVENT_ON_WATER_SUBMERGED = 5,
}

--- 
--- @class ents.SurfaceComponent: ents.BaseSurfaceComponent
ents.SurfaceComponent = {}

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.SurfaceComponent:GetPlaneNormal() end

--- 
--- @return number ret0
function ents.SurfaceComponent:GetPlaneDistance() end

--- 
--- @param lineOrigin math.Vector
--- @param lineDir math.Vector
--- @return bool ret0_1
--- @return number ret0_2
--- @overload fun(lineOrigin: vector.Vector, lineDir: vector.Vector): bool, number
function ents.SurfaceComponent:CalcLineSurfaceIntersection(lineOrigin, lineDir) end

--- 
--- @return game.Model.Mesh ret0_1
--- @return game.Model.Mesh.Sub ret0_2
--- @return game.Material ret0_3
--- @overload fun(oFilter: any): game.Model.Mesh, game.Model.Mesh.Sub, game.Material
function ents.SurfaceComponent:FindAndAssignSurfaceMesh() end

--- 
--- @return game.Model.Mesh.Sub ret0
function ents.SurfaceComponent:GetMesh() end

--- 
function ents.SurfaceComponent:Clear() end

--- 
--- @return math.Plane ret0
function ents.SurfaceComponent:GetPlane() end

--- 
--- @return math.Quaternion ret0
function ents.SurfaceComponent:GetPlaneRotation() end

--- 
--- @return math.Plane ret0
function ents.SurfaceComponent:GetPlaneWs() end

--- 
--- @param arg1 math.Vector
--- @return bool ret0
--- @overload fun(arg1: vector.Vector): bool
function ents.SurfaceComponent:IsPointBelowSurface(arg1) end

--- 
--- @param arg1 math.Vector
--- @return math.Vector ret0
--- @overload fun(arg1: vector.Vector): math.Vector
function ents.SurfaceComponent:ProjectToSurface(arg1) end

--- 
--- @param arg1 math.Vector
--- @param arg2 number
--- @overload fun(arg1: math.Plane): 
--- @overload fun(arg1: vector.Vector, arg2: number): 
function ents.SurfaceComponent:SetPlane(arg1, arg2) end

--- 
--- @param arg1 number
function ents.SurfaceComponent:SetPlaneDistance(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.SurfaceComponent:SetPlaneNormal(arg1) end


--- @enum EventOnSurfacePlaneChanged
ents.SurfaceComponent = {
	EVENT_ON_SURFACE_PLANE_CHANGED = 60,
}

--- 
--- @class ents.ToggleComponent: ents.BaseToggleComponent
ents.ToggleComponent = {}

--- 
--- @return class util::BoolProperty ret0
function ents.ToggleComponent:GetTurnedOnProperty() end

--- 
--- @return bool ret0
function ents.ToggleComponent:IsTurnedOff() end

--- 
--- @return bool ret0
function ents.ToggleComponent:IsTurnedOn() end

--- 
--- @param arg1 bool
function ents.ToggleComponent:SetTurnedOn(arg1) end

--- 
function ents.ToggleComponent:Toggle() end

--- 
function ents.ToggleComponent:TurnOff() end

--- 
function ents.ToggleComponent:TurnOn() end


--- @enum Event
ents.ToggleComponent = {
	EVENT_ON_TURN_OFF = 81,
	EVENT_ON_TURN_ON = 80,
}

--- @enum SpawnFlagStartOnBit
ents.ToggleComponent = {
	SPAWN_FLAG_START_ON_BIT = 1024,
}

--- 
--- @class ents.TouchComponent: ents.BaseTouchComponent
ents.TouchComponent = {}

--- 
--- @return any ret0
function ents.TouchComponent:GetTouchingEntities() end

--- 
--- @return enum pragma::BaseTouchComponent::TriggerFlags ret0
function ents.TouchComponent:GetTriggerFlags() end

--- 
--- @return int ret0
function ents.TouchComponent:GetTouchingEntityCount() end

--- 
--- @param arg1 enum pragma::BaseTouchComponent::TriggerFlags
function ents.TouchComponent:SetTriggerFlags(arg1) end


--- @enum Event
ents.TouchComponent = {
	EVENT_CAN_TRIGGER = 97,
	EVENT_ON_END_TOUCH = 99,
	EVENT_ON_START_TOUCH = 98,
	EVENT_ON_TRIGGER = 100,
	EVENT_ON_TRIGGER_INITIALIZED = 101,
}

--- @enum TriggerFlag
ents.TouchComponent = {
	TRIGGER_FLAG_EVERYTHING = 7,
	TRIGGER_FLAG_NONE = 0,
}

--- @enum TriggerFlagBit
ents.TouchComponent = {
	TRIGGER_FLAG_BIT_PLAYERS = 1,
	TRIGGER_FLAG_BIT_NPCS = 2,
	TRIGGER_FLAG_BIT_PHYSICS = 4,
}

--- 
--- @class ents.TransformComponent: ents.BaseTransformComponent
ents.TransformComponent = {}

--- 
--- @return number ret0
function ents.TransformComponent:GetAbsMaxAxisScale() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.TransformComponent:GetScale() end

--- 
--- @return number ret0
function ents.TransformComponent:GetLastMoveTime() end

--- 
--- @param hOther ents.BaseTransformComponent
--- @overload fun(other: ents.BaseEntityBase, bIgnoreYAxis: bool): 
--- @overload fun(hOther: ents.BaseTransformComponent, bIgnoreYAxis: bool): 
--- @overload fun(): 
--- @overload fun(arg1: ents.BaseEntityBase, arg2: bool): 
--- @overload fun(arg1: ents.BaseEntityBase, arg2: bool): 
--- @overload fun(arg1: math.Vector, arg2: bool): 
--- @overload fun(arg1: math.Vector, arg2: bool): 
--- @overload fun(arg1: vector.Vector, arg2: bool): 
function ents.TransformComponent:GetAngles(hOther) end

--- 
--- @param hOther ents.BaseTransformComponent
--- @return number ret0
--- @overload fun(arg1: ents.BaseEntityBase): number
--- @overload fun(arg1: math.Vector): number
--- @overload fun(arg1: vector.Vector): number
function ents.TransformComponent:GetDistance(hOther) end

--- 
--- @return number ret0
function ents.TransformComponent:GetMaxAxisScale() end

--- 
--- @param hOther ents.BaseTransformComponent
--- @overload fun(hOther: ents.BaseTransformComponent, bIgnoreYAxis: bool): 
--- @overload fun(arg1: math.Vector, arg2: bool): 
--- @overload fun(arg1: math.Vector, arg2: bool): 
--- @overload fun(arg1: ents.BaseEntityBase, arg2: bool): 
--- @overload fun(arg1: ents.BaseEntityBase, arg2: bool): 
--- @overload fun(arg1: vector.Vector, arg2: bool): 
--- @overload fun(arg1: ents.BaseEntityBase, arg2: bool): 
function ents.TransformComponent:GetDirection(hOther) end

--- 
--- @param arg1 math.Vector
--- @param arg2 bool
--- @return number ret0
--- @overload fun(arg1: math.Vector, arg2: bool): number
--- @overload fun(arg1: ents.BaseEntityBase, arg2: bool): number
--- @overload fun(arg1: ents.BaseEntityBase, arg2: bool): number
--- @overload fun(hOther: ents.BaseTransformComponent): number
--- @overload fun(other: ents.BaseEntityBase, bIgnoreYAxis: bool): number
--- @overload fun(hOther: ents.BaseTransformComponent, bIgnoreYAxis: bool): number
--- @overload fun(p: math.Vector, bIgnoreYAxis: bool): number
--- @overload fun(arg1: vector.Vector, arg2: bool): number
--- @overload fun(p: vector.Vector, bIgnoreYAxis: bool): number
function ents.TransformComponent:GetDotProduct(arg1, arg2) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: number): 
--- @overload fun(arg1: vector.Vector): 
function ents.TransformComponent:SetScale(arg1) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.TransformComponent:GetEyeOffset() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.TransformComponent:GetUp() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.TransformComponent:GetEyePos() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.TransformComponent:GetForward() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.TransformComponent:GetOrigin() end

--- 
--- @param arg1 math.Vector
--- @param arg2 bool
--- @overload fun(arg1: math.Vector): 
--- @overload fun(arg1: vector.Vector, arg2: bool): 
--- @overload fun(arg1: vector.Vector): 
function ents.TransformComponent:SetPos(arg1, arg2) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.TransformComponent:GetRight() end

--- 
--- @return number ret0
function ents.TransformComponent:GetPitch() end

--- 
--- @param origin math.Vector
--- @param rot math.Quaternion
--- @overload fun(rot: math.Quaternion): 
--- @overload fun(origin: math.Vector): 
--- @overload fun(origin: vector.Vector, rot: math.Quaternion): 
--- @overload fun(origin: vector.Vector): 
function ents.TransformComponent:LocalToWorld(origin, rot) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.TransformComponent:GetPos() end

--- 
--- @return number ret0
function ents.TransformComponent:GetRoll() end

--- 
--- @return math.Quaternion ret0
function ents.TransformComponent:GetRotation() end

--- 
--- @return number ret0
function ents.TransformComponent:GetYaw() end

--- 
--- @param arg1 math.EulerAngles
function ents.TransformComponent:SetAngles(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.TransformComponent:SetEyeOffset(arg1) end

--- 
--- @param arg1 number
function ents.TransformComponent:SetPitch(arg1) end

--- 
--- @param arg1 number
function ents.TransformComponent:SetRoll(arg1) end

--- 
--- @param arg1 math.Quaternion
function ents.TransformComponent:SetRotation(arg1) end

--- 
--- @param arg1 number
function ents.TransformComponent:SetYaw(arg1) end

--- 
--- @param arg1 math.Transform
function ents.TransformComponent:Teleport(arg1) end

--- 
--- @param origin math.Vector
--- @param rot math.Quaternion
--- @overload fun(rot: math.Quaternion): 
--- @overload fun(origin: math.Vector): 
--- @overload fun(origin: vector.Vector, rot: math.Quaternion): 
--- @overload fun(origin: vector.Vector): 
function ents.TransformComponent:WorldToLocal(origin, rot) end


--- @enum Event
ents.TransformComponent = {
	EVENT_ON_POSE_CHANGED = 84,
	EVENT_ON_TELEPORT = 85,
}

--- @enum EventOnPoseChanged
ents.TransformComponent = {
	EVENT_ON_POSE_CHANGED = 84,
}

--- 
--- @class ents.TriggerGravityComponent: ents.BaseEntityTriggerGravityComponent
ents.TriggerGravityComponent = {}


--- 
--- @class ents.TriggerHurtComponent: ents.BaseTriggerHurtComponent
ents.TriggerHurtComponent = {}


--- 
--- @class ents.TriggerPushComponent: ents.BaseTriggerPushComponent
ents.TriggerPushComponent = {}


--- 
--- @class ents.UniversalComponentReference: ents.UniversalEntityReference
ents.UniversalComponentReference = {}

--- 
--- @param arg1 class Game
--- @return ents.EntityComponent ret0
function ents.UniversalComponentReference:GetComponent(arg1) end

--- 
--- @return int ret0
function ents.UniversalComponentReference:GetComponentId() end

--- 
--- @return string ret0
function ents.UniversalComponentReference:GetComponentName() end


--- 
--- @class ents.UniversalEntityReference
--- @overload fun(args: util.Uuid):ents.UniversalEntityReference
--- @overload fun(arg1: string):ents.UniversalEntityReference
--- @overload fun(arg1: ents.BaseEntityBase):ents.UniversalEntityReference
ents.UniversalEntityReference = {}

--- 
--- @return string ret0
function ents.UniversalEntityReference:GetClassOrName() end

--- 
--- @param arg1 class Game
--- @return ents.BaseEntityBase ret0
function ents.UniversalEntityReference:GetEntity(arg1) end

--- 
--- @return util.Uuid ret0
function ents.UniversalEntityReference:GetUuid() end

--- 
function ents.UniversalEntityReference:__tostring() end


--- 
--- @class ents.UniversalMemberReference: ents.UniversalComponentReference, ents.UniversalEntityReference
ents.UniversalMemberReference = {}

--- 
--- @param ref ents.UniversalMemberReference
--- @return int ret0
function ents.UniversalMemberReference:GetMemberIndex(ref) end

--- 
--- @param arg1 class Game
--- @return ents.ComponentInfo.MemberInfo ret0
function ents.UniversalMemberReference:GetMemberInfo(arg1) end

--- 
--- @param ref ents.UniversalMemberReference
--- @return string ret0
function ents.UniversalMemberReference:GetMemberName(ref) end

--- 
--- @param ref ents.UniversalMemberReference
--- @return string ret0
function ents.UniversalMemberReference:GetPath(ref) end

--- 
--- @param ref ents.UniversalMemberReference
--- @return struct luabind::adl::udm_type<class luabind::adl::object,1,1,1> ret0
function ents.UniversalMemberReference:GetValue(ref) end


--- 
--- @class ents.UsableComponent: ents.EntityComponent
ents.UsableComponent = {}


--- @enum Event
ents.UsableComponent = {
	EVENT_CAN_USE = 10,
	EVENT_ON_USE = 9,
}

--- 
--- @class ents.VehicleComponent: ents.BaseVehicleComponent
ents.VehicleComponent = {}

--- 
function ents.VehicleComponent:ClearDriver() end

--- 
--- @return phys.Vehicle ret0
function ents.VehicleComponent:GetPhysicsVehicle() end

--- 
--- @return ents.BaseEntityBase ret0
function ents.VehicleComponent:GetDriver() end

--- 
--- @return number ret0
function ents.VehicleComponent:GetSpeedKmh() end

--- 
--- @return number ret0
function ents.VehicleComponent:GetSteeringFactor() end

--- 
--- @return ents.BaseEntityBase ret0
function ents.VehicleComponent:GetSteeringWheel() end

--- 
--- @param arg1 ents.BaseEntityBase
function ents.VehicleComponent:SetDriver(arg1) end

--- 
--- @return bool ret0
function ents.VehicleComponent:HasDriver() end

--- 
--- @param arg1 phys.VehicleCreateInfo
--- @param arg2 table
function ents.VehicleComponent:SetupPhysics(arg1, arg2) end

--- 
--- @param arg1 string
--- @param arg2 number
function ents.VehicleComponent:SetupSteeringWheel(arg1, arg2) end


--- @enum Event
ents.VehicleComponent = {
	EVENT_ON_DRIVER_EXITED = 84,
	EVENT_ON_DRIVER_ENTERED = 83,
}

--- 
--- @class ents.VelocityComponent: ents.EntityComponent
ents.VelocityComponent = {}

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.VelocityComponent:AddAngularVelocity(arg1) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.VelocityComponent:GetAngularVelocity() end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.VelocityComponent:AddLocalAngularVelocity(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.VelocityComponent:AddLocalVelocity(arg1) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.VelocityComponent:GetLocalAngularVelocity() end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.VelocityComponent:AddVelocity(arg1) end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.VelocityComponent:GetLocalVelocity() end

--- 
--- @return class util::Vector3Property ret0
function ents.VelocityComponent:GetAngularVelocityProperty() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function ents.VelocityComponent:GetVelocity() end

--- 
--- @return class util::Vector3Property ret0
function ents.VelocityComponent:GetVelocityProperty() end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.VelocityComponent:SetAngularVelocity(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.VelocityComponent:SetLocalAngularVelocity(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.VelocityComponent:SetLocalVelocity(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function ents.VelocityComponent:SetVelocity(arg1) end


--- 
--- @class ents.ViewModelComponent: ents.EntityComponent
ents.ViewModelComponent = {}

--- 
--- @return ents.PlayerComponent ret0
function ents.ViewModelComponent:GetPlayer() end

--- 
--- @return ents.WeaponComponent ret0
function ents.ViewModelComponent:GetWeapon() end


--- 
--- @class ents.WaterComponent: ents.BaseFuncWaterComponent
ents.WaterComponent = {}

--- 
--- @overload fun(localSpace: bool): 
function ents.WaterComponent:GetWaterPlane() end

--- 
--- @param arg1 math.Vector
--- @param arg2 math.Vector
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 bool
--- @return bool ret0
--- @overload fun(lineOrigin: math.Vector, lineDir: math.Vector): bool
function ents.WaterComponent:CalcLineSurfaceIntersection(arg1, arg2, arg3, arg4, arg5, arg6) end

--- 
--- @param arg1 math.Vector
--- @param arg2 number
--- @param arg3 number
function ents.WaterComponent:CreateSplash(arg1, arg2, arg3) end

--- 
--- @param arg1 number
function ents.WaterComponent:SetLinearDragCoefficient(arg1) end

--- 
--- @return number ret0
function ents.WaterComponent:GetDensity() end

--- 
--- @return number ret0
function ents.WaterComponent:GetLinearDragCoefficient() end

--- 
--- @return number ret0
function ents.WaterComponent:GetPropagation() end

--- 
--- @return ents.SceneComponent ret0
function ents.WaterComponent:GetReflectionScene() end

--- 
--- @return number ret0
function ents.WaterComponent:GetTorqueDragCoefficient() end

--- 
--- @return number ret0
function ents.WaterComponent:GetStiffness() end

--- 
--- @param arg1 math.Vector
--- @return math.Vector ret0
function ents.WaterComponent:ProjectToSurface(arg1) end

--- 
--- @return prosper.Texture ret0
function ents.WaterComponent:GetWaterSceneDepthTexture() end

--- 
--- @return prosper.Texture ret0
function ents.WaterComponent:GetWaterSceneTexture() end

--- 
--- @return math.Vector ret0
function ents.WaterComponent:GetWaterVelocity() end

--- 
--- @param arg1 number
function ents.WaterComponent:SetDensity(arg1) end

--- 
--- @param arg1 number
function ents.WaterComponent:SetPropagation(arg1) end

--- 
--- @param arg1 number
function ents.WaterComponent:SetTorqueDragCoefficient(arg1) end

--- 
--- @param arg1 number
function ents.WaterComponent:SetStiffness(arg1) end

--- 
--- @param arg1 math.Vector
function ents.WaterComponent:SetWaterVelocity(arg1) end


--- @enum EventOnWaterSurfaceSimulatorChanged
ents.WaterComponent = {
	EVENT_ON_WATER_SURFACE_SIMULATOR_CHANGED = 96,
}

--- 
--- @class ents.WaterSurfaceComponent: ents.EntityComponent
ents.WaterSurfaceComponent = {}


--- 
--- @class ents.WeatherComponent: ents.BaseEnvWeatherComponent
ents.WeatherComponent = {}


--- 
--- @class ents.WheelComponent: ents.BaseWheelComponent
ents.WheelComponent = {}


--- 
--- @class ents.WorldComponent: ents.BaseWorldComponent
ents.WorldComponent = {}

--- 
function ents.WorldComponent:RebuildRenderQueues() end

--- 
--- @return ents.WorldComponent.BSPTree ret0
function ents.WorldComponent:GetBSPTree() end


--- 
--- @class ents.WorldComponent.BSPTree
ents.WorldComponent.BSPTree = {}

--- 
--- @param min vector.Vector
--- @param max vector.Vector
--- @return any ret0
function ents.WorldComponent.BSPTree:FindLeafNodesInAABB(min, max) end

--- 
--- @param origin vector.Vector
function ents.WorldComponent.BSPTree:FindLeafNode(origin) end

--- 
function ents.WorldComponent.BSPTree:GetClusterCount() end

--- 
function ents.WorldComponent.BSPTree:GetRootNode() end

--- 
function ents.WorldComponent.BSPTree:GetClusterVisibility() end

--- 
function ents.WorldComponent.BSPTree:GetNodes() end

--- 
function ents.WorldComponent.BSPTree:IsValid() end

--- 
--- @param clusterSrc int
--- @param clusterDst int
function ents.WorldComponent.BSPTree:IsClusterVisible(clusterSrc, clusterDst) end


--- 
--- @class ents.WorldComponent.BSPTree.Node
ents.WorldComponent.BSPTree.Node = {}

--- 
function ents.WorldComponent.BSPTree.Node:GetInternalNodeFaceCount() end

--- 
function ents.WorldComponent.BSPTree.Node:GetBounds() end

--- 
function ents.WorldComponent.BSPTree.Node:GetChildren() end

--- 
function ents.WorldComponent.BSPTree.Node:GetInternalNodeFirstFaceIndex() end

--- 
function ents.WorldComponent.BSPTree.Node:GetCluster() end

--- 
--- @return int ret0
function ents.WorldComponent.BSPTree.Node:GetIndex() end

--- 
function ents.WorldComponent.BSPTree.Node:GetInternalNodePlane() end

--- 
function ents.WorldComponent.BSPTree.Node:GetVisibleLeafAreaBounds() end

--- 
function ents.WorldComponent.BSPTree.Node:IsLeaf() end


