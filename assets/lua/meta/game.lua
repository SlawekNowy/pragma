--- @meta
--- 
--- @class game
game = {}

--- 
--- @param game class Game
--- @param identifier string
--- @return any ret0
--- @overload fun(game: class Game, identifier: string, arg0: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any, arg2: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any, arg2: any, arg3: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any, arg2: any, arg3: any, arg4: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any, arg2: any, arg3: any, arg4: any, arg5: any): any
function game.call_callbacks(game, identifier) end

--- 
--- @param gravity math.Vector
function game.set_gravity(gravity) end

--- 
--- @return enum pragma::rendering::RenderMask ret0_1
--- @return enum pragma::rendering::RenderMask ret0_2
function game.get_primary_camera_render_mask() end

--- 
--- @param identifier string
--- @param function unknown
--- @return util.Callback ret0
function game.add_callback(identifier, function_) end

--- 
--- @param timeScale number
function game.set_time_scale(timeScale) end

--- 
--- @param identifier string
--- @param function unknown
--- @return util.Callback ret0
function game.add_event_listener(identifier, function_) end

--- 
--- @param name string
--- @return bool ret0
--- @overload fun(name: string, damage: int): bool
--- @overload fun(name: string, damage: int, force: number): bool
--- @overload fun(name: string, damage: int, force: number, damageType: enum DAMAGETYPE): bool
function game.register_ammo_type(name) end

--- 
--- @return number ret0
function game.get_time_scale() end

--- 
--- @param mapName string
--- @overload fun(mapName: string, landmarkName: string): 
function game.change_map(mapName) end

--- 
--- @return string ret0
function game.get_map_name() end

--- 
--- @param game class Game
--- @param identifier string
--- @return any ret0
--- @overload fun(game: class Game, identifier: string, arg0: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any, arg2: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any, arg2: any, arg3: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any, arg2: any, arg3: any, arg4: any): any
--- @overload fun(game: class Game, identifier: string, arg0: any, arg1: any, arg2: any, arg3: any, arg4: any, arg5: any): any
function game.call_event_listeners(game, identifier) end

--- 
--- @param arg0 class Game
--- @return bool ret0
function game.is_game_initialized(arg0) end

--- 
--- @param name string
--- @return int ret0
function game.get_ammo_type_id(name) end

--- 
--- @param arg0 class CGame
function game.clear_gameplay_control_camera(arg0) end

--- 
--- @param identifier string
function game.clear_callbacks(identifier) end

--- 
--- @param identifier string
function game.clear_event_listeners(identifier) end

--- 
--- @return ents.BaseGamemodeComponent ret0
function game.get_game_mode() end

--- 
function game.clear_unused_materials() end

--- 
--- @param shader string
--- @return game.Material ret0
--- @overload fun(identifier: string, shader: string): game.Material
function game.create_material(shader) end

--- 
--- @param typeId int
--- @return string ret0
function game.get_ammo_type_name(typeId) end

--- 
--- @return game.Material ret0
function game.get_error_material() end

--- 
--- @return enum Game::GameFlags ret0
function game.get_game_state_flags() end

--- 
--- @param arg0 class CGame
--- @param arg1 int
--- @return game.DrawSceneInfo ret0
function game.get_queued_scene_render_info(arg0, arg1) end

--- 
--- @param arg0 class CGame
--- @return ents.CameraComponent ret0
function game.get_gameplay_control_camera(arg0) end

--- 
--- @return math.Vector ret0
function game.get_gravity() end

--- 
--- @param pos math.Vector
--- @return math.Vector ret0
--- @overload fun(pos: vector.Vector): math.Vector
function game.get_light_color(pos) end

--- 
--- @return bool ret0
--- @overload fun(reload: bool): bool
function game.load_nav_mesh() end

--- 
--- @param identifier string
--- @return game.Material ret0
function game.get_material(identifier) end

--- 
--- @param mdlName string
--- @return game.Model ret0
function game.get_model(mdlName) end

--- 
--- @return nav.Mesh ret0
function game.get_nav_mesh() end

--- 
--- @param arg0 class Game
--- @return bool ret0
function game.is_game_ready(arg0) end

--- 
--- @param arg0 class CGame
--- @return int ret0
function game.get_number_of_scenes_queued_for_rendering(arg0) end

--- 
--- @param pos math.Vector
--- @return number ret0
--- @overload fun(pos: vector.Vector): number
function game.get_sound_intensity(pos) end

--- 
--- @return bool ret0
function game.is_game_mode_initialized() end

--- 
--- @param arg0 class Game
--- @return bool ret0
function game.is_map_initialized(arg0) end

--- 
--- @return bool ret0
function game.is_map_loaded() end

--- 
--- @param mat string
--- @return game.Material ret0
--- @overload fun(mat: string, reload: bool): game.Material
--- @overload fun(mat: string): game.Material
--- @overload fun(mat: string, reload: bool): game.Material
--- @overload fun(mat: string, reload: bool, loadInstantly: bool): game.Material
function game.load_material(mat) end

--- 
--- @param name string
--- @return any ret0
function game.load_model(name) end

--- 
--- @param fileName string
--- @overload fun(fileName: string, precache: bool): 
function game.load_sound_scripts(fileName) end

--- 
--- @param file file.File
--- @return prosper.Texture ret0
--- @overload fun(file: file.File, loadFlags: enum util::AssetLoadFlags): prosper.Texture
--- @overload fun(file: file.File, cacheName: string): prosper.Texture
--- @overload fun(file: file.File, cacheName: string, loadFlags: enum util::AssetLoadFlags): prosper.Texture
--- @overload fun(name: string): prosper.Texture
--- @overload fun(name: string, loadFlags: enum util::AssetLoadFlags): prosper.Texture
function game.load_texture(file) end

--- 
--- @param arg0 class CGame
--- @param arg1 ents.CameraComponent
function game.set_gameplay_control_camera(arg0, arg1) end

--- 
--- @param mat string
function game.precache_material(mat) end

--- 
--- @param mdlName string
--- @overload fun(mdl: string): 
function game.precache_model(mdlName) end

--- 
--- @param particle string
--- @return bool ret0
--- @overload fun(particle: string, reload: bool): bool
function game.precache_particle_system(particle) end

--- 
--- @param arg0 class CGame
function game.reset_gameplay_control_camera(arg0) end

--- 
--- @param game class Game
--- @param dt number
function game.update_animations(game, dt) end


--- 
--- @class game.DamageInfo
--- @overload fun():game.DamageInfo
game.DamageInfo = {}

--- 
--- @param arg1 enum DAMAGETYPE
function game.DamageInfo:AddDamageType(arg1) end

--- 
--- @param arg1 int
function game.DamageInfo:AddDamage(arg1) end

--- 
--- @return ents.BaseEntityBase ret0
function game.DamageInfo:GetAttacker() end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function game.DamageInfo:SetSource(arg1) end

--- 
--- @return int ret0
function game.DamageInfo:GetDamage() end

--- 
--- @return int ret0
function game.DamageInfo:GetDamageTypes() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function game.DamageInfo:GetSource() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function game.DamageInfo:GetForce() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function game.DamageInfo:GetHitPosition() end

--- 
--- @return enum HitGroup ret0
function game.DamageInfo:GetHitGroup() end

--- 
--- @return ents.BaseEntityBase ret0
function game.DamageInfo:GetInflictor() end

--- 
--- @param arg1 enum DAMAGETYPE
--- @return bool ret0
function game.DamageInfo:IsDamageType(arg1) end

--- 
--- @param arg1 enum DAMAGETYPE
function game.DamageInfo:RemoveDamageType(arg1) end

--- 
--- @param arg1 number
function game.DamageInfo:ScaleDamage(arg1) end

--- 
--- @param arg1 ents.BaseEntityBase
function game.DamageInfo:SetAttacker(arg1) end

--- 
--- @param arg1 int
function game.DamageInfo:SetDamage(arg1) end

--- 
--- @param arg1 enum DAMAGETYPE
function game.DamageInfo:SetDamageType(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function game.DamageInfo:SetForce(arg1) end

--- 
--- @param arg1 enum HitGroup
function game.DamageInfo:SetHitGroup(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function game.DamageInfo:SetHitPosition(arg1) end

--- 
--- @param arg1 ents.BaseEntityBase
function game.DamageInfo:SetInflictor(arg1) end

--- 
function game.DamageInfo:__tostring() end


--- 
--- @class game.BaseRenderProcessor
game.BaseRenderProcessor = {}

--- 
--- @param d number
--- @param delta number
function game.BaseRenderProcessor:SetDepthBias(d, delta) end


--- 
--- @class game.DrawSceneInfo
--- @field clearColor  
--- @field clipPlane  
--- @field outputLayerId  
--- @field flags  
--- @field commandBuffer  
--- @field exclusionMask  
--- @field outputImage  
--- @field inclusionMask  
--- @field pvsOrigin  
--- @field renderFlags  
--- @field renderStats  
--- @field renderTarget  
--- @field scene  
--- @field toneMapping  
--- @overload fun():game.DrawSceneInfo
game.DrawSceneInfo = {}

--- 
--- @param arg1 game.DrawSceneInfo
function game.DrawSceneInfo:AddSubPass(arg1) end

--- 
--- @param f any
function game.DrawSceneInfo:SetEntityPrepassFilter(f) end

--- 
--- @param f any
function game.DrawSceneInfo:SetEntityRenderFilter(f) end


--- @enum Flag
game.DrawSceneInfo = {
	FLAG_DISABLE_RENDER_BIT = 2,
	FLAG_FLIP_VERTICALLY_BIT = 1,
}

--- @enum FlagDisable
game.DrawSceneInfo = {
	FLAG_DISABLE_LIGHTING_PASS_BIT = 16,
	FLAG_DISABLE_PREPASS_BIT = 8,
	FLAG_DISABLE_RENDER_BIT = 2,
}

--- 
--- @class game.BulletInfo
--- @field ammoType  
--- @field effectOrigin  
--- @field attacker  
--- @field damageType  
--- @field bulletCount  
--- @field damage  
--- @field distance  
--- @field direction  
--- @field force  
--- @field inflictor  
--- @field spread  
--- @field tracerBloom  
--- @field tracerColor  
--- @field tracerCount  
--- @field tracerLength  
--- @field tracerMaterial  
--- @field tracerRadius  
--- @field tracerSpeed  
--- @overload fun():game.BulletInfo
game.BulletInfo = {}

--- 
function game.BulletInfo:__tostring() end


--- 
--- @class game.Material
game.Material = {}

--- 
--- @return string ret0
function game.Material:GetName() end

--- 
--- @return number ret0
function game.Material:GetAlphaCutoff() end

--- 
function game.Material:Copy() end

--- 
function game.Material:UpdateTextures() end

--- 
function game.Material:ClearSpriteSheetAnimation() end

--- 
--- @param textureID string
function game.Material:GetTextureInfo(textureID) end

--- 
--- @return enum AlphaMode ret0
function game.Material:GetAlphaMode() end

--- 
function game.Material:__tostring() end

--- 
function game.Material:GetData() end

--- 
--- @return bool ret0
function game.Material:IsLoaded() end

--- 
--- @return util.DataBlock ret0
function game.Material:GetDataBlock() end

--- 
--- @return string ret0
function game.Material:GetShaderName() end

--- 
--- @return bool ret0
function game.Material:IsValid() end

--- 
--- @return bool ret0
function game.Material:IsError() end

--- 
function game.Material:GetSpriteSheetAnimation() end

--- 
--- @overload fun(reload: bool): 
function game.Material:InitializeShaderDescriptorSet() end

--- 
function game.Material:ReloadTextures() end

--- 
--- @return bool ret0
function game.Material:IsTranslucent() end

--- 
--- @param data udm.LinkedPropertyWrapper
--- @return bool ret0
function game.Material:MergeData(data) end

--- 
function game.Material:Reset() end

--- 
--- @param mat game.Material
--- @param fname string
--- @return variant ret0
--- @overload fun(): variant
--- @overload fun(assetData: udm.AssetData): variant
function game.Material:Save(mat, fname) end

--- 
--- @param arg1 bool
function game.Material:SetLoaded(arg1) end

--- 
--- @param shader string
function game.Material:SetShader(shader) end

--- 
--- @param textureID string
--- @param hTex prosper.Texture
--- @param name string
--- @overload fun(textureID: string, hTex: prosper.Texture): 
--- @overload fun(textureID: string, tex: util.Texture): 
--- @overload fun(textureID: string, tex: string): 
function game.Material:SetTexture(textureID, hTex, name) end


--- @enum AlphaMode
game.Material = {
	ALPHA_MODE_OPAQUE = 0,
	ALPHA_MODE_BLEND = 2,
	ALPHA_MODE_MASK = 1,
}

--- @enum DetailBlendModeUnlit
game.Material = {
	DETAIL_BLEND_MODE_UNLIT_ADDITIVE = 5,
	DETAIL_BLEND_MODE_UNLIT_ADDITIVE_THRESHOLD_FADE = 6,
}

--- @enum DetailBlendMode
game.Material = {
	DETAIL_BLEND_MODE_BASE_MASK_VIA_DETAIL_ALPHA = 9,
	DETAIL_BLEND_MODE_ADDITIVE = 1,
	DETAIL_BLEND_MODE_MULTIPLY = 8,
	DETAIL_BLEND_MODE_BLEND_FACTOR_FADE = 3,
	DETAIL_BLEND_MODE_INVALID = 255,
	DETAIL_BLEND_MODE_SELF_SHADOWED_BUMPMAP = 10,
	DETAIL_BLEND_MODE_DECAL_MODULATE = 0,
	DETAIL_BLEND_MODE_COUNT = 12,
	DETAIL_BLEND_MODE_SSBUMP_ALBEDO = 11,
	DETAIL_BLEND_MODE_TWO_PATTERN_DECAL_MODULATE = 7,
}

--- @enum DetailBlendModeTranslucent
game.Material = {
	DETAIL_BLEND_MODE_TRANSLUCENT_BASE = 4,
	DETAIL_BLEND_MODE_TRANSLUCENT_DETAIL = 2,
}

--- 
--- @class game.Material.SpriteSheetAnimation
game.Material.SpriteSheetAnimation = {}

--- 
--- @param seqIdx int
--- @return game.Material.SpriteSheetAnimation.Sequence ret0
function game.Material.SpriteSheetAnimation:GetSequence(seqIdx) end

--- 
--- @return int ret0
function game.Material.SpriteSheetAnimation:GetSequenceCount() end

--- 
--- @return table ret0
function game.Material.SpriteSheetAnimation:GetSequences() end


--- 
--- @class game.Material.SpriteSheetAnimation.Sequence
game.Material.SpriteSheetAnimation.Sequence = {}

--- 
--- @param ptTime number
--- @return int ret0_1
--- @return int ret0_2
--- @return number ret0_3
function game.Material.SpriteSheetAnimation.Sequence:GetInterpolatedFrameData(ptTime) end

--- 
--- @return int ret0
function game.Material.SpriteSheetAnimation.Sequence:GetFrameCount() end

--- 
--- @return number ret0
function game.Material.SpriteSheetAnimation.Sequence:GetDuration() end

--- 
--- @param frameIdx int
--- @return game.Material.SpriteSheetAnimation.Sequence.Frame ret0
function game.Material.SpriteSheetAnimation.Sequence:GetFrame(frameIdx) end

--- 
--- @return int ret0
function game.Material.SpriteSheetAnimation.Sequence:GetFrameOffset() end

--- 
--- @return bool ret0
function game.Material.SpriteSheetAnimation.Sequence:IsLooping() end

--- 
--- @return table ret0
function game.Material.SpriteSheetAnimation.Sequence:GetFrames() end


--- 
--- @class game.Material.SpriteSheetAnimation.Sequence.Frame
game.Material.SpriteSheetAnimation.Sequence.Frame = {}

--- 
--- @return number ret0
function game.Material.SpriteSheetAnimation.Sequence.Frame:GetDuration() end

--- 
--- @return math.Vector2 ret0_1
--- @return math.Vector2 ret0_2
function game.Material.SpriteSheetAnimation.Sequence.Frame:GetUVBounds() end


--- 
--- @class game.RenderQueue
game.RenderQueue = {}

--- 
--- @return bool ret0
function game.RenderQueue:IsComplete() end

--- 
function game.RenderQueue:WaitForCompletion() end


--- 
--- @class game.DepthStageRenderProcessor: game.BaseRenderProcessor
game.DepthStageRenderProcessor = {}

--- 
--- @param renderQueue game.RenderQueue
function game.DepthStageRenderProcessor:Render(renderQueue) end


--- 
--- @class game.GibletCreateInfo
--- @field physShape  
--- @field lifetime  
--- @field angularVelocity  
--- @field mass  
--- @field physHeight  
--- @field model  
--- @field physRadius  
--- @field physRotationOffset  
--- @field physTranslationOffset  
--- @field position  
--- @field rotation  
--- @field scale  
--- @field skin  
--- @field velocity  
--- @overload fun():game.GibletCreateInfo
game.GibletCreateInfo = {}


--- @enum PhysShape
game.GibletCreateInfo = {
	PHYS_SHAPE_BOX = 3,
	PHYS_SHAPE_CYLINDER = 4,
	PHYS_SHAPE_SPHERE = 2,
	PHYS_SHAPE_MODEL = 0,
	PHYS_SHAPE_NONE = 1,
}

--- 
--- @class game.LightingStageRenderProcessor: game.BaseRenderProcessor
game.LightingStageRenderProcessor = {}

--- 
--- @param renderQueue game.RenderQueue
function game.LightingStageRenderProcessor:Render(renderQueue) end


--- 
--- @class game.Model
game.Model = {}

--- 
--- @param attId int
--- @overload fun(name: string): 
function game.Model:GetAttachment(attId) end

--- 
--- @param name string
--- @param anim game.Model.Animation
function game.Model:AddAnimation(name, anim) end

--- 
--- @param colMesh game.Model.CollisionMesh
function game.Model:AddCollisionMesh(colMesh) end

--- 
--- @param name string
--- @param boneId int
--- @param offset math.Vector
--- @param ang math.EulerAngles
--- @overload fun(name: string, boneName: string, offset: math.Vector, ang: math.EulerAngles): 
--- @overload fun(name: string, boneId: int, offset: vector.Vector, ang: math.EulerAngles): 
--- @overload fun(name: string, boneName: string, offset: vector.Vector, ang: math.EulerAngles): 
function game.Model:AddAttachment(name, boneId, offset, ang) end

--- 
--- @param activity int
--- @param animIgnore int
--- @overload fun(activity: int): 
function game.Model:SelectWeightedAnimation(activity, animIgnore) end

--- 
function game.Model:AddBaseMeshGroupId() end

--- 
--- @param meshGroup game.Model.MeshGroup
--- @overload fun(name: string): 
function game.Model:AddMeshGroup(meshGroup) end

--- 
--- @param attId int
--- @overload fun(name: string): 
function game.Model:RemoveAttachment(attId) end

--- 
--- @param eyeball game.Model.Eyeball
function game.Model:AddEyeball(eyeball) end

--- 
--- @param name string
--- @param flexAnim game.Model.FlexAnimation
--- @overload fun(name: string): 
function game.Model:AddFlexAnimation(name, flexAnim) end

--- 
--- @param bodyGroupName string
function game.Model:GetBodyGroupId(bodyGroupName) end

--- 
--- @param flex game.Model.Flex
function game.Model:AddFlex(flex) end

--- 
--- @param name string
--- @param min number
--- @param max number
--- @return int ret0
function game.Model:AddFlexController(name, min, max) end

--- 
--- @param group int
function game.Model:PrecacheTextureGroup(group) end

--- 
function game.Model:GetAnimationCount() end

--- 
--- @param anim int
function game.Model:GetAnimationActivityWeight(anim) end

--- 
--- @param name string
function game.Model:LookupAttachment(name) end

--- 
--- @param boneId int
--- @param hitGroup int
--- @param min math.Vector
--- @param max math.Vector
--- @overload fun(boneId: int, hitGroup: int, min: vector.Vector, max: vector.Vector): 
function game.Model:AddHitbox(boneId, hitGroup, min, max) end

--- 
--- @param name string
--- @param chainLength int
--- @param type string
--- @overload fun(name: string, chainLength: int, type: string, method: int): 
function game.Model:AddIKController(name, chainLength, type) end

--- 
--- @param group game.Model.MeshGroup
--- @param mesh game.Model.Mesh
--- @param subMesh game.Model.Mesh.Sub
function game.Model:AssignDistinctMaterial(group, mesh, subMesh) end

--- 
--- @param modelName string
function game.Model:AddIncludeModel(modelName) end

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
function game.Model:GetReferenceBonePos(boneIdentifier, space) end

--- 
--- @param type enum JointType
--- @param child int
--- @param parent int
--- @return game.Model.Joint ret0
function game.Model:AddJoint(type, child, parent) end

--- 
function game.Model:GetBlendControllerCount() end

--- 
function game.Model:GetAnimationNames() end

--- 
--- @param textureGroup int
--- @param name string
--- @overload fun(textureGroup: int, mat: game.Material): 
function game.Model:AddMaterial(textureGroup, name) end

--- 
--- @param path string
function game.Model:AddMaterialPath(path) end

--- 
--- @param blendControllerId int
--- @overload fun(name: string): 
function game.Model:GetBlendController(blendControllerId) end

--- 
--- @param arg1 int
--- @return number ret0
function game.Model:CalcBoneLength(arg1) end

--- 
--- @param type int
--- @param name string
--- @param attachment string
--- @param oKeyValues any
function game.Model:AddObjectAttachment(type, name, attachment, oKeyValues) end

--- 
--- @param bgId int
function game.Model:GetBodyGroup(bgId) end

--- 
--- @param arg1 int
--- @return enum pragma::SignedAxis ret0
function game.Model:FindBoneTwistAxis(arg1) end

--- 
function game.Model:AddTextureGroup() end

--- 
--- @param name string
function game.Model:AddVertexAnimation(name) end

--- 
--- @return bool ret0
function game.Model:GenerateMetaRig() end

--- 
--- @overload fun(lod: int): 
--- @overload fun(oBodygroups: any, lod: int): 
function game.Model:GetBodyGroupMeshes() end

--- 
--- @param idx int
function game.Model:RemoveMeshGroup(idx) end

--- 
function game.Model:ClearJoints() end

--- 
--- @param flexId int
--- @param oFc any
function game.Model:CalcFlexWeight(flexId, oFc) end

--- 
--- @param attIdx int
function game.Model:CalcReferenceAttachmentPose(attIdx) end

--- 
--- @param boneIdx int
function game.Model:CalcReferenceBonePose(boneIdx) end

--- 
function game.Model:ClearAnimations() end

--- 
function game.Model:GetAttachmentCount() end

--- 
--- @param arg1 int
--- @param arg2 math.Vector
--- @return enum pragma::SignedAxis ret0
--- @overload fun(arg1: int, arg2: vector.Vector): enum pragma::SignedAxis
function game.Model:FindBoneAxisForDirection(arg1, arg2) end

--- 
function game.Model:ClearBaseMeshGroupIds() end

--- 
--- @param name string
function game.Model:LookupIKController(name) end

--- 
function game.Model:GetIncludeModels() end

--- 
--- @param animName string
--- @param exportInfo game.Model.ExportInfo
function game.Model:ExportAnimation(animName, exportInfo) end

--- 
function game.Model:ClearCollisionMeshes() end

--- 
function game.Model:ClearFlexAnimations() end

--- 
function game.Model:ClearMaterials() end

--- 
function game.Model:ClearMeshGroups() end

--- 
function game.Model:GetAttachments() end

--- 
--- @param name string
function game.Model:SaveLegacy(name) end

--- 
function game.Model:GetFlexControllerCount() end

--- 
function game.Model:ClearMetaRig() end

--- 
function game.Model:GetAnimations() end

--- 
--- @param copyFlags int
--- @overload fun(): 
function game.Model:Copy(copyFlags) end

--- 
--- @param exportInfo game.Model.ExportInfo
function game.Model:Export(exportInfo) end

--- 
--- @param smTgt game.Model.Mesh.Sub
--- @return int ret0_1
--- @return int ret0_2
--- @return int ret0_3
function game.Model:FindSubMeshId(smTgt) end

--- 
--- @return bool ret0
function game.Model:GenerateMetaBlendShapes() end

--- 
--- @return bool ret0
function game.Model:GenerateHitboxes() end

--- 
--- @param arg1 class Game
--- @return bool ret0
function game.Model:GenerateLowLevelLODs(arg1) end

--- 
--- @param boneId int
function game.Model:IsRootBone(boneId) end

--- 
function game.Model:GetBodyGroups() end

--- 
--- @param bodyGroupId int
--- @param bgValue int
function game.Model:GetBodyGroupMesh(bodyGroupId, bgValue) end

--- 
--- @param animID int
--- @overload fun(name: int): 
function game.Model:GetAnimation(animID) end

--- 
--- @return table ret0
function game.Model:GenerateStandardMetaRigReferenceBonePoses() end

--- 
--- @param anim int
function game.Model:GetAnimationActivity(anim) end

--- 
--- @param anim int
function game.Model:GetAnimationDuration(anim) end

--- 
function game.Model:GetBoneCount() end

--- 
--- @param animID int
function game.Model:GetAnimationName(animID) end

--- 
--- @param name string
function game.Model:LookupFlexController(name) end

--- 
function game.Model:GetBaseMeshGroupIds() end

--- 
function game.Model:GetBlendControllers() end

--- 
function game.Model:GetBodyGroupCount() end

--- 
function game.Model:GetCollisionBounds() end

--- 
function game.Model:GetCollisionMeshCount() end

--- 
function game.Model:GetCollisionMeshes() end

--- 
--- @return udm.PropertyWrapper ret0
function game.Model:GetExtensionData() end

--- 
function game.Model:GetEyeOffset() end

--- 
--- @param eyeIdx int
function game.Model:GetEyeball(eyeIdx) end

--- 
--- @param animId int
--- @param frameId int
--- @param boneId int
function game.Model:GetLocalBoneTransform(animId, frameId, boneId) end

--- 
function game.Model:GetEyeballCount() end

--- 
function game.Model:GetEyeballs() end

--- 
--- @param attId int
--- @param data any
--- @overload fun(name: string, data: any): 
function game.Model:SetAttachmentData(attId, data) end

--- 
function game.Model:GetFlags() end

--- 
--- @param idx int
--- @return any ret0
function game.Model:GetFlexAnimation(idx) end

--- 
--- @param idx int
--- @return any ret0
function game.Model:GetFlexAnimationName(idx) end

--- 
--- @return int ret0
function game.Model:GetFlexAnimationCount() end

--- 
--- @return any ret0
function game.Model:GetFlexAnimationNames() end

--- 
--- @return any ret0
function game.Model:GetFlexAnimations() end

--- 
--- @param id int
--- @overload fun(name: string): 
function game.Model:GetFlexController(id) end

--- 
--- @param name string
--- @overload fun(id: int): 
function game.Model:RemoveIKController(name) end

--- 
function game.Model:GetFlexControllers() end

--- 
function game.Model:GetFlexCount() end

--- 
--- @param flexId int
--- @overload fun(flexName: string): 
function game.Model:GetFlexFormula(flexId) end

--- 
function game.Model:GetFlexes() end

--- 
--- @overload fun(hitGroup: int): 
function game.Model:GetHitboxBones() end

--- 
--- @param boneId int
function game.Model:GetHitboxBounds(boneId) end

--- 
function game.Model:GetHitboxCount() end

--- 
--- @param boneId int
function game.Model:GetHitboxGroup(boneId) end

--- 
--- @param id int
function game.Model:GetIKController(id) end

--- 
function game.Model:GetIKControllers() end

--- 
function game.Model:GetJoints() end

--- 
--- @param rot math.Quaternion
function game.Model:Rotate(rot) end

--- 
--- @param idx int
function game.Model:GetLOD(idx) end

--- 
--- @param activity int
function game.Model:SelectFirstAnimation(activity) end

--- 
function game.Model:GetLODCount() end

--- 
--- @param flags int
function game.Model:SetFlags(flags) end

--- 
--- @overload fun(lod: int): 
function game.Model:GetLODData() end

--- 
function game.Model:GetMass() end

--- 
--- @param idx int
function game.Model:GetMaterial(idx) end

--- 
function game.Model:GetMaterialCount() end

--- 
--- @param mesh game.Model.Mesh.Sub
--- @param skinId int
function game.Model:GetMaterialIndex(mesh, skinId) end

--- 
--- @param name string
--- @return any ret0
function game.Model:LookupFlexAnimation(name) end

--- 
function game.Model:GetMaterialNames() end

--- 
function game.Model:GetMaterialPaths() end

--- 
function game.Model:GetMaterials() end

--- 
function game.Model:GetMeshCount() end

--- 
function game.Model:UpdateCollisionBounds() end

--- 
--- @param name string
function game.Model:LookupObjectAttachment(name) end

--- 
--- @param mgId int
--- @overload fun(meshGroupName: string): 
function game.Model:GetMeshGroup(mgId) end

--- 
function game.Model:GetMeshGroupCount() end

--- 
--- @param bodyGroupId int
--- @param groupId int
function game.Model:GetMeshGroupId(bodyGroupId, groupId) end

--- 
--- @param name string
function game.Model:LookupBodyGroup(name) end

--- 
--- @param o any
--- @overload fun(meshGroup: string): 
function game.Model:GetMeshes(o) end

--- 
function game.Model:GetMeshGroups() end

--- 
--- @return game.Model.MetaRig ret0
function game.Model:GetMetaRig() end

--- 
--- @param mdlOther game.Model
--- @overload fun(mdlOther: game.Model, mergeFlags: int): 
function game.Model:Merge(mdlOther) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @return enum pragma::animation::MetaRigBoneType ret0
function game.Model:GetMetaRigBoneParentId(arg1) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @return math.ScaledTransform ret0
function game.Model:GetMetaRigReferencePose(arg1) end

--- 
function game.Model:GetName() end

--- 
--- @param lod int
--- @overload fun(lod: int, o: any): 
function game.Model:TranslateLODMeshes(lod) end

--- 
--- @param idx int
function game.Model:GetObjectAttachment(idx) end

--- 
function game.Model:GetObjectAttachmentCount() end

--- 
function game.Model:GetRenderBounds() end

--- 
function game.Model:GetObjectAttachments() end

--- 
function game.Model:GetPhonemeMap() end

--- 
--- @return table ret0
function game.Model:GetPhonemes() end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.ScaledTransform ret0
--- @overload fun(boneIdentifier: string): math.ScaledTransform
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.ScaledTransform
--- @overload fun(boneIdentifier: int): math.ScaledTransform
function game.Model:GetReferenceBonePose(boneIdentifier, space) end

--- 
--- @param boneIdentifier string
--- @param space enum umath::CoordinateSpace
--- @return math.Quaternion ret0
--- @overload fun(boneIdentifier: string): math.Quaternion
--- @overload fun(boneIdentifier: int, space: enum umath::CoordinateSpace): math.Quaternion
--- @overload fun(boneIdentifier: int): math.Quaternion
function game.Model:GetReferenceBoneRot(boneIdentifier, space) end

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
function game.Model:GetReferenceBoneScale(boneIdentifier, space) end

--- 
function game.Model:GetReferencePose() end

--- 
function game.Model:GetSkeleton() end

--- 
--- @param mgId int
--- @param mId int
--- @param smId int
--- @return game.Model.Mesh.Sub ret0
function game.Model:GetSubMesh(mgId, mId, smId) end

--- 
function game.Model:GetSubMeshCount() end

--- 
--- @param id int
function game.Model:GetTextureGroup(id) end

--- 
function game.Model:GetTextureGroupCount() end

--- 
function game.Model:GetTextureGroups() end

--- 
function game.Model:GetTriangleCount() end

--- 
--- @param name string
function game.Model:GetVertexAnimation(name) end

--- 
function game.Model:GetVertexAnimationBuffer() end

--- 
function game.Model:GetVertexAnimations() end

--- 
function game.Model:GetVertexCount() end

--- 
--- @param flag int
function game.Model:HasFlag(flag) end

--- 
--- @param o any
function game.Model:SetMaterialPaths(o) end

--- 
function game.Model:HasVertexWeights() end

--- 
--- @param eyeballIndex int
--- @overload fun(): 
function game.Model:IsStatic(eyeballIndex) end

--- 
--- @param bReload bool
--- @overload fun(): 
function game.Model:LoadMaterials(bReload) end

--- 
--- @param name string
function game.Model:LookupAnimation(name) end

--- 
--- @param name string
function game.Model:LookupBlendController(name) end

--- 
--- @param name string
function game.Model:LookupBone(name) end

--- 
--- @param name string
function game.Model:LookupFlex(name) end

--- 
function game.Model:PrecacheTextureGroups() end

--- 
--- @param idx int
function game.Model:RemoveAnimation(idx) end

--- 
--- @param idx int
function game.Model:RemoveFlexAnimation(idx) end

--- 
--- @param boneId int
function game.Model:RemoveHitbox(boneId) end

--- 
--- @param idx int
function game.Model:RemoveMaterial(idx) end

--- 
--- @param idx int
function game.Model:RemoveMaterialPath(idx) end

--- 
--- @param idx int
--- @overload fun(name: string): 
function game.Model:RemoveObjectAttachment(idx) end

--- 
function game.Model:RemoveUnusedMaterialReferences() end

--- 
--- @param name string
function game.Model:RemoveVertexAnimation(name) end

--- 
--- @param mdl game.Model
--- @param fname string
--- @overload fun(): 
--- @overload fun(assetData: udm.AssetData): 
function game.Model:Save(mdl, fname) end

--- 
--- @param scale math.Vector
--- @overload fun(scale: vector.Vector): 
function game.Model:Scale(scale) end

--- 
--- @param o any
function game.Model:SetBaseMeshGroupIds(o) end

--- 
--- @param min math.Vector
--- @param max math.Vector
--- @overload fun(min: vector.Vector, max: vector.Vector): 
function game.Model:SetCollisionBounds(min, max) end

--- 
--- @param offset math.Vector
--- @overload fun(offset: vector.Vector): 
function game.Model:SetEyeOffset(offset) end

--- 
--- @param boneId int
--- @param min math.Vector
--- @param max math.Vector
--- @overload fun(boneId: int, min: vector.Vector, max: vector.Vector): 
function game.Model:SetHitboxBounds(boneId, min, max) end

--- 
--- @param boneId int
--- @param hitGroup int
function game.Model:SetHitboxGroup(boneId, hitGroup) end

--- 
--- @param mass number
function game.Model:SetMass(mass) end

--- 
--- @param texIdx int
--- @param name string
--- @overload fun(matId: int, mat: game.Material): 
function game.Model:SetMaterial(texIdx, name) end

--- 
--- @param o any
function game.Model:SetPhonemeMap(o) end

--- 
--- @param arg1 table
--- @param arg2 bool
--- @return bool ret0
--- @overload fun(arg1: table, arg2: bool): bool
function game.Model:SetReferencePoses(arg1, arg2) end

--- 
--- @param min math.Vector
--- @param max math.Vector
--- @overload fun(min: vector.Vector, max: vector.Vector): 
function game.Model:SetRenderBounds(min, max) end

--- 
--- @param arg1 int
--- @param arg2 math.Transform
--- @param arg3 enum umath::CoordinateSpace
--- @overload fun(arg1: int, arg2: math.Transform, arg3: enum umath::CoordinateSpace): 
function game.Model:TransformBone(arg1, arg2, arg3) end

--- 
--- @param t math.Vector
--- @overload fun(t: vector.Vector): 
function game.Model:Translate(t) end

--- 
--- @param flags int
--- @overload fun(): 
function game.Model:Update(flags) end

--- 
function game.Model:UpdateRenderBounds() end

--- 
--- @param 1 game.Model
function game.Model:__eq(arg1) end

--- 
function game.Model:__tostring() end


--- @enum Fupdate
game.Model = {
	FUPDATE_ALL = 1023,
	FUPDATE_ALL_DATA = 527,
	FUPDATE_INDEX_BUFFER = 32,
	FUPDATE_ALPHA_BUFFER = 128,
	FUPDATE_BUFFERS = 496,
	FUPDATE_BOUNDS = 1,
	FUPDATE_COLLISION_SHAPES = 4,
	FUPDATE_CHILDREN = 512,
	FUPDATE_NONE = 0,
	FUPDATE_PRIMITIVE_COUNTS = 2,
	FUPDATE_TANGENTS = 8,
	FUPDATE_WEIGHT_BUFFER = 64,
}

--- @enum Fcopy
game.Model = {
	FCOPY_DEEP = 31,
	FCOPY_SHALLOW = 0,
	FCOPY_NONE = 0,
}

--- @enum Fmerge
game.Model = {
	FMERGE_ALL = 127,
	FMERGE_ANIMATIONS = 1,
	FMERGE_HITBOXES = 8,
	FMERGE_ATTACHMENTS = 2,
	FMERGE_JOINTS = 16,
	FMERGE_BLEND_CONTROLLERS = 4,
	FMERGE_COLLISION_MESHES = 32,
	FMERGE_MESHES = 64,
	FMERGE_NONE = 0,
}

--- @enum FcopyBit
game.Model = {
	FCOPY_BIT_ANIMATIONS = 2,
	FCOPY_BIT_COLLISION_MESHES = 8,
	FCOPY_BIT_FLEX_ANIMATIONS = 16,
	FCOPY_BIT_MESHES = 1,
	FCOPY_BIT_VERTEX_ANIMATIONS = 4,
}

--- @enum FcopyBitCopy
game.Model = {
	FCOPY_BIT_COPY_UNIQUE_IDS = 32,
	FCOPY_BIT_COPY_VERTEX_DATA = 64,
}

--- @enum FlagBit
game.Model = {
	FLAG_BIT_INANIMATE = 2,
	FLAG_BIT_DONT_PRECACHE_TEXTURE_GROUPS = 128,
	FLAG_BIT_STATIC = 1,
}

--- @enum FlagNone
game.Model = {
	FLAG_NONE = 0,
}

--- @enum FupdateVertex
game.Model = {
	FUPDATE_VERTEX_ANIMATION_BUFFER = 256,
	FUPDATE_VERTEX_BUFFER = 16,
}

--- @enum InvalidBoneIndex
game.Model = {
	INVALID_BONE_INDEX = 65535,
}

--- @enum ObjectAttachmentType
game.Model = {
	OBJECT_ATTACHMENT_TYPE_MODEL = 0,
	OBJECT_ATTACHMENT_TYPE_PARTICLE_SYSTEM = 1,
}

--- 
--- @class game.Model.Animation
game.Model.Animation = {}

--- 
--- @param arg1 enum FAnim
function game.Model.Animation:AddFlags(arg1) end

--- 
--- @param frameId int
--- @param idx int
function game.Model.Animation:RemoveEvent(frameId, idx) end

--- 
--- @param arg1 int
--- @return int ret0
function game.Model.Animation:AddBoneId(arg1) end

--- 
--- @param frameId int
--- @param eventId int
--- @param args any
function game.Model.Animation:AddEvent(frameId, eventId, args) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function game.Model.Animation:Scale(arg1) end

--- 
--- @param arg1 int
--- @return number ret0
function game.Model.Animation:GetBoneWeight(arg1) end

--- 
--- @param frame Animation.Frame
--- @overload fun(frame: game.Model.Animation.Frame): 
function game.Model.Animation:AddFrame(frame) end

--- 
--- @param arg1 int
--- @param arg2 number
function game.Model.Animation:SetBoneWeight(arg1, arg2) end

--- 
function game.Model.Animation:Reverse() end

--- 
--- @return any ret0
function game.Model.Animation:GetActivityName() end

--- 
--- @param mdl game.Model
function game.Model.Animation:CalcRenderBounds(mdl) end

--- 
--- @param frameId int
--- @param idx int
--- @param oArgs any
function game.Model.Animation:SetEventArgs(frameId, idx, oArgs) end

--- 
function game.Model.Animation:ClearFrames() end

--- 
--- @return enum Activity ret0
function game.Model.Animation:GetActivity() end

--- 
--- @return enum FAnim ret0
function game.Model.Animation:GetFlags() end

--- 
--- @return int ret0
function game.Model.Animation:GetActivityWeight() end

--- 
--- @param arg1 game.Model.Skeleton
--- @param arg2 Animation.Frame
--- @return panima.Animation ret0
--- @overload fun(arg1: game.Model.Skeleton, arg2: Animation.Frame): panima.Animation
--- @overload fun(arg1: game.Model.Skeleton, arg2: game.Model.Animation.Frame): panima.Animation
function game.Model.Animation:ToPanimaAnimation(arg1, arg2) end

--- 
function game.Model.Animation:GetBlendController() end

--- 
--- @param ID int
function game.Model.Animation:GetFrame(ID) end

--- 
--- @return int ret0
function game.Model.Animation:GetBoneCount() end

--- 
--- @param idx int
--- @return int ret0
function game.Model.Animation:GetBoneId(idx) end

--- 
--- @param boneId int
function game.Model.Animation:LookupBone(boneId) end

--- 
--- @return table ret0
function game.Model.Animation:GetBoneList() end

--- 
function game.Model.Animation:GetBoneWeights() end

--- 
--- @return number ret0
function game.Model.Animation:GetDuration() end

--- 
--- @overload fun(frameId: int): 
function game.Model.Animation:GetEventCount() end

--- 
--- @overload fun(frameId: int): 
function game.Model.Animation:GetEvents() end

--- 
--- @return int ret0
function game.Model.Animation:GetFPS() end

--- 
--- @return number ret0
function game.Model.Animation:GetFadeInTime() end

--- 
--- @param arg1 game.Model.Skeleton
--- @param arg2 math.Quaternion
function game.Model.Animation:Rotate(arg1, arg2) end

--- 
--- @return number ret0
function game.Model.Animation:GetFadeOutTime() end

--- 
--- @return int ret0
function game.Model.Animation:GetFrameCount() end

--- 
--- @param o any
function game.Model.Animation:SetBoneList(o) end

--- 
function game.Model.Animation:GetFrames() end

--- 
--- @param arg1 number
function game.Model.Animation:SetFadeOutTime(arg1) end

--- 
--- @param  game.Model
function game.Model.Animation:GetRenderBounds(arg) end

--- 
--- @param arg1 enum FAnim
function game.Model.Animation:RemoveFlags(arg1) end

--- 
--- @param assetData udm.AssetData
function game.Model.Animation:Save(assetData) end

--- 
--- @param arg1 enum Activity
function game.Model.Animation:SetActivity(arg1) end

--- 
--- @param arg1 int
function game.Model.Animation:SetActivityWeight(arg1) end

--- 
--- @param frameId int
--- @param idx int
--- @param type int
--- @param oArgs any
function game.Model.Animation:SetEventData(frameId, idx, type, oArgs) end

--- 
--- @param frameId int
--- @param idx int
--- @param type int
function game.Model.Animation:SetEventType(frameId, idx, type) end

--- 
--- @param arg1 int
function game.Model.Animation:SetFPS(arg1) end

--- 
--- @param arg1 number
function game.Model.Animation:SetFadeInTime(arg1) end

--- 
--- @param arg1 enum FAnim
function game.Model.Animation:SetFlags(arg1) end

--- 
--- @param arg1 game.Model.Skeleton
--- @param arg2 math.Vector
--- @overload fun(arg1: game.Model.Skeleton, arg2: vector.Vector): 
function game.Model.Animation:Translate(arg1, arg2) end


--- @enum Flag
game.Model.Animation = {
	FLAG_MOVEZ = 64,
	FLAG_AUTOPLAY = 128,
	FLAG_GESTURE = 256,
	FLAG_LOOP = 1,
	FLAG_MOVEX = 32,
	FLAG_NOREPEAT = 2,
}

--- 
--- @class game.Model.Animation.Frame
game.Model.Animation.Frame = {}

--- 
--- @param boneId int
--- @param scale vector.Vector
function game.Model.Animation.Frame:SetBoneScale(boneId, scale) end

--- 
--- @param anim game.Model.Animation
--- @param mdl game.Model
function game.Model.Animation.Frame:CalcRenderBounds(anim, mdl) end

--- 
--- @param boneId int
function game.Model.Animation.Frame:GetBonePose(boneId) end

--- 
--- @param boneID int
function game.Model.Animation.Frame:GetBoneMatrix(boneID) end

--- 
function game.Model.Animation.Frame:GetBoneCount() end

--- 
function game.Model.Animation.Frame:Copy() end

--- 
--- @param x number
function game.Model.Animation.Frame:SetMoveTranslationX(x) end

--- 
--- @param boneID int
--- @param pos vector.Vector
--- @param rot math.Quaternion
--- @overload fun(boneID: int, pos: vector.Vector, rot: math.Quaternion, scale: vector.Vector): 
function game.Model.Animation.Frame:SetBoneTransform(boneID, pos, rot) end

--- 
--- @param boneID int
function game.Model.Animation.Frame:GetBoneRotation(boneID) end

--- 
--- @param boneId int
function game.Model.Animation.Frame:GetBoneScale(boneId) end

--- 
--- @param boneID int
function game.Model.Animation.Frame:GetBoneTransform(boneID) end

--- 
function game.Model.Animation.Frame:GetFlexControllerIds() end

--- 
function game.Model.Animation.Frame:GetMoveTranslationZ() end

--- 
function game.Model.Animation.Frame:GetFlexControllerWeights() end

--- 
--- @param skeleton game.Model.Skeleton
--- @param boneId int
function game.Model.Animation.Frame:GetLocalBoneTransform(skeleton, boneId) end

--- 
--- @param scale vector.Vector
function game.Model.Animation.Frame:Scale(scale) end

--- 
function game.Model.Animation.Frame:GetMoveTranslation() end

--- 
function game.Model.Animation.Frame:GetMoveTranslationX() end

--- 
--- @param skeleton game.Model.Skeleton
--- @overload fun(anim: game.Model.Animation, skeleton: game.Model.Skeleton): 
function game.Model.Animation.Frame:Globalize(skeleton) end

--- 
--- @param skeleton game.Model.Skeleton
--- @overload fun(anim: game.Model.Animation, skeleton: game.Model.Skeleton): 
function game.Model.Animation.Frame:Localize(skeleton) end

--- 
--- @param anim game.Model.Animation
--- @param skeleton game.Model.Skeleton
--- @param rot math.Quaternion
function game.Model.Animation.Frame:Rotate(anim, skeleton, rot) end

--- 
--- @param boneCount int
function game.Model.Animation.Frame:SetBoneCount(boneCount) end

--- 
--- @param boneId int
--- @param pose math.Transform
--- @overload fun(boneId: int, pose: math.ScaledTransform): 
function game.Model.Animation.Frame:SetBonePose(boneId, pose) end

--- 
--- @param boneID int
--- @param pos vector.Vector
function game.Model.Animation.Frame:SetBonePosition(boneID, pos) end

--- 
--- @param boneID int
--- @param rot math.Quaternion
function game.Model.Animation.Frame:SetBoneRotation(boneID, rot) end

--- 
--- @param x number
--- @param z number
function game.Model.Animation.Frame:SetMoveTranslation(x, z) end

--- 
--- @param object any
function game.Model.Animation.Frame:SetFlexControllerWeights(object) end

--- 
--- @param z number
function game.Model.Animation.Frame:SetMoveTranslationZ(z) end

--- 
--- @param anim game.Model.Animation
--- @param skeleton game.Model.Skeleton
--- @param t vector.Vector
function game.Model.Animation.Frame:Translate(anim, skeleton, t) end


--- 
--- @class game.Model.ConeCreateInfo
--- @field endRadius number 
--- @field startRadius number 
--- @field segmentCount int 
--- @field length number 
--- @overload fun():game.Model.ConeCreateInfo
--- @overload fun(arg1: number, arg2: number, arg3: number):game.Model.ConeCreateInfo
--- @overload fun(arg1: number, arg2: number):game.Model.ConeCreateInfo
game.Model.ConeCreateInfo = {}


--- 
--- @class game.Model.MetaRigBlendShape
--- @field flexControllerId int 
game.Model.MetaRigBlendShape = {}

--- 
function game.Model.MetaRigBlendShape:__tostring() end


--- 
--- @class game.Model.BoxCreateInfo
--- @field max  
--- @field min  
--- @overload fun():game.Model.BoxCreateInfo
--- @overload fun(arg1: math.Vector, arg2: math.Vector):game.Model.BoxCreateInfo
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector):game.Model.BoxCreateInfo
game.Model.BoxCreateInfo = {}


--- 
--- @class game.Model.CircleCreateInfo
--- @field segmentCount int 
--- @field doubleSided bool 
--- @field radius number 
--- @field totalAngle number 
--- @overload fun():game.Model.CircleCreateInfo
--- @overload fun(arg1: number, arg2: bool):game.Model.CircleCreateInfo
--- @overload fun(arg1: number, arg2: bool):game.Model.CircleCreateInfo
game.Model.CircleCreateInfo = {}


--- 
--- @class game.Model.CollisionMesh
game.Model.CollisionMesh = {}

--- 
--- @return number ret0
function game.Model.CollisionMesh:GetVolume() end

--- 
--- @param vertIdx int
--- @param boneIdx int
--- @return int ret0
--- @overload fun(vertIdx: int, boneIdx: int, flags: enum CollisionMesh::SoftBodyAnchor::Flags): int
--- @overload fun(vertIdx: int, boneIdx: int, flags: enum CollisionMesh::SoftBodyAnchor::Flags, influence: number): int
function game.Model.CollisionMesh:AddSoftBodyAnchor(vertIdx, boneIdx) end

--- 
function game.Model.CollisionMesh:ClearVertices() end

--- 
function game.Model.CollisionMesh:ClearSoftBodyAnchors() end

--- 
--- @param arg1 math.Vector
--- @param arg2 number
--- @param arg3 game.Model.CollisionMesh
--- @param arg4 game.Model.CollisionMesh
--- @overload fun(arg1: vector.Vector, arg2: number, arg3: game.Model.CollisionMesh, arg4: game.Model.CollisionMesh): 
function game.Model.CollisionMesh:ClipAgainstPlane(arg1, arg2, arg3, arg4) end

--- 
--- @return table ret0
--- @overload fun(): table
function game.Model.CollisionMesh:GetVertices() end

--- 
--- @return int ret0
function game.Model.CollisionMesh:GetVertexCount() end

--- 
--- @param idx0 int
--- @param idx1 int
--- @param idx2 int
function game.Model.CollisionMesh:AddTriangle(idx0, idx1, idx2) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function game.Model.CollisionMesh:AddVertex(arg1) end

--- 
--- @param tTriangles table
function game.Model.CollisionMesh:SetTriangles(tTriangles) end

--- 
--- @param arg1 int
function game.Model.CollisionMesh:SetBoneParentId(arg1) end

--- 
--- @return game.Model.CollisionMesh ret0
function game.Model.CollisionMesh:Copy() end

--- 
function game.Model.CollisionMesh:Centralize() end

--- 
--- @return number ret0
function game.Model.CollisionMesh:GetMass() end

--- 
function game.Model.CollisionMesh:ClearTriangles() end

--- 
--- @return math.Vector ret0_1
--- @return math.Vector ret0_2
--- @overload fun(): math.Vector, math.Vector
function game.Model.CollisionMesh:GetAABB() end

--- 
--- @param arg1 bool
function game.Model.CollisionMesh:SetConvex(arg1) end

--- 
--- @return phys.Shape ret0
function game.Model.CollisionMesh:GetShape() end

--- 
--- @return int ret0
function game.Model.CollisionMesh:GetBoneParentId() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function game.Model.CollisionMesh:GetOrigin() end

--- 
--- @return table ret0
function game.Model.CollisionMesh:GetSoftBodyAnchors() end

--- 
function game.Model.CollisionMesh:GetSoftBodyInfo() end

--- 
function game.Model.CollisionMesh:GetSoftBodyMesh() end

--- 
--- @return table ret0
function game.Model.CollisionMesh:GetSoftBodyTriangles() end

--- 
--- @return int ret0
function game.Model.CollisionMesh:GetSurfaceMaterialId() end

--- 
--- @return table ret0
function game.Model.CollisionMesh:GetSurfaceMaterialIds() end

--- 
--- @param o table
function game.Model.CollisionMesh:SetSoftBodyTriangles(o) end

--- 
function game.Model.CollisionMesh:GetTriangles() end

--- 
--- @param min math.Vector
--- @param max math.Vector
--- @return bool ret0
--- @overload fun(min: vector.Vector, max: vector.Vector): bool
function game.Model.CollisionMesh:IntersectAABB(min, max) end

--- 
--- @param subMesh game.Model.Mesh.Sub
function game.Model.CollisionMesh:SetSoftBodyMesh(subMesh) end

--- 
--- @return bool ret0
function game.Model.CollisionMesh:IsConvex() end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function game.Model.CollisionMesh:Translate(arg1) end

--- 
--- @return bool ret0
function game.Model.CollisionMesh:IsSoftBody() end

--- 
--- @param arg1 int
function game.Model.CollisionMesh:RemoveSoftBodyAnchor(arg1) end

--- 
--- @param arg1 math.Quaternion
function game.Model.CollisionMesh:Rotate(arg1) end

--- 
--- @param min math.Vector
--- @param max math.Vector
--- @overload fun(min: vector.Vector, max: vector.Vector): 
function game.Model.CollisionMesh:SetAABB(min, max) end

--- 
--- @param arg1 number
function game.Model.CollisionMesh:SetMass(arg1) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function game.Model.CollisionMesh:SetOrigin(arg1) end

--- 
--- @param arg1 bool
function game.Model.CollisionMesh:SetSoftBody(arg1) end

--- 
--- @param arg1 int
function game.Model.CollisionMesh:SetSurfaceMaterialId(arg1) end

--- 
--- @param tVertices table
--- @overload fun(tVertices: table): 
function game.Model.CollisionMesh:SetVertices(tVertices) end

--- 
--- @param arg1 number
function game.Model.CollisionMesh:SetVolume(arg1) end

--- 
function game.Model.CollisionMesh:Update() end

--- 
function game.Model.CollisionMesh:__tostring() end


--- @enum FsoftbodyAnchor
game.Model.CollisionMesh = {
	FSOFTBODY_ANCHOR_DISABLE_COLLISIONS = 2,
	FSOFTBODY_ANCHOR_NONE = 0,
	FSOFTBODY_ANCHOR_RIGID = 1,
}

--- 
--- @class game.Model.CylinderCreateInfo
--- @field segmentCount int 
--- @field length number 
--- @field radius number 
--- @overload fun():game.Model.CylinderCreateInfo
--- @overload fun(arg1: number, arg2: number):game.Model.CylinderCreateInfo
game.Model.CylinderCreateInfo = {}


--- 
--- @class game.Model.EllipticConeCreateInfo: game.Model.ConeCreateInfo
--- @field endRadiusY number 
--- @field startRadiusY number 
game.Model.EllipticConeCreateInfo = {}


--- 
--- @class game.Model.ExportInfo
--- @field aoDevice  
--- @field exportMorphTargets  
--- @field aoResolution  
--- @field exportAnimations  
--- @field enableExtendedDDS  
--- @field aoSamples  
--- @field embedAnimations  
--- @field exportImages  
--- @field exportSkinnedMeshData  
--- @field fullExport  
--- @field generateAo  
--- @field imageFormat  
--- @field mergeMeshesByMaterial  
--- @field normalizeTextureNames  
--- @field verbose  
--- @field saveAsBinary  
--- @field scale  
--- @overload fun():game.Model.ExportInfo
game.Model.ExportInfo = {}

--- 
--- @param oTable any
function game.Model.ExportInfo:SetAnimationList(oTable) end


--- @enum Device
game.Model.ExportInfo = {
	DEVICE_CPU = 0,
	DEVICE_GPU = 1,
}

--- @enum ImageFormat
game.Model.ExportInfo = {
	IMAGE_FORMAT_JPG = 3,
	IMAGE_FORMAT_BMP = 1,
	IMAGE_FORMAT_DDS = 5,
	IMAGE_FORMAT_HDR = 4,
	IMAGE_FORMAT_KTX = 6,
	IMAGE_FORMAT_PNG = 0,
	IMAGE_FORMAT_TGA = 2,
}

--- 
--- @class game.Model.Eyeball
--- @field boneIndex  
--- @field forward  
--- @field irisMaterialIndex  
--- @field maxDilationFactor  
--- @field irisScale  
--- @field irisUvRadius  
--- @field name  
--- @field origin  
--- @field radius  
--- @field up  
--- @field zOffset  
--- @overload fun():game.Model.Eyeball
game.Model.Eyeball = {}

--- 
--- @return int ret0
function game.Model.Eyeball:GetLowerLidFlexIndex() end

--- 
--- @return any ret0
function game.Model.Eyeball:GetLowerLidFlexAngles() end

--- 
--- @return any ret0
function game.Model.Eyeball:GetLowerLidFlexIndices() end

--- 
--- @return any ret0
function game.Model.Eyeball:GetUpperLidFlexAngles() end

--- 
--- @return int ret0
function game.Model.Eyeball:GetUpperLidFlexIndex() end

--- 
--- @return any ret0
function game.Model.Eyeball:GetUpperLidFlexIndices() end


--- 
--- @class game.Model.Flex
--- @overload fun():game.Model.Flex
game.Model.Flex = {}

--- 
--- @param op game.Model.Flex.Operation
function game.Model.Flex:AddOperation(op) end

--- 
--- @param anim game.Model.VertexAnimation
--- @overload fun(anim: game.Model.VertexAnimation, frameIndex: int): 
function game.Model.Flex:SetVertexAnimation(anim) end

--- 
function game.Model.Flex:GetOperations() end

--- 
--- @param name string
function game.Model.Flex:SetName(name) end

--- 
function game.Model.Flex:GetFrameIndex() end

--- 
function game.Model.Flex:GetName() end

--- 
function game.Model.Flex:GetVertexAnimation() end

--- 
--- @return string ret0
function game.Model.Flex:__tostring() end


--- @enum Op
game.Model.Flex = {
	OP_ADD = 4,
	OP_CONST = 1,
	OP_DOMINATE = 19,
	OP_DIV = 7,
	OP_CLOSE = 11,
	OP_COMBO = 18,
	OP_EXP = 9,
	OP_COMMA = 12,
	OP_MIN = 14,
	OP_FETCH = 2,
	OP_FETCH2 = 3,
	OP_MAX = 13,
	OP_MUL = 6,
	OP_NEG = 8,
	OP_NONE = 0,
	OP_OPEN = 10,
	OP_N_WAY = 17,
	OP_SUB = 5,
}

--- @enum OpTwo
game.Model.Flex = {
	OP_TWO_WAY0 = 15,
	OP_TWO_WAY1 = 16,
}

--- @enum OpDme
game.Model.Flex = {
	OP_DME_LOWER_EYELID = 20,
	OP_DME_UPPER_EYELID = 21,
}

--- 
--- @class game.Model.Flex.Operation
--- @field index  
--- @field type  
--- @field value  
--- @overload fun():game.Model.Flex.Operation
game.Model.Flex.Operation = {}

--- 
function game.Model.Flex.Operation:GetName() end

--- 
--- @param name string
function game.Model.Flex.Operation:SetName(name) end


--- 
--- @class game.Model.SphereCreateInfo
--- @field recursionLevel int 
--- @field origin  
--- @field radius number 
--- @overload fun():game.Model.SphereCreateInfo
--- @overload fun(arg1: math.Vector, arg2: number):game.Model.SphereCreateInfo
--- @overload fun(arg1: vector.Vector, arg2: number):game.Model.SphereCreateInfo
game.Model.SphereCreateInfo = {}


--- 
--- @class game.Model.MetaRigBone
--- @field boneId int 
--- @field length number 
--- @field normalizedRotationOffset  
--- @field max  
--- @field min  
--- @field radius number 
game.Model.MetaRigBone = {}

--- 
function game.Model.MetaRigBone:__tostring() end


--- 
--- @class game.Model.FlexAnimation
game.Model.FlexAnimation = {}

--- 
--- @return any ret0
function game.Model.FlexAnimation:GetFlexControllerIds() end

--- 
--- @param id int
--- @return int ret0
function game.Model.FlexAnimation:AddFlexControllerId(id) end

--- 
--- @return game.Model.FlexAnimation.Frame ret0
function game.Model.FlexAnimation:AddFrame() end

--- 
function game.Model.FlexAnimation:ClearFrames() end

--- 
--- @return int ret0
function game.Model.FlexAnimation:GetFlexControllerCount() end

--- 
--- @return number ret0
function game.Model.FlexAnimation:GetFps() end

--- 
--- @param frameId int
--- @return game.Model.FlexAnimation.Frame ret0
function game.Model.FlexAnimation:GetFrame(frameId) end

--- 
--- @return int ret0
function game.Model.FlexAnimation:GetFrameCount() end

--- 
--- @return any ret0
function game.Model.FlexAnimation:GetFrames() end

--- 
--- @param id int
--- @return any ret0
function game.Model.FlexAnimation:LookupLocalFlexControllerIndex(id) end

--- 
--- @param idx int
function game.Model.FlexAnimation:RemoveFrame(idx) end

--- 
--- @param assetData udm.AssetData
function game.Model.FlexAnimation:Save(assetData) end

--- 
--- @param tIds 
function game.Model.FlexAnimation:SetFlexControllerIds(tIds) end

--- 
--- @param frameId int
--- @param id int
--- @param val number
function game.Model.FlexAnimation:SetFlexControllerValue(frameId, id, val) end

--- 
--- @param fps number
function game.Model.FlexAnimation:SetFps(fps) end


--- 
--- @class game.Model.FlexAnimation.Frame
game.Model.FlexAnimation.Frame = {}

--- 
--- @param id int
function game.Model.FlexAnimation.Frame:GetFlexControllerValue(id) end

--- 
--- @return int ret0
function game.Model.FlexAnimation.Frame:GetFlexControllerValueCount() end

--- 
--- @return any ret0
function game.Model.FlexAnimation.Frame:GetFlexControllerValues() end

--- 
--- @param id int
--- @param val number
function game.Model.FlexAnimation.Frame:SetFlexControllerValue(id, val) end

--- 
--- @param t 
function game.Model.FlexAnimation.Frame:SetFlexControllerValues(t) end


--- 
--- @class game.Model.Joint
--- @field collide  
game.Model.Joint = {}

--- 
--- @return any ret0
function game.Model.Joint:GetArgs() end

--- 
function game.Model.Joint:GetParentBoneId() end

--- 
function game.Model.Joint:GetChildBoneId() end

--- 
function game.Model.Joint:GetCollisionsEnabled() end

--- 
function game.Model.Joint:GetKeyValues() end

--- 
--- @param bEnabled bool
function game.Model.Joint:SetCollisionsEnabled(bEnabled) end

--- 
function game.Model.Joint:GetType() end

--- 
--- @param key string
function game.Model.Joint:RemoveKeyValue(key) end

--- 
--- @param t 
function game.Model.Joint:SetArgs(t) end

--- 
--- @param meshId int
function game.Model.Joint:SetCollisionMeshId(meshId) end

--- 
--- @param key string
--- @param val string
function game.Model.Joint:SetKeyValue(key, val) end

--- 
--- @param keyValues any
function game.Model.Joint:SetKeyValues(keyValues) end

--- 
--- @param meshId int
function game.Model.Joint:SetParentCollisionMeshId(meshId) end

--- 
--- @param type int
function game.Model.Joint:SetType(type) end


--- @enum Type
game.Model.Joint = {
	TYPE_BALLSOCKET = 2,
	TYPE_FIXED = 1,
	TYPE_CONETWIST = 5,
	TYPE_DOF = 6,
	TYPE_HINGE = 3,
	TYPE_NONE = 0,
	TYPE_SLIDER = 4,
}

--- 
--- @class game.Model.Mesh
game.Model.Mesh = {}

--- 
function game.Model.Mesh:__tostring() end

--- 
--- @param subMesh game.Model.Mesh.Sub
--- @param pos int
--- @overload fun(mesh: game.Model.Mesh.Sub): 
function game.Model.Mesh:AddSubMesh(subMesh, pos) end

--- 
function game.Model.Mesh:GetIndexCount() end

--- 
function game.Model.Mesh:Centralize() end

--- 
function game.Model.Mesh:GetReferenceId() end

--- 
function game.Model.Mesh:ClearSubMeshes() end

--- 
--- @param uuid string
--- @return game.Model.Mesh.Sub ret0
function game.Model.Mesh:FindSubMesh(uuid) end

--- 
--- @param tSubMeshes any
function game.Model.Mesh:SetSubMeshes(tSubMeshes) end

--- 
function game.Model.Mesh:GetTriangleCount() end

--- 
function game.Model.Mesh:GetCenter() end

--- 
function game.Model.Mesh:GetBounds() end

--- 
--- @param index int
function game.Model.Mesh:GetSubMesh(index) end

--- 
function game.Model.Mesh:GetSubMeshCount() end

--- 
function game.Model.Mesh:GetSubMeshes() end

--- 
function game.Model.Mesh:GetVertexCount() end

--- 
--- @param flags int
--- @overload fun(): 
function game.Model.Mesh:Update(flags) end

--- 
--- @param uuid string
--- @overload fun(i: int): 
function game.Model.Mesh:RemoveSubMesh(uuid) end

--- 
--- @param rotation math.Quaternion
function game.Model.Mesh:Rotate(rotation) end

--- 
--- @param scale math.Vector
--- @overload fun(scale: vector.Vector): 
function game.Model.Mesh:Scale(scale) end

--- 
--- @param center math.Vector
--- @overload fun(center: vector.Vector): 
function game.Model.Mesh:SetCenter(center) end

--- 
--- @param translation math.Vector
--- @overload fun(translation: vector.Vector): 
function game.Model.Mesh:Translate(translation) end

--- 
--- @param 1 game.Model.Mesh
function game.Model.Mesh:__eq(arg1) end


--- 
--- @class game.Model.Mesh.Sub
game.Model.Mesh.Sub = {}

--- 
function game.Model.Mesh.Sub:GetVertices() end

--- 
--- @param arg1 int
function game.Model.Mesh.Sub:AddIndex(arg1) end

--- 
function game.Model.Mesh.Sub:GetVertexCount() end

--- 
--- @param arg1 util.Uuid
--- @overload fun(uuid: string): 
function game.Model.Mesh.Sub:SetUuid(arg1) end

--- 
--- @return any ret0
function game.Model.Mesh.Sub:GetUVSetNames() end

--- 
--- @param a int
--- @param b int
--- @param c int
--- @overload fun(v1: game.Model.Vertex, v2: game.Model.Vertex, v3: game.Model.Vertex): 
function game.Model.Mesh.Sub:AddTriangle(a, b, c) end

--- 
--- @param idx0 int
--- @param idx1 int
function game.Model.Mesh.Sub:AddLine(idx0, idx1) end

--- 
--- @param nu math.Vector
--- @param nv math.Vector
--- @param w int
--- @param h int
--- @param ou number
--- @param ov number
--- @param su number
--- @param sv number
--- @overload fun(mdl: game.Model, nu: math.Vector, nv: math.Vector, ou: number, ov: number, su: number, sv: number): 
--- @overload fun(nu: vector.Vector, nv: vector.Vector, w: int, h: int, ou: number, ov: number, su: number, sv: number): 
--- @overload fun(mdl: game.Model, nu: vector.Vector, nv: vector.Vector, ou: number, ov: number, su: number, sv: number): 
function game.Model.Mesh.Sub:ApplyUVMapping(nu, nv, w, h, ou, ov, su, sv) end

--- 
function game.Model.Mesh.Sub:ClearExtendedVertexWeights() end

--- 
--- @param v game.Model.Vertex
function game.Model.Mesh.Sub:AddVertex(v) end

--- 
--- @param rotation math.Quaternion
function game.Model.Mesh.Sub:Rotate(rotation) end

--- 
function game.Model.Mesh.Sub:GetVertexWeights() end

--- 
--- @param idx int
function game.Model.Mesh.Sub:AddPoint(idx) end

--- 
--- @param uvSetName string
function game.Model.Mesh.Sub:AddUVSet(uvSetName) end

--- 
--- @param idx int
--- @return int ret0_1
--- @return int ret0_2
--- @return int ret0_3
function game.Model.Mesh.Sub:GetTriangle(idx) end

--- 
function game.Model.Mesh.Sub:ClearAlphas() end

--- 
function game.Model.Mesh.Sub:ClearIndices() end

--- 
function game.Model.Mesh.Sub:ClearUVSets() end

--- 
--- @param uvSetName string
function game.Model.Mesh.Sub:HasUVSet(uvSetName) end

--- 
--- @return udm.PropertyWrapper ret0
function game.Model.Mesh.Sub:GetExtensionData() end

--- 
function game.Model.Mesh.Sub:ClearVertexData() end

--- 
--- @param idx int
function game.Model.Mesh.Sub:GetVertex(idx) end

--- 
function game.Model.Mesh.Sub:ClearVertexWeights() end

--- 
function game.Model.Mesh.Sub:ClearVertices() end

--- 
--- @param n math.Vector
--- @param d number
--- @overload fun(n: math.Vector, d: number, bSplitCoverMeshes: bool): 
--- @overload fun(n: math.Vector, d: number, bSplitCoverMeshes: bool, tBoneMatrices: any): 
--- @overload fun(n: vector.Vector, d: number): 
--- @overload fun(n: vector.Vector, d: number, bSplitCoverMeshes: bool): 
--- @overload fun(n: vector.Vector, d: number, bSplitCoverMeshes: bool, tBoneMatrices: any): 
function game.Model.Mesh.Sub:ClipAgainstPlane(n, d) end

--- 
function game.Model.Mesh.Sub:FlipTriangleWindingOrder() end

--- 
--- @return game.Model.Mesh.Sub ret0
--- @overload fun(fullCopy: bool): game.Model.Mesh.Sub
function game.Model.Mesh.Sub:Copy() end

--- 
--- @param numVerts int
function game.Model.Mesh.Sub:ReserveVertexWeights(numVerts) end

--- 
function game.Model.Mesh.Sub:GenerateNormals() end

--- 
function game.Model.Mesh.Sub:GetAlphaBuffer() end

--- 
function game.Model.Mesh.Sub:GetBiTangents() end

--- 
function game.Model.Mesh.Sub:GetBounds() end

--- 
function game.Model.Mesh.Sub:GetTriangleCount() end

--- 
function game.Model.Mesh.Sub:GetCenter() end

--- 
function game.Model.Mesh.Sub:GetGeometryType() end

--- 
--- @param arg1 int
--- @return int ret0
function game.Model.Mesh.Sub:GetIndex(arg1) end

--- 
function game.Model.Mesh.Sub:GetIndexBuffer() end

--- 
function game.Model.Mesh.Sub:GetIndexCount() end

--- 
--- @return enum pragma::model::IndexType ret0
function game.Model.Mesh.Sub:GetIndexType() end

--- 
--- @param name string
--- @return bool ret0
function game.Model.Mesh.Sub:HasUvSet(name) end

--- 
--- @return string ret0
function game.Model.Mesh.Sub:GetName() end

--- 
--- @overload fun(flags: int): 
function game.Model.Mesh.Sub:Update() end

--- 
function game.Model.Mesh.Sub:GetIndices() end

--- 
function game.Model.Mesh.Sub:GetReferenceId() end

--- 
function game.Model.Mesh.Sub:GetNormals() end

--- 
function game.Model.Mesh.Sub:GetPose() end

--- 
--- @param idx int
function game.Model.Mesh.Sub:GetVertexNormal(idx) end

--- 
function game.Model.Mesh.Sub:GetSceneMesh() end

--- 
function game.Model.Mesh.Sub:GetSkinTextureIndex() end

--- 
function game.Model.Mesh.Sub:GetTangents() end

--- 
--- @param uvSetName string
--- @return any ret0
--- @overload fun(): any
function game.Model.Mesh.Sub:GetUVs(uvSetName) end

--- 
--- @param numTris int
function game.Model.Mesh.Sub:ReserveTriangles(numTris) end

--- 
--- @return string ret0
function game.Model.Mesh.Sub:GetUuid() end

--- 
function game.Model.Mesh.Sub:GetVertexBuffer() end

--- 
--- @param idx int
function game.Model.Mesh.Sub:GetVertexAlpha(idx) end

--- 
--- @param idx int
function game.Model.Mesh.Sub:GetVertexPosition(idx) end

--- 
--- @param idx int
--- @overload fun(uvSetName: string, idx: int): 
function game.Model.Mesh.Sub:GetVertexUV(idx) end

--- 
--- @param idx int
function game.Model.Mesh.Sub:GetVertexWeight(idx) end

--- 
function game.Model.Mesh.Sub:GetVertexWeightBuffer() end

--- 
function game.Model.Mesh.Sub:NormalizeUVCoordinates() end

--- 
--- @return bool ret0
function game.Model.Mesh.Sub:HasVertexWeights() end

--- 
function game.Model.Mesh.Sub:MakeVerticesUnique() end

--- 
--- @param arg1 number
--- @overload fun(arg1: number): 
function game.Model.Mesh.Sub:Optimize(arg1) end

--- 
--- @param assetData udm.AssetData
function game.Model.Mesh.Sub:Save(assetData) end

--- 
--- @param arg1 int
function game.Model.Mesh.Sub:ReserveIndices(arg1) end

--- 
--- @param numVerts int
function game.Model.Mesh.Sub:ReserveVertices(numVerts) end

--- 
--- @param scale math.Vector
--- @overload fun(scale: vector.Vector): 
function game.Model.Mesh.Sub:Scale(scale) end

--- 
--- @param arg1 math.Vector
--- @overload fun(arg1: vector.Vector): 
function game.Model.Mesh.Sub:SetCenter(arg1) end

--- 
--- @param geometryType int
function game.Model.Mesh.Sub:SetGeometryType(geometryType) end

--- 
--- @param arg1 int
--- @param arg2 int
--- @return bool ret0
function game.Model.Mesh.Sub:SetIndex(arg1, arg2) end

--- 
--- @param n int
function game.Model.Mesh.Sub:SetIndexCount(n) end

--- 
--- @param arg1 enum pragma::model::IndexType
function game.Model.Mesh.Sub:SetIndexType(arg1) end

--- 
--- @param indices table
function game.Model.Mesh.Sub:SetIndices(indices) end

--- 
--- @param arg1 string
function game.Model.Mesh.Sub:SetName(arg1) end

--- 
--- @param pose math.ScaledTransform
function game.Model.Mesh.Sub:SetPose(pose) end

--- 
--- @param texture int
function game.Model.Mesh.Sub:SetSkinTextureIndex(texture) end

--- 
--- @param idx int
--- @param v game.Model.Vertex
function game.Model.Mesh.Sub:SetVertex(idx, v) end

--- 
--- @param idx int
--- @param alpha math.Vector2
function game.Model.Mesh.Sub:SetVertexAlpha(idx, alpha) end

--- 
--- @param n int
function game.Model.Mesh.Sub:SetVertexCount(n) end

--- 
--- @param idx int
--- @param normal math.Vector
--- @overload fun(idx: int, normal: vector.Vector): 
function game.Model.Mesh.Sub:SetVertexNormal(idx, normal) end

--- 
--- @param idx int
--- @param pos math.Vector
--- @overload fun(idx: int, pos: vector.Vector): 
function game.Model.Mesh.Sub:SetVertexPosition(idx, pos) end

--- 
--- @param idx int
--- @param t math.Vector4
function game.Model.Mesh.Sub:SetVertexTangent(idx, t) end

--- 
--- @param idx int
--- @param uv math.Vector2
--- @overload fun(uvSetName: string, idx: int, uv: math.Vector2): 
function game.Model.Mesh.Sub:SetVertexUV(idx, uv) end

--- 
--- @param idx int
--- @param weight game.Model.VertexWeight
function game.Model.Mesh.Sub:SetVertexWeight(idx, weight) end

--- 
--- @param verts table
function game.Model.Mesh.Sub:SetVertices(verts) end

--- 
--- @param targetVertexCount int
--- @return game.Model.Mesh.Sub ret0_1
--- @return table ret0_2
--- @overload fun(targetVertexCount: int, aggressiveness: number): game.Model.Mesh.Sub, table
function game.Model.Mesh.Sub:Simplify(targetVertexCount) end

--- 
--- @param pose math.ScaledTransform
function game.Model.Mesh.Sub:Transform(pose) end

--- 
--- @param translation math.Vector
--- @overload fun(translation: vector.Vector): 
function game.Model.Mesh.Sub:Translate(translation) end

--- 
--- @param 1 game.Model.Mesh.Sub
function game.Model.Mesh.Sub:__eq(arg1) end

--- 
function game.Model.Mesh.Sub:__tostring() end


--- @enum Max
game.Model.Mesh.Sub = {
	MAX_INDEX16 = 65535,
	MAX_INDEX32 = -1,
}

--- @enum GeometryType
game.Model.Mesh.Sub = {
	GEOMETRY_TYPE_LINES = 1,
	GEOMETRY_TYPE_POINTS = 2,
	GEOMETRY_TYPE_TRIANGLES = 0,
}

--- @enum IndexType
game.Model.Mesh.Sub = {
	INDEX_TYPE_UINT16 = 0,
	INDEX_TYPE_UINT32 = 1,
}

--- 
--- @class game.Model.VertexAnimation
game.Model.VertexAnimation = {}

--- 
function game.Model.VertexAnimation:GetMeshAnimations() end

--- 
function game.Model.VertexAnimation:GetName() end

--- 
--- @param rot math.Quaternion
function game.Model.VertexAnimation:Rotate(rot) end


--- 
--- @class game.Model.VertexAnimation.MeshAnimation
game.Model.VertexAnimation.MeshAnimation = {}

--- 
function game.Model.VertexAnimation.MeshAnimation:GetFrames() end

--- 
--- @param rot math.Quaternion
function game.Model.VertexAnimation.MeshAnimation:Rotate(rot) end

--- 
function game.Model.VertexAnimation.MeshAnimation:GetMesh() end


--- 
--- @class game.Model.VertexAnimation.MeshAnimation.Frame
game.Model.VertexAnimation.MeshAnimation.Frame = {}

--- 
--- @param vertId int
function game.Model.VertexAnimation.MeshAnimation.Frame:GetDeltaValue(vertId) end

--- 
--- @param vertIdx int
function game.Model.VertexAnimation.MeshAnimation.Frame:GetVertexPosition(vertIdx) end

--- 
--- @param vertIdx int
function game.Model.VertexAnimation.MeshAnimation.Frame:GetVertexNormal(vertIdx) end

--- 
function game.Model.VertexAnimation.MeshAnimation.Frame:GetFlags() end

--- 
--- @param vertId int
--- @param value number
function game.Model.VertexAnimation.MeshAnimation.Frame:SetDeltaValue(vertId, value) end

--- 
function game.Model.VertexAnimation.MeshAnimation.Frame:GetVertexCount() end

--- 
function game.Model.VertexAnimation.MeshAnimation.Frame:GetVertices() end

--- 
--- @param rot math.Quaternion
function game.Model.VertexAnimation.MeshAnimation.Frame:Rotate(rot) end

--- 
--- @param vertIdx int
--- @param pos math.Vector
--- @overload fun(vertIdx: int, pos: vector.Vector): 
function game.Model.VertexAnimation.MeshAnimation.Frame:SetVertexPosition(vertIdx, pos) end

--- 
--- @param flags int
function game.Model.VertexAnimation.MeshAnimation.Frame:SetFlags(flags) end

--- 
--- @param numVerts int
function game.Model.VertexAnimation.MeshAnimation.Frame:SetVertexCount(numVerts) end

--- 
--- @param vertIdx int
--- @param n math.Vector
--- @overload fun(vertIdx: int, n: vector.Vector): 
function game.Model.VertexAnimation.MeshAnimation.Frame:SetVertexNormal(vertIdx, n) end


--- @enum Flag
game.Model.VertexAnimation.MeshAnimation.Frame = {
	FLAG_BIT_HAS_DELTA_VALUES = 1,
	FLAG_NONE = 0,
}

--- 
--- @class game.Model.MeshGroup
game.Model.MeshGroup = {}

--- 
--- @param 1 game.Model.MeshGroup
function game.Model.MeshGroup:__eq(arg1) end

--- 
--- @param index int
function game.Model.MeshGroup:GetMeshCount(index) end

--- 
--- @param mesh game.Model.Mesh
function game.Model.MeshGroup:AddMesh(mesh) end

--- 
function game.Model.MeshGroup:ClearMeshes() end

--- 
function game.Model.MeshGroup:GetMeshes() end

--- 
--- @param index int
function game.Model.MeshGroup:GetMesh(index) end

--- 
function game.Model.MeshGroup:GetName() end

--- 
--- @param tMeshes any
function game.Model.MeshGroup:SetMeshes(tMeshes) end


--- 
--- @class game.Model.MetaRig
--- @field forwardAxis pragma::SignedAxis 
--- @field forwardFacingRotationOffset  
--- @field upAxis pragma::SignedAxis 
--- @field rigType pragma::animation::RigType 
game.Model.MetaRig = {}

--- 
function game.Model.MetaRig:__tostring() end

--- 
--- @param arg1 game.Model
function game.Model.MetaRig:DebugPrint(arg1) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @return game.Model.MetaRigBone ret0
function game.Model.MetaRig:GetBone(arg1) end

--- 
--- @param arg1 int
--- @return enum pragma::animation::MetaRigBoneType ret0
function game.Model.MetaRig:FindMetaBoneType(arg1) end

--- 
--- @param arg1 enum pragma::animation::BlendShape
--- @return game.Model.MetaRigBlendShape ret0
function game.Model.MetaRig:GetBlendShape(arg1) end

--- 
--- @param skeleton game.Model.Skeleton
--- @param fileName string
--- @return bool ret0_1
--- @return string ret0_2
function game.Model.MetaRig:Save(skeleton, fileName) end

--- 
--- @param boneType enum pragma::animation::MetaRigBoneType
--- @return game.Model.MetaRigBone ret0
function game.Model.MetaRig:GetNormalizedBoneInfo(boneType) end

--- 
--- @param boneType enum pragma::animation::MetaRigBoneType
--- @return int ret0
function game.Model.MetaRig:GetBoneId(boneType) end


--- @enum BoneSide
game.Model.MetaRig = {
	BONE_SIDE_LEFT = 0,
	BONE_SIDE_RIGHT = 1,
}

--- @enum BoneTypeLeftRing
game.Model.MetaRig = {
	BONE_TYPE_LEFT_RING_FINGER1 = 37,
	BONE_TYPE_LEFT_RING_FINGER2 = 38,
	BONE_TYPE_LEFT_RING_FINGER3 = 39,
}

--- @enum BoneTypeRightLittle
game.Model.MetaRig = {
	BONE_TYPE_RIGHT_LITTLE_FINGER1 = 55,
	BONE_TYPE_RIGHT_LITTLE_FINGER2 = 56,
	BONE_TYPE_RIGHT_LITTLE_FINGER3 = 57,
}

--- @enum BoneType
game.Model.MetaRig = {
	BONE_TYPE_CENTER_EYE = 13,
	BONE_TYPE_COUNT = 68,
	BONE_TYPE_HEAD = 7,
	BONE_TYPE_HIPS = 0,
	BONE_TYPE_PELVIS = 1,
	BONE_TYPE_INVALID = 255,
	BONE_TYPE_JAW = 8,
	BONE_TYPE_SPINE2 = 4,
	BONE_TYPE_NECK = 6,
	BONE_TYPE_SPINE = 2,
	BONE_TYPE_SPINE1 = 3,
	BONE_TYPE_SPINE3 = 5,
}

--- @enum BoneTypeLeft
game.Model.MetaRig = {
	BONE_TYPE_LEFT_TOE = 23,
	BONE_TYPE_LEFT_THUMB2 = 29,
	BONE_TYPE_LEFT_EAR = 9,
	BONE_TYPE_LEFT_EYE = 11,
	BONE_TYPE_LEFT_FOOT = 22,
	BONE_TYPE_LEFT_THUMB3 = 30,
	BONE_TYPE_LEFT_HAND = 16,
	BONE_TYPE_LEFT_THUMB1 = 28,
}

--- @enum BoneTypeLeftLittle
game.Model.MetaRig = {
	BONE_TYPE_LEFT_LITTLE_FINGER1 = 40,
	BONE_TYPE_LEFT_LITTLE_FINGER2 = 41,
	BONE_TYPE_LEFT_LITTLE_FINGER3 = 42,
}

--- @enum BoneTypeLeftIndex
game.Model.MetaRig = {
	BONE_TYPE_LEFT_INDEX_FINGER1 = 31,
	BONE_TYPE_LEFT_INDEX_FINGER2 = 32,
	BONE_TYPE_LEFT_INDEX_FINGER3 = 33,
}

--- @enum BoneTypeLeftMiddle
game.Model.MetaRig = {
	BONE_TYPE_LEFT_MIDDLE_FINGER1 = 34,
	BONE_TYPE_LEFT_MIDDLE_FINGER2 = 35,
	BONE_TYPE_LEFT_MIDDLE_FINGER3 = 36,
}

--- @enum BoneTypeRight
game.Model.MetaRig = {
	BONE_TYPE_RIGHT_FOOT = 26,
	BONE_TYPE_RIGHT_EAR = 10,
	BONE_TYPE_RIGHT_THUMB3 = 45,
	BONE_TYPE_RIGHT_EYE = 12,
	BONE_TYPE_RIGHT_HAND = 19,
	BONE_TYPE_RIGHT_THUMB1 = 43,
	BONE_TYPE_RIGHT_THUMB2 = 44,
	BONE_TYPE_RIGHT_TOE = 27,
}

--- @enum BoneTypeLeftLower
game.Model.MetaRig = {
	BONE_TYPE_LEFT_LOWER_ARM = 15,
	BONE_TYPE_LEFT_LOWER_LEG = 21,
}

--- @enum BoneTypeLeftUpper
game.Model.MetaRig = {
	BONE_TYPE_LEFT_UPPER_ARM = 14,
	BONE_TYPE_LEFT_UPPER_LEG = 20,
}

--- @enum BoneTypeTail
game.Model.MetaRig = {
	BONE_TYPE_TAIL_TIP = 61,
	BONE_TYPE_TAIL_MIDDLE = 59,
	BONE_TYPE_TAIL_BASE = 58,
	BONE_TYPE_TAIL_MIDDLE1 = 60,
}

--- @enum BoneTypeLeftWing
game.Model.MetaRig = {
	BONE_TYPE_LEFT_WING_MIDDLE = 63,
	BONE_TYPE_LEFT_WING = 62,
	BONE_TYPE_LEFT_WING_TIP = 64,
}

--- @enum BoneTypeRightIndex
game.Model.MetaRig = {
	BONE_TYPE_RIGHT_INDEX_FINGER1 = 46,
	BONE_TYPE_RIGHT_INDEX_FINGER2 = 47,
	BONE_TYPE_RIGHT_INDEX_FINGER3 = 48,
}

--- @enum BoneTypeRightLower
game.Model.MetaRig = {
	BONE_TYPE_RIGHT_LOWER_ARM = 18,
	BONE_TYPE_RIGHT_LOWER_LEG = 25,
}

--- @enum BoneTypeRightMiddle
game.Model.MetaRig = {
	BONE_TYPE_RIGHT_MIDDLE_FINGER1 = 49,
	BONE_TYPE_RIGHT_MIDDLE_FINGER2 = 50,
	BONE_TYPE_RIGHT_MIDDLE_FINGER3 = 51,
}

--- @enum BoneTypeRightRing
game.Model.MetaRig = {
	BONE_TYPE_RIGHT_RING_FINGER1 = 52,
	BONE_TYPE_RIGHT_RING_FINGER2 = 53,
	BONE_TYPE_RIGHT_RING_FINGER3 = 54,
}

--- @enum BoneTypeRightUpper
game.Model.MetaRig = {
	BONE_TYPE_RIGHT_UPPER_ARM = 17,
	BONE_TYPE_RIGHT_UPPER_LEG = 24,
}

--- @enum BoneTypeRightWing
game.Model.MetaRig = {
	BONE_TYPE_RIGHT_WING = 65,
	BONE_TYPE_RIGHT_WING_MIDDLE = 66,
	BONE_TYPE_RIGHT_WING_TIP = 67,
}

--- @enum RigType
game.Model.MetaRig = {
	RIG_TYPE_BIPED = 0,
	RIG_TYPE_QUADRUPED = 1,
}

--- @enum RootBone
game.Model.MetaRig = {
	ROOT_BONE = 0,
}

--- 
--- @class game.Model.RingCreateInfo
--- @field segmentCount int 
--- @field innerRadius number 
--- @field doubleSided bool 
--- @field outerRadius number 
--- @field totalAngle number 
--- @overload fun():game.Model.RingCreateInfo
--- @overload fun(arg1: number, arg2: number, arg3: bool):game.Model.RingCreateInfo
--- @overload fun(arg1: number, arg2: number, arg3: bool):game.Model.RingCreateInfo
game.Model.RingCreateInfo = {}


--- 
--- @class game.Model.Skeleton
game.Model.Skeleton = {}

--- 
--- @return table ret0
function game.Model.Skeleton:GetBones() end

--- 
--- @param name string
--- @return game.Model.Skeleton.Bone ret0
--- @overload fun(name: string, parent: game.Model.Skeleton.Bone): game.Model.Skeleton.Bone
function game.Model.Skeleton:AddBone(name) end

--- 
--- @param boneId int
--- @return game.Model.Skeleton.Bone ret0
function game.Model.Skeleton:GetBone(boneId) end

--- 
function game.Model.Skeleton:ClearBones() end

--- 
function game.Model.Skeleton:DebugPrint() end

--- 
--- @return int ret0
function game.Model.Skeleton:GetBoneCount() end

--- 
--- @return map ret0
function game.Model.Skeleton:GetBoneHierarchy() end

--- 
--- @return map ret0
function game.Model.Skeleton:GetRootBones() end

--- 
--- @param boneId int
--- @return bool ret0
--- @overload fun(boneName: string): bool
function game.Model.Skeleton:IsRootBone(boneId) end

--- 
--- @param name string
--- @return int ret0
function game.Model.Skeleton:LookupBone(name) end

--- 
--- @param bone game.Model.Skeleton.Bone
--- @return bool ret0
function game.Model.Skeleton:MakeRootBone(bone) end

--- 
--- @param arg1 game.Model.Skeleton
function game.Model.Skeleton:Merge(arg1) end

--- 
--- @return string ret0
function game.Model.Skeleton:ToDebugString() end


--- 
--- @class game.Model.Skeleton.Bone
game.Model.Skeleton.Bone = {}

--- 
--- @return int ret0
function game.Model.Skeleton.Bone:GetID() end

--- 
function game.Model.Skeleton.Bone:ClearParent() end

--- 
--- @param name string
function game.Model.Skeleton.Bone:SetName(name) end

--- 
--- @return map ret0
function game.Model.Skeleton.Bone:GetChildren() end

--- 
--- @return string ret0
function game.Model.Skeleton.Bone:GetName() end

--- 
--- @param arg1 game.Model.Skeleton.Bone
--- @return bool ret0
function game.Model.Skeleton.Bone:IsDescendantOf(arg1) end

--- 
--- @return game.Model.Skeleton.Bone ret0
function game.Model.Skeleton.Bone:GetParent() end

--- 
--- @param arg1 game.Model.Skeleton.Bone
--- @return bool ret0
function game.Model.Skeleton.Bone:IsAncestorOf(arg1) end

--- 
--- @param parent game.Model.Skeleton.Bone
function game.Model.Skeleton.Bone:SetParent(parent) end

--- 
function game.Model.Skeleton.Bone:__tostring() end


--- 
--- @class game.Model.Vertex
--- @field uv  
--- @field tangent  
--- @field position  
--- @field normal  
--- @overload fun():game.Model.Vertex
--- @overload fun(arg1: math.Vector, arg2: math.Vector):game.Model.Vertex
--- @overload fun(arg1: math.Vector, arg2: math.Vector2, arg3: math.Vector):game.Model.Vertex
--- @overload fun(arg1: math.Vector, arg2: math.Vector2, arg3: math.Vector, arg4: math.Vector4):game.Model.Vertex
--- @overload fun(arg1: vector.Vector, arg2: vector.Vector):game.Model.Vertex
--- @overload fun(arg1: vector.Vector, arg2: math.Vector2, arg3: vector.Vector):game.Model.Vertex
--- @overload fun(arg1: vector.Vector, arg2: math.Vector2, arg3: vector.Vector, arg4: math.Vector4):game.Model.Vertex
game.Model.Vertex = {}

--- 
--- @return game.Model.Vertex ret0
function game.Model.Vertex:Copy() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function game.Model.Vertex:GetBiTangent() end

--- 
--- @param 1 game.Model.Vertex
function game.Model.Vertex:__eq(arg1) end

--- 
function game.Model.Vertex:__tostring() end


--- 
--- @class game.Model.VertexWeight
--- @field boneIds  
--- @field weights  
--- @overload fun():game.Model.VertexWeight
--- @overload fun(arg1: math.Vector4i, arg2: math.Vector4):game.Model.VertexWeight
game.Model.VertexWeight = {}

--- 
--- @return game.Model.VertexWeight ret0
function game.Model.VertexWeight:Copy() end

--- 
--- @param 1 game.Model.VertexWeight
function game.Model.VertexWeight:__eq(arg1) end

--- 
function game.Model.VertexWeight:__tostring() end


--- 
--- @class game.RenderPassStats
--- @overload fun():game.RenderPassStats
game.RenderPassStats = {}

--- 
--- @return game.RenderPassStats ret0
function game.RenderPassStats:Copy() end

--- 
--- @param 1 game.RenderPassStats
function game.RenderPassStats:__add(arg1) end

--- 
--- @param timer enum RenderPassStats::Timer
--- @return number ret0
function game.RenderPassStats:GetTime(timer) end

--- 
--- @param counter enum RenderPassStats::Counter
--- @return int ret0
function game.RenderPassStats:GetCount(counter) end


--- @enum Counter
game.RenderPassStats = {
	COUNTER_COUNT = 13,
	COUNTER_DRAW_CALLS = 3,
	COUNTER_ENTITIES_WITHOUT_INSTANCING = 12,
	COUNTER_SHADER_STATE_CHANGES = 0,
	COUNTER_MATERIAL_STATE_CHANGES = 1,
}

--- @enum CounterDrawn
game.RenderPassStats = {
	COUNTER_DRAWN_MESHES = 4,
	COUNTER_DRAWN_TRIANGLES = 6,
	COUNTER_DRAWN_VERTICES = 5,
}

--- @enum TimerCpu
game.RenderPassStats = {
	TIMER_CPU_COUNT = 6,
	TIMER_CPU_END = 6,
	TIMER_CPU_EXECUTION = 2,
	TIMER_CPU_START = 1,
}

--- @enum CounterInstanced
game.RenderPassStats = {
	COUNTER_INSTANCED_MESHES = 10,
	COUNTER_INSTANCED_SKIPPED_RENDER_ITEMS = 11,
}

--- @enum CounterEntity
game.RenderPassStats = {
	COUNTER_ENTITY_BUFFER_UPDATES = 7,
	COUNTER_ENTITY_STATE_CHANGES = 2,
}

--- @enum TimerGpu
game.RenderPassStats = {
	TIMER_GPU_COUNT = 1,
	TIMER_GPU_END = 0,
	TIMER_GPU_EXECUTION = 0,
	TIMER_GPU_START = 0,
}

--- @enum CounterInstance
game.RenderPassStats = {
	COUNTER_INSTANCE_SETS = 8,
	COUNTER_INSTANCE_SET_MESHES = 9,
}

--- @enum Timer
game.RenderPassStats = {
	TIMER_ENTITY_BIND = 4,
	TIMER_COUNT = 7,
	TIMER_DRAW_CALL = 5,
	TIMER_RENDER_THREAD_WAIT = 1,
	TIMER_MATERIAL_BIND = 3,
	TIMER_SHADER_BIND = 6,
}

--- 
--- @class game.RenderStats
--- @overload fun():game.RenderStats
game.RenderStats = {}

--- 
--- @return game.RenderStats ret0
function game.RenderStats:Copy() end

--- 
--- @param pass enum RenderStats::RenderPass
--- @return game.RenderPassStats ret0
function game.RenderStats:GetPassStats(pass) end

--- 
--- @param 1 game.RenderStats
function game.RenderStats:__add(arg1) end

--- 
--- @param timer enum RenderStats::RenderStage
--- @return number ret0
function game.RenderStats:GetTime(timer) end


--- @enum RenderPass
game.RenderStats = {
	RENDER_PASS_COUNT = 4,
	RENDER_PASS_SHADOW_PASS = 3,
	RENDER_PASS_PREPASS = 2,
}

--- @enum RenderPassLighting
game.RenderStats = {
	RENDER_PASS_LIGHTING_PASS = 0,
	RENDER_PASS_LIGHTING_PASS_TRANSLUCENT = 1,
}

--- @enum TimerLightCulling
game.RenderStats = {
	TIMER_LIGHT_CULLING_CPU = 7,
	TIMER_LIGHT_CULLING_GPU = 0,
}

--- @enum Timer
game.RenderStats = {
	TIMER_UPDATE_RENDER_BUFFERS_CPU = 11,
	TIMER_COUNT = 12,
	TIMER_PREPASS_EXECUTION_CPU = 8,
	TIMER_POST_PROCESSING_EXECUTION_CPU = 10,
	TIMER_LIGHTING_PASS_EXECUTION_CPU = 9,
}

--- @enum TimerPostProcessingGpu
game.RenderStats = {
	TIMER_POST_PROCESSING_GPU = 1,
	TIMER_POST_PROCESSING_GPU_TONE_MAPPING = 4,
	TIMER_POST_PROCESSING_GPU_BLOOM = 3,
	TIMER_POST_PROCESSING_GPU_FOG = 2,
	TIMER_POST_PROCESSING_GPU_FXAA = 5,
	TIMER_POST_PROCESSING_GPU_SSAO = 6,
}

--- 
--- @class game.SurfaceMaterial
game.SurfaceMaterial = {}

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetTorqueDragCoefficient(arg1) end

--- 
function game.SurfaceMaterial:ClearIOR() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function game.SurfaceMaterial:GetSubsurfaceRadiusMM() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetAudioMidFrequencyAbsorption() end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetDynamicFriction(arg1) end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetAudioHighFrequencyAbsorption() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetAudioMidFrequencyTransmission() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetAudioHighFrequencyTransmission() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetDynamicFriction() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetAudioLowFrequencyAbsorption() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetIOR() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetAudioLowFrequencyTransmission() end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetRestitution(arg1) end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetAudioScattering() end

--- 
--- @return string ret0
function game.SurfaceMaterial:GetBulletImpactSound() end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetLinearDragCoefficient(arg1) end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetDensity() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetWavePropagation() end

--- 
--- @return string ret0
function game.SurfaceMaterial:GetFootstepSound() end

--- 
--- @param radiusRGB math.Vector
--- @overload fun(radiusRGB: vector.Vector): 
function game.SurfaceMaterial:SetSubsurfaceScatterColor(radiusRGB) end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetWaveStiffness() end

--- 
--- @return string ret0
function game.SurfaceMaterial:GetHardImpactSound() end

--- 
--- @return string ret0
function game.SurfaceMaterial:GetImpactParticleEffect() end

--- 
--- @return int ret0
function game.SurfaceMaterial:GetIndex() end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetAudioScattering(arg1) end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetPBRRoughness() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetLinearDragCoefficient() end

--- 
--- @param arg1 string
function game.SurfaceMaterial:SetSoftImpactSound(arg1) end

--- 
--- @return string ret0
function game.SurfaceMaterial:GetName() end

--- 
--- @return enum pragma::nav::PolyFlags ret0
function game.SurfaceMaterial:GetNavigationFlags() end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetAudioHighFrequencyTransmission(arg1) end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetPBRMetalness() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetRestitution() end

--- 
--- @return string ret0
function game.SurfaceMaterial:GetSoftImpactSound() end

--- 
--- @param arg1 string
function game.SurfaceMaterial:SetHardImpactSound(arg1) end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetStaticFriction() end

--- 
--- @return util.Color ret0
function game.SurfaceMaterial:GetSubsurfaceColor() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetSubsurfaceFactor() end

--- 
--- @return math.Vector ret0
--- @overload fun(): math.Vector
function game.SurfaceMaterial:GetSubsurfaceScatterColor() end

--- 
--- @return number ret0
function game.SurfaceMaterial:GetTorqueDragCoefficient() end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetAudioHighFrequencyAbsorption(arg1) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetAudioLowFrequencyAbsorption(arg1) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetWaveStiffness(arg1) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetAudioLowFrequencyTransmission(arg1) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetAudioMidFrequencyAbsorption(arg1) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetAudioMidFrequencyTransmission(arg1) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetWavePropagation(arg1) end

--- 
--- @param arg1 string
function game.SurfaceMaterial:SetFootstepSound(arg1) end

--- 
--- @param arg1 string
function game.SurfaceMaterial:SetBulletImpactSound(arg1) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetDensity(arg1) end

--- 
--- @param color util.Color
function game.SurfaceMaterial:SetSubsurfaceColor(color) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetFriction(arg1) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetIOR(arg1) end

--- 
--- @param radiusMM math.Vector
--- @overload fun(radiusMM: vector.Vector): 
function game.SurfaceMaterial:SetSubsurfaceRadiusMM(radiusMM) end

--- 
--- @param arg1 string
function game.SurfaceMaterial:SetImpactParticleEffect(arg1) end

--- 
--- @param arg1 enum pragma::nav::PolyFlags
function game.SurfaceMaterial:SetNavigationFlags(arg1) end

--- 
--- @param arg1 number
function game.SurfaceMaterial:SetStaticFriction(arg1) end

--- 
--- @param factor number
function game.SurfaceMaterial:SetSubsurfaceFactor(factor) end

--- 
function game.SurfaceMaterial:__tostring() end


--- 
--- @class game.ValueDriverDescriptor
--- @field expression  
--- @overload fun(arg2: string):game.ValueDriverDescriptor
--- @overload fun(arg2: string, arg3: map):game.ValueDriverDescriptor
--- @overload fun(arg2: string, arg3: map, arg4: map):game.ValueDriverDescriptor
game.ValueDriverDescriptor = {}

--- 
--- @return map ret0
function game.ValueDriverDescriptor:GetConstants() end

--- 
--- @param name string
--- @param udmType classObject
--- @overload fun(name: string, prop: udm.Property): 
function game.ValueDriverDescriptor:AddConstant(name, udmType) end

--- 
--- @param arg1 string
--- @param arg2 string
function game.ValueDriverDescriptor:AddReference(arg1, arg2) end

--- 
--- @return map ret0
function game.ValueDriverDescriptor:GetReferences() end

--- 
function game.ValueDriverDescriptor:__tostring() end


--- 
--- @class game.WorldEnvironment
game.WorldEnvironment = {}

--- 
function game.WorldEnvironment:GetFogColor() end

--- 
--- @return int ret0
function game.WorldEnvironment:GetShadowResolution() end

--- 
function game.WorldEnvironment:GetFogColorProperty() end

--- 
function game.WorldEnvironment:GetFogEnabledProperty() end

--- 
function game.WorldEnvironment:GetFogDensity() end

--- 
function game.WorldEnvironment:GetShaderQualityProperty() end

--- 
function game.WorldEnvironment:GetFogEnd() end

--- 
--- @param arg1 int
function game.WorldEnvironment:SetShaderQuality(arg1) end

--- 
function game.WorldEnvironment:GetFogEndProperty() end

--- 
function game.WorldEnvironment:GetFogFarDistance() end

--- 
function game.WorldEnvironment:GetFogMaxDensityProperty() end

--- 
function game.WorldEnvironment:GetFogStart() end

--- 
function game.WorldEnvironment:GetFogStartProperty() end

--- 
function game.WorldEnvironment:GetFogType() end

--- 
function game.WorldEnvironment:GetFogTypeProperty() end

--- 
--- @param start number
function game.WorldEnvironment:SetFogStart(start) end

--- 
--- @return bool ret0
function game.WorldEnvironment:IsUnlit() end

--- 
--- @return int ret0
function game.WorldEnvironment:GetShaderQuality() end

--- 
function game.WorldEnvironment:GetShadowResolutionProperty() end

--- 
function game.WorldEnvironment:GetUnlitProperty() end

--- 
function game.WorldEnvironment:IsFogEnabled() end

--- 
--- @param color util.Color
function game.WorldEnvironment:SetFogColor(color) end

--- 
--- @param density number
function game.WorldEnvironment:SetFogDensity(density) end

--- 
--- @param bEnabled bool
function game.WorldEnvironment:SetFogEnabled(bEnabled) end

--- 
--- @param end number
function game.WorldEnvironment:SetFogEnd(end_) end

--- 
--- @param type enum util::FogType
function game.WorldEnvironment:SetFogType(type) end

--- 
--- @param arg1 int
function game.WorldEnvironment:SetShadowResolution(arg1) end

--- 
--- @param arg1 bool
function game.WorldEnvironment:SetUnlit(arg1) end


--- @enum FogType
game.WorldEnvironment = {
	FOG_TYPE_LINEAR = 0,
	FOG_TYPE_EXPONENTIAL = 1,
	FOG_TYPE_EXPONENTIAL2 = 2,
}

