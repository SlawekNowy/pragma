--- @meta
--- 
--- @class Model
Model = {}


--- 
--- @class Model.Animation
Model.Animation = {}

--- 
--- @param arg1 enum FAnim
function Model.Animation:AddFlags(arg1) end

--- 
--- @param frameId int
--- @param idx int
function Model.Animation:RemoveEvent(frameId, idx) end

--- 
--- @param arg1 int
--- @return int ret0
function Model.Animation:AddBoneId(arg1) end

--- 
--- @param frameId int
--- @param eventId int
--- @param args any
function Model.Animation:AddEvent(frameId, eventId, args) end

--- 
--- @param arg1 math.Vector
function Model.Animation:Scale(arg1) end

--- 
--- @param arg1 int
--- @return number ret0
function Model.Animation:GetBoneWeight(arg1) end

--- 
--- @param frame Model.Animation.Frame
function Model.Animation:AddFrame(frame) end

--- 
--- @param arg1 int
--- @param arg2 number
function Model.Animation:SetBoneWeight(arg1, arg2) end

--- 
function Model.Animation:Reverse() end

--- 
--- @return any ret0
function Model.Animation:GetActivityName() end

--- 
--- @param mdl game.Model
function Model.Animation:CalcRenderBounds(mdl) end

--- 
--- @param frameId int
--- @param idx int
--- @param oArgs any
function Model.Animation:SetEventArgs(frameId, idx, oArgs) end

--- 
function Model.Animation:ClearFrames() end

--- 
--- @return enum Activity ret0
function Model.Animation:GetActivity() end

--- 
--- @return enum FAnim ret0
function Model.Animation:GetFlags() end

--- 
--- @return int ret0
function Model.Animation:GetActivityWeight() end

--- 
--- @param arg1 Model.Skeleton
--- @param arg2 Model.Animation.Frame
--- @return panima.Animation ret0
--- @overload fun(arg1: Model.Skeleton, arg2: Model.Animation.Frame): panima.Animation
function Model.Animation:ToPanimaAnimation(arg1, arg2) end

--- 
function Model.Animation:GetBlendController() end

--- 
--- @param ID int
function Model.Animation:GetFrame(ID) end

--- 
--- @return int ret0
function Model.Animation:GetBoneCount() end

--- 
--- @param idx int
--- @return int ret0
function Model.Animation:GetBoneId(idx) end

--- 
--- @param boneId int
function Model.Animation:LookupBone(boneId) end

--- 
--- @return table ret0
function Model.Animation:GetBoneList() end

--- 
function Model.Animation:GetBoneWeights() end

--- 
--- @return number ret0
function Model.Animation:GetDuration() end

--- 
--- @overload fun(frameId: int): 
function Model.Animation:GetEventCount() end

--- 
--- @overload fun(frameId: int): 
function Model.Animation:GetEvents() end

--- 
--- @return int ret0
function Model.Animation:GetFPS() end

--- 
--- @return number ret0
function Model.Animation:GetFadeInTime() end

--- 
--- @param arg1 Model.Skeleton
--- @param arg2 math.Quaternion
function Model.Animation:Rotate(arg1, arg2) end

--- 
--- @return number ret0
function Model.Animation:GetFadeOutTime() end

--- 
--- @return int ret0
function Model.Animation:GetFrameCount() end

--- 
--- @param o any
function Model.Animation:SetBoneList(o) end

--- 
function Model.Animation:GetFrames() end

--- 
--- @param arg1 number
function Model.Animation:SetFadeOutTime(arg1) end

--- 
--- @param  game.Model
function Model.Animation:GetRenderBounds(arg) end

--- 
--- @param arg1 enum FAnim
function Model.Animation:RemoveFlags(arg1) end

--- 
--- @param assetData udm.AssetData
function Model.Animation:Save(assetData) end

--- 
--- @param arg1 enum Activity
function Model.Animation:SetActivity(arg1) end

--- 
--- @param arg1 int
function Model.Animation:SetActivityWeight(arg1) end

--- 
--- @param frameId int
--- @param idx int
--- @param type int
--- @param oArgs any
function Model.Animation:SetEventData(frameId, idx, type, oArgs) end

--- 
--- @param frameId int
--- @param idx int
--- @param type int
function Model.Animation:SetEventType(frameId, idx, type) end

--- 
--- @param arg1 int
function Model.Animation:SetFPS(arg1) end

--- 
--- @param arg1 number
function Model.Animation:SetFadeInTime(arg1) end

--- 
--- @param arg1 enum FAnim
function Model.Animation:SetFlags(arg1) end

--- 
--- @param arg1 Model.Skeleton
--- @param arg2 math.Vector
function Model.Animation:Translate(arg1, arg2) end


--- @enum Flag
Model.Animation = {
	FLAG_MOVEZ = 64,
	FLAG_AUTOPLAY = 128,
	FLAG_GESTURE = 256,
	FLAG_LOOP = 1,
	FLAG_MOVEX = 32,
	FLAG_NOREPEAT = 2,
}

--- 
--- @class Model.Animation.Frame
Model.Animation.Frame = {}

--- 
--- @param boneId int
--- @param scale math.Vector
function Model.Animation.Frame:SetBoneScale(boneId, scale) end

--- 
--- @param anim Model.Animation
--- @param mdl game.Model
function Model.Animation.Frame:CalcRenderBounds(anim, mdl) end

--- 
--- @param boneId int
function Model.Animation.Frame:GetBonePose(boneId) end

--- 
--- @param boneID int
function Model.Animation.Frame:GetBoneMatrix(boneID) end

--- 
function Model.Animation.Frame:GetBoneCount() end

--- 
function Model.Animation.Frame:Copy() end

--- 
--- @param x number
function Model.Animation.Frame:SetMoveTranslationX(x) end

--- 
--- @param boneID int
--- @param pos math.Vector
--- @param rot math.Quaternion
--- @overload fun(boneID: int, pos: math.Vector, rot: math.Quaternion, scale: math.Vector): 
function Model.Animation.Frame:SetBoneTransform(boneID, pos, rot) end

--- 
--- @param boneID int
function Model.Animation.Frame:GetBoneRotation(boneID) end

--- 
--- @param boneId int
function Model.Animation.Frame:GetBoneScale(boneId) end

--- 
--- @param boneID int
function Model.Animation.Frame:GetBoneTransform(boneID) end

--- 
function Model.Animation.Frame:GetFlexControllerIds() end

--- 
function Model.Animation.Frame:GetMoveTranslationZ() end

--- 
function Model.Animation.Frame:GetFlexControllerWeights() end

--- 
--- @param skeleton Model.Skeleton
--- @param boneId int
function Model.Animation.Frame:GetLocalBoneTransform(skeleton, boneId) end

--- 
--- @param scale math.Vector
function Model.Animation.Frame:Scale(scale) end

--- 
function Model.Animation.Frame:GetMoveTranslation() end

--- 
function Model.Animation.Frame:GetMoveTranslationX() end

--- 
--- @param skeleton Model.Skeleton
--- @overload fun(anim: Model.Animation, skeleton: Model.Skeleton): 
function Model.Animation.Frame:Globalize(skeleton) end

--- 
--- @param skeleton Model.Skeleton
--- @overload fun(anim: Model.Animation, skeleton: Model.Skeleton): 
function Model.Animation.Frame:Localize(skeleton) end

--- 
--- @param anim Model.Animation
--- @param skeleton Model.Skeleton
--- @param rot math.Quaternion
function Model.Animation.Frame:Rotate(anim, skeleton, rot) end

--- 
--- @param boneCount int
function Model.Animation.Frame:SetBoneCount(boneCount) end

--- 
--- @param boneId int
--- @param pose math.Transform
--- @overload fun(boneId: int, pose: math.ScaledTransform): 
function Model.Animation.Frame:SetBonePose(boneId, pose) end

--- 
--- @param boneID int
--- @param pos math.Vector
function Model.Animation.Frame:SetBonePosition(boneID, pos) end

--- 
--- @param boneID int
--- @param rot math.Quaternion
function Model.Animation.Frame:SetBoneRotation(boneID, rot) end

--- 
--- @param x number
--- @param z number
function Model.Animation.Frame:SetMoveTranslation(x, z) end

--- 
--- @param object any
function Model.Animation.Frame:SetFlexControllerWeights(object) end

--- 
--- @param z number
function Model.Animation.Frame:SetMoveTranslationZ(z) end

--- 
--- @param anim Model.Animation
--- @param skeleton Model.Skeleton
--- @param t math.Vector
function Model.Animation.Frame:Translate(anim, skeleton, t) end


--- 
--- @class Model.ConeCreateInfo
--- @field endRadius number 
--- @field startRadius number 
--- @field segmentCount int 
--- @field length number 
--- @overload fun():Model.ConeCreateInfo
--- @overload fun(arg1: number, arg2: number, arg3: number):Model.ConeCreateInfo
--- @overload fun(arg1: number, arg2: number):Model.ConeCreateInfo
Model.ConeCreateInfo = {}


--- 
--- @class Model.MetaRigBlendShape
--- @field flexControllerId int 
Model.MetaRigBlendShape = {}

--- 
function Model.MetaRigBlendShape:__tostring() end


--- 
--- @class Model.BoxCreateInfo
--- @field max  
--- @field min  
--- @overload fun():Model.BoxCreateInfo
--- @overload fun(arg1: math.Vector, arg2: math.Vector):Model.BoxCreateInfo
Model.BoxCreateInfo = {}


--- 
--- @class Model.CircleCreateInfo
--- @field segmentCount int 
--- @field doubleSided bool 
--- @field radius number 
--- @field totalAngle number 
--- @overload fun():Model.CircleCreateInfo
--- @overload fun(arg1: number, arg2: bool):Model.CircleCreateInfo
--- @overload fun(arg1: number, arg2: bool):Model.CircleCreateInfo
Model.CircleCreateInfo = {}


--- 
--- @class Model.CollisionMesh
Model.CollisionMesh = {}

--- 
--- @return number ret0
function Model.CollisionMesh:GetVolume() end

--- 
--- @param vertIdx int
--- @param boneIdx int
--- @return int ret0
--- @overload fun(vertIdx: int, boneIdx: int, flags: enum CollisionMesh::SoftBodyAnchor::Flags): int
--- @overload fun(vertIdx: int, boneIdx: int, flags: enum CollisionMesh::SoftBodyAnchor::Flags, influence: number): int
function Model.CollisionMesh:AddSoftBodyAnchor(vertIdx, boneIdx) end

--- 
function Model.CollisionMesh:ClearVertices() end

--- 
function Model.CollisionMesh:ClearSoftBodyAnchors() end

--- 
--- @param arg1 math.Vector
--- @param arg2 number
--- @param arg3 Model.CollisionMesh
--- @param arg4 Model.CollisionMesh
function Model.CollisionMesh:ClipAgainstPlane(arg1, arg2, arg3, arg4) end

--- 
--- @return table ret0
function Model.CollisionMesh:GetVertices() end

--- 
--- @return int ret0
function Model.CollisionMesh:GetVertexCount() end

--- 
--- @param idx0 int
--- @param idx1 int
--- @param idx2 int
function Model.CollisionMesh:AddTriangle(idx0, idx1, idx2) end

--- 
--- @param arg1 math.Vector
function Model.CollisionMesh:AddVertex(arg1) end

--- 
--- @param tTriangles table
function Model.CollisionMesh:SetTriangles(tTriangles) end

--- 
--- @param arg1 int
function Model.CollisionMesh:SetBoneParentId(arg1) end

--- 
--- @return Model.CollisionMesh ret0
function Model.CollisionMesh:Copy() end

--- 
function Model.CollisionMesh:Centralize() end

--- 
--- @return number ret0
function Model.CollisionMesh:GetMass() end

--- 
function Model.CollisionMesh:ClearTriangles() end

--- 
--- @return math.Vector ret0_1
--- @return math.Vector ret0_2
function Model.CollisionMesh:GetAABB() end

--- 
--- @param arg1 bool
function Model.CollisionMesh:SetConvex(arg1) end

--- 
--- @return phys.Shape ret0
function Model.CollisionMesh:GetShape() end

--- 
--- @return int ret0
function Model.CollisionMesh:GetBoneParentId() end

--- 
--- @return math.Vector ret0
function Model.CollisionMesh:GetOrigin() end

--- 
--- @return table ret0
function Model.CollisionMesh:GetSoftBodyAnchors() end

--- 
function Model.CollisionMesh:GetSoftBodyInfo() end

--- 
function Model.CollisionMesh:GetSoftBodyMesh() end

--- 
--- @return table ret0
function Model.CollisionMesh:GetSoftBodyTriangles() end

--- 
--- @return int ret0
function Model.CollisionMesh:GetSurfaceMaterialId() end

--- 
--- @return table ret0
function Model.CollisionMesh:GetSurfaceMaterialIds() end

--- 
--- @param o table
function Model.CollisionMesh:SetSoftBodyTriangles(o) end

--- 
function Model.CollisionMesh:GetTriangles() end

--- 
--- @param min math.Vector
--- @param max math.Vector
--- @return bool ret0
function Model.CollisionMesh:IntersectAABB(min, max) end

--- 
--- @param subMesh Model.Mesh.Sub
function Model.CollisionMesh:SetSoftBodyMesh(subMesh) end

--- 
--- @return bool ret0
function Model.CollisionMesh:IsConvex() end

--- 
--- @param arg1 math.Vector
function Model.CollisionMesh:Translate(arg1) end

--- 
--- @return bool ret0
function Model.CollisionMesh:IsSoftBody() end

--- 
--- @param arg1 int
function Model.CollisionMesh:RemoveSoftBodyAnchor(arg1) end

--- 
--- @param arg1 math.Quaternion
function Model.CollisionMesh:Rotate(arg1) end

--- 
--- @param min math.Vector
--- @param max math.Vector
function Model.CollisionMesh:SetAABB(min, max) end

--- 
--- @param arg1 number
function Model.CollisionMesh:SetMass(arg1) end

--- 
--- @param arg1 math.Vector
function Model.CollisionMesh:SetOrigin(arg1) end

--- 
--- @param arg1 bool
function Model.CollisionMesh:SetSoftBody(arg1) end

--- 
--- @param arg1 int
function Model.CollisionMesh:SetSurfaceMaterialId(arg1) end

--- 
--- @param tVertices table
function Model.CollisionMesh:SetVertices(tVertices) end

--- 
--- @param arg1 number
function Model.CollisionMesh:SetVolume(arg1) end

--- 
function Model.CollisionMesh:Update() end

--- 
function Model.CollisionMesh:__tostring() end


--- @enum FsoftbodyAnchor
Model.CollisionMesh = {
	FSOFTBODY_ANCHOR_DISABLE_COLLISIONS = 2,
	FSOFTBODY_ANCHOR_NONE = 0,
	FSOFTBODY_ANCHOR_RIGID = 1,
}

--- 
--- @class Model.CylinderCreateInfo
--- @field segmentCount int 
--- @field length number 
--- @field radius number 
--- @overload fun():Model.CylinderCreateInfo
--- @overload fun(arg1: number, arg2: number):Model.CylinderCreateInfo
Model.CylinderCreateInfo = {}


--- 
--- @class Model.EllipticConeCreateInfo: Model.ConeCreateInfo
--- @field endRadiusY number 
--- @field startRadiusY number 
Model.EllipticConeCreateInfo = {}


--- 
--- @class Model.ExportInfo
--- @field aoDevice int 
--- @field exportMorphTargets bool 
--- @field aoResolution int 
--- @field exportAnimations bool 
--- @field enableExtendedDDS bool 
--- @field aoSamples int 
--- @field embedAnimations bool 
--- @field exportImages bool 
--- @field exportSkinnedMeshData bool 
--- @field fullExport bool 
--- @field generateAo bool 
--- @field imageFormat int 
--- @field mergeMeshesByMaterial bool 
--- @field normalizeTextureNames bool 
--- @field verbose bool 
--- @field saveAsBinary bool 
--- @field scale number 
--- @overload fun():Model.ExportInfo
Model.ExportInfo = {}

--- 
--- @param oTable any
function Model.ExportInfo:SetAnimationList(oTable) end


--- @enum Device
Model.ExportInfo = {
	DEVICE_CPU = 0,
	DEVICE_GPU = 1,
}

--- @enum ImageFormat
Model.ExportInfo = {
	IMAGE_FORMAT_JPG = 3,
	IMAGE_FORMAT_BMP = 1,
	IMAGE_FORMAT_DDS = 5,
	IMAGE_FORMAT_HDR = 4,
	IMAGE_FORMAT_KTX = 6,
	IMAGE_FORMAT_PNG = 0,
	IMAGE_FORMAT_TGA = 2,
}

--- 
--- @class Model.Eyeball
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
--- @overload fun():Model.Eyeball
Model.Eyeball = {}

--- 
--- @return int ret0
function Model.Eyeball:GetLowerLidFlexIndex() end

--- 
--- @return any ret0
function Model.Eyeball:GetLowerLidFlexAngles() end

--- 
--- @return any ret0
function Model.Eyeball:GetLowerLidFlexIndices() end

--- 
--- @return any ret0
function Model.Eyeball:GetUpperLidFlexAngles() end

--- 
--- @return int ret0
function Model.Eyeball:GetUpperLidFlexIndex() end

--- 
--- @return any ret0
function Model.Eyeball:GetUpperLidFlexIndices() end


--- 
--- @class Model.Flex
--- @overload fun():Model.Flex
Model.Flex = {}

--- 
--- @param op Model.Flex.Operation
function Model.Flex:AddOperation(op) end

--- 
--- @param anim Model.VertexAnimation
--- @overload fun(anim: Model.VertexAnimation, frameIndex: int): 
function Model.Flex:SetVertexAnimation(anim) end

--- 
function Model.Flex:GetOperations() end

--- 
--- @param name string
function Model.Flex:SetName(name) end

--- 
function Model.Flex:GetFrameIndex() end

--- 
function Model.Flex:GetName() end

--- 
function Model.Flex:GetVertexAnimation() end

--- 
--- @return string ret0
function Model.Flex:__tostring() end


--- @enum Op
Model.Flex = {
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
Model.Flex = {
	OP_TWO_WAY0 = 15,
	OP_TWO_WAY1 = 16,
}

--- @enum OpDme
Model.Flex = {
	OP_DME_LOWER_EYELID = 20,
	OP_DME_UPPER_EYELID = 21,
}

--- 
--- @class Model.Flex.Operation
--- @field index  
--- @field type  
--- @field value  
--- @overload fun():Model.Flex.Operation
Model.Flex.Operation = {}

--- 
function Model.Flex.Operation:GetName() end

--- 
--- @param name string
function Model.Flex.Operation:SetName(name) end


--- 
--- @class Model.SphereCreateInfo
--- @field recursionLevel int 
--- @field origin  
--- @field radius number 
--- @overload fun():Model.SphereCreateInfo
--- @overload fun(arg1: math.Vector, arg2: number):Model.SphereCreateInfo
Model.SphereCreateInfo = {}


--- 
--- @class Model.MetaRigBone
--- @field boneId int 
--- @field length number 
--- @field normalizedRotationOffset  
--- @field max  
--- @field min  
--- @field radius number 
Model.MetaRigBone = {}

--- 
function Model.MetaRigBone:__tostring() end


--- 
--- @class Model.FlexAnimation
Model.FlexAnimation = {}

--- 
--- @return any ret0
function Model.FlexAnimation:GetFlexControllerIds() end

--- 
--- @param id int
--- @return int ret0
function Model.FlexAnimation:AddFlexControllerId(id) end

--- 
--- @return Model.FlexAnimation.Frame ret0
function Model.FlexAnimation:AddFrame() end

--- 
function Model.FlexAnimation:ClearFrames() end

--- 
--- @return int ret0
function Model.FlexAnimation:GetFlexControllerCount() end

--- 
--- @return number ret0
function Model.FlexAnimation:GetFps() end

--- 
--- @param frameId int
--- @return Model.FlexAnimation.Frame ret0
function Model.FlexAnimation:GetFrame(frameId) end

--- 
--- @return int ret0
function Model.FlexAnimation:GetFrameCount() end

--- 
--- @return any ret0
function Model.FlexAnimation:GetFrames() end

--- 
--- @param id int
--- @return any ret0
function Model.FlexAnimation:LookupLocalFlexControllerIndex(id) end

--- 
--- @param idx int
function Model.FlexAnimation:RemoveFrame(idx) end

--- 
--- @param assetData udm.AssetData
function Model.FlexAnimation:Save(assetData) end

--- 
--- @param tIds 
function Model.FlexAnimation:SetFlexControllerIds(tIds) end

--- 
--- @param frameId int
--- @param id int
--- @param val number
function Model.FlexAnimation:SetFlexControllerValue(frameId, id, val) end

--- 
--- @param fps number
function Model.FlexAnimation:SetFps(fps) end


--- 
--- @class Model.FlexAnimation.Frame
Model.FlexAnimation.Frame = {}

--- 
--- @param id int
function Model.FlexAnimation.Frame:GetFlexControllerValue(id) end

--- 
--- @return int ret0
function Model.FlexAnimation.Frame:GetFlexControllerValueCount() end

--- 
--- @return any ret0
function Model.FlexAnimation.Frame:GetFlexControllerValues() end

--- 
--- @param id int
--- @param val number
function Model.FlexAnimation.Frame:SetFlexControllerValue(id, val) end

--- 
--- @param t 
function Model.FlexAnimation.Frame:SetFlexControllerValues(t) end


--- 
--- @class Model.Joint
--- @field collide  
Model.Joint = {}

--- 
--- @return any ret0
function Model.Joint:GetArgs() end

--- 
function Model.Joint:GetParentBoneId() end

--- 
function Model.Joint:GetChildBoneId() end

--- 
function Model.Joint:GetCollisionsEnabled() end

--- 
function Model.Joint:GetKeyValues() end

--- 
--- @param bEnabled bool
function Model.Joint:SetCollisionsEnabled(bEnabled) end

--- 
function Model.Joint:GetType() end

--- 
--- @param key string
function Model.Joint:RemoveKeyValue(key) end

--- 
--- @param t 
function Model.Joint:SetArgs(t) end

--- 
--- @param meshId int
function Model.Joint:SetCollisionMeshId(meshId) end

--- 
--- @param key string
--- @param val string
function Model.Joint:SetKeyValue(key, val) end

--- 
--- @param keyValues any
function Model.Joint:SetKeyValues(keyValues) end

--- 
--- @param meshId int
function Model.Joint:SetParentCollisionMeshId(meshId) end

--- 
--- @param type int
function Model.Joint:SetType(type) end


--- @enum Type
Model.Joint = {
	TYPE_BALLSOCKET = 2,
	TYPE_FIXED = 1,
	TYPE_CONETWIST = 5,
	TYPE_DOF = 6,
	TYPE_HINGE = 3,
	TYPE_NONE = 0,
	TYPE_SLIDER = 4,
}

--- 
--- @class Model.Mesh
Model.Mesh = {}

--- 
function Model.Mesh:__tostring() end

--- 
--- @param subMesh Model.Mesh.Sub
--- @param pos int
--- @overload fun(mesh: Model.Mesh.Sub): 
function Model.Mesh:AddSubMesh(subMesh, pos) end

--- 
function Model.Mesh:GetIndexCount() end

--- 
function Model.Mesh:Centralize() end

--- 
function Model.Mesh:GetReferenceId() end

--- 
function Model.Mesh:ClearSubMeshes() end

--- 
--- @param uuid string
--- @return Model.Mesh.Sub ret0
function Model.Mesh:FindSubMesh(uuid) end

--- 
--- @param tSubMeshes any
function Model.Mesh:SetSubMeshes(tSubMeshes) end

--- 
function Model.Mesh:GetTriangleCount() end

--- 
function Model.Mesh:GetCenter() end

--- 
function Model.Mesh:GetBounds() end

--- 
--- @param index int
function Model.Mesh:GetSubMesh(index) end

--- 
function Model.Mesh:GetSubMeshCount() end

--- 
function Model.Mesh:GetSubMeshes() end

--- 
function Model.Mesh:GetVertexCount() end

--- 
--- @param flags int
--- @overload fun(): 
function Model.Mesh:Update(flags) end

--- 
--- @param uuid string
--- @overload fun(i: int): 
function Model.Mesh:RemoveSubMesh(uuid) end

--- 
--- @param rotation math.Quaternion
function Model.Mesh:Rotate(rotation) end

--- 
--- @param scale math.Vector
function Model.Mesh:Scale(scale) end

--- 
--- @param center math.Vector
function Model.Mesh:SetCenter(center) end

--- 
--- @param translation math.Vector
function Model.Mesh:Translate(translation) end

--- 
--- @param 1 Model.Mesh
function Model.Mesh:__eq(arg1) end


--- 
--- @class Model.Mesh.Sub
Model.Mesh.Sub = {}

--- 
function Model.Mesh.Sub:GetVertices() end

--- 
--- @param arg1 int
function Model.Mesh.Sub:AddIndex(arg1) end

--- 
function Model.Mesh.Sub:GetVertexCount() end

--- 
--- @param arg1 util.Uuid
--- @overload fun(uuid: string): 
function Model.Mesh.Sub:SetUuid(arg1) end

--- 
--- @return any ret0
function Model.Mesh.Sub:GetUVSetNames() end

--- 
--- @param a int
--- @param b int
--- @param c int
--- @overload fun(v1: Model.Vertex, v2: Model.Vertex, v3: Model.Vertex): 
function Model.Mesh.Sub:AddTriangle(a, b, c) end

--- 
--- @param idx0 int
--- @param idx1 int
function Model.Mesh.Sub:AddLine(idx0, idx1) end

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
function Model.Mesh.Sub:ApplyUVMapping(nu, nv, w, h, ou, ov, su, sv) end

--- 
function Model.Mesh.Sub:ClearExtendedVertexWeights() end

--- 
--- @param v Model.Vertex
function Model.Mesh.Sub:AddVertex(v) end

--- 
--- @param rotation math.Quaternion
function Model.Mesh.Sub:Rotate(rotation) end

--- 
function Model.Mesh.Sub:GetVertexWeights() end

--- 
--- @param idx int
function Model.Mesh.Sub:AddPoint(idx) end

--- 
--- @param uvSetName string
function Model.Mesh.Sub:AddUVSet(uvSetName) end

--- 
--- @param idx int
--- @return int ret0_1
--- @return int ret0_2
--- @return int ret0_3
function Model.Mesh.Sub:GetTriangle(idx) end

--- 
function Model.Mesh.Sub:ClearAlphas() end

--- 
function Model.Mesh.Sub:ClearIndices() end

--- 
function Model.Mesh.Sub:ClearUVSets() end

--- 
--- @param uvSetName string
function Model.Mesh.Sub:HasUVSet(uvSetName) end

--- 
--- @return udm.PropertyWrapper ret0
function Model.Mesh.Sub:GetExtensionData() end

--- 
function Model.Mesh.Sub:ClearVertexData() end

--- 
--- @param idx int
function Model.Mesh.Sub:GetVertex(idx) end

--- 
function Model.Mesh.Sub:ClearVertexWeights() end

--- 
function Model.Mesh.Sub:ClearVertices() end

--- 
--- @param n math.Vector
--- @param d number
--- @overload fun(n: math.Vector, d: number, bSplitCoverMeshes: bool): 
--- @overload fun(n: math.Vector, d: number, bSplitCoverMeshes: bool, tBoneMatrices: any): 
function Model.Mesh.Sub:ClipAgainstPlane(n, d) end

--- 
function Model.Mesh.Sub:FlipTriangleWindingOrder() end

--- 
--- @return Model.Mesh.Sub ret0
--- @overload fun(fullCopy: bool): Model.Mesh.Sub
function Model.Mesh.Sub:Copy() end

--- 
--- @param numVerts int
function Model.Mesh.Sub:ReserveVertexWeights(numVerts) end

--- 
function Model.Mesh.Sub:GenerateNormals() end

--- 
function Model.Mesh.Sub:GetAlphaBuffer() end

--- 
function Model.Mesh.Sub:GetBiTangents() end

--- 
function Model.Mesh.Sub:GetBounds() end

--- 
function Model.Mesh.Sub:GetTriangleCount() end

--- 
function Model.Mesh.Sub:GetCenter() end

--- 
function Model.Mesh.Sub:GetGeometryType() end

--- 
--- @param arg1 int
--- @return int ret0
function Model.Mesh.Sub:GetIndex(arg1) end

--- 
function Model.Mesh.Sub:GetIndexBuffer() end

--- 
function Model.Mesh.Sub:GetIndexCount() end

--- 
--- @return enum pragma::model::IndexType ret0
function Model.Mesh.Sub:GetIndexType() end

--- 
--- @param name string
--- @return bool ret0
function Model.Mesh.Sub:HasUvSet(name) end

--- 
--- @return string ret0
function Model.Mesh.Sub:GetName() end

--- 
--- @overload fun(flags: int): 
function Model.Mesh.Sub:Update() end

--- 
function Model.Mesh.Sub:GetIndices() end

--- 
function Model.Mesh.Sub:GetReferenceId() end

--- 
function Model.Mesh.Sub:GetNormals() end

--- 
function Model.Mesh.Sub:GetPose() end

--- 
--- @param idx int
function Model.Mesh.Sub:GetVertexNormal(idx) end

--- 
function Model.Mesh.Sub:GetSceneMesh() end

--- 
function Model.Mesh.Sub:GetSkinTextureIndex() end

--- 
function Model.Mesh.Sub:GetTangents() end

--- 
--- @param uvSetName string
--- @return any ret0
--- @overload fun(): any
function Model.Mesh.Sub:GetUVs(uvSetName) end

--- 
--- @param numTris int
function Model.Mesh.Sub:ReserveTriangles(numTris) end

--- 
--- @return string ret0
function Model.Mesh.Sub:GetUuid() end

--- 
function Model.Mesh.Sub:GetVertexBuffer() end

--- 
--- @param idx int
function Model.Mesh.Sub:GetVertexAlpha(idx) end

--- 
--- @param idx int
function Model.Mesh.Sub:GetVertexPosition(idx) end

--- 
--- @param idx int
--- @overload fun(uvSetName: string, idx: int): 
function Model.Mesh.Sub:GetVertexUV(idx) end

--- 
--- @param idx int
function Model.Mesh.Sub:GetVertexWeight(idx) end

--- 
function Model.Mesh.Sub:GetVertexWeightBuffer() end

--- 
function Model.Mesh.Sub:NormalizeUVCoordinates() end

--- 
--- @return bool ret0
function Model.Mesh.Sub:HasVertexWeights() end

--- 
function Model.Mesh.Sub:MakeVerticesUnique() end

--- 
--- @param arg1 number
--- @overload fun(arg1: number): 
function Model.Mesh.Sub:Optimize(arg1) end

--- 
--- @param assetData udm.AssetData
function Model.Mesh.Sub:Save(assetData) end

--- 
--- @param arg1 int
function Model.Mesh.Sub:ReserveIndices(arg1) end

--- 
--- @param numVerts int
function Model.Mesh.Sub:ReserveVertices(numVerts) end

--- 
--- @param scale math.Vector
function Model.Mesh.Sub:Scale(scale) end

--- 
--- @param arg1 math.Vector
function Model.Mesh.Sub:SetCenter(arg1) end

--- 
--- @param geometryType int
function Model.Mesh.Sub:SetGeometryType(geometryType) end

--- 
--- @param arg1 int
--- @param arg2 int
--- @return bool ret0
function Model.Mesh.Sub:SetIndex(arg1, arg2) end

--- 
--- @param n int
function Model.Mesh.Sub:SetIndexCount(n) end

--- 
--- @param arg1 enum pragma::model::IndexType
function Model.Mesh.Sub:SetIndexType(arg1) end

--- 
--- @param indices table
function Model.Mesh.Sub:SetIndices(indices) end

--- 
--- @param arg1 string
function Model.Mesh.Sub:SetName(arg1) end

--- 
--- @param pose math.ScaledTransform
function Model.Mesh.Sub:SetPose(pose) end

--- 
--- @param texture int
function Model.Mesh.Sub:SetSkinTextureIndex(texture) end

--- 
--- @param idx int
--- @param v Model.Vertex
function Model.Mesh.Sub:SetVertex(idx, v) end

--- 
--- @param idx int
--- @param alpha math.Vector2
function Model.Mesh.Sub:SetVertexAlpha(idx, alpha) end

--- 
--- @param n int
function Model.Mesh.Sub:SetVertexCount(n) end

--- 
--- @param idx int
--- @param normal math.Vector
function Model.Mesh.Sub:SetVertexNormal(idx, normal) end

--- 
--- @param idx int
--- @param pos math.Vector
function Model.Mesh.Sub:SetVertexPosition(idx, pos) end

--- 
--- @param idx int
--- @param t math.Vector4
function Model.Mesh.Sub:SetVertexTangent(idx, t) end

--- 
--- @param idx int
--- @param uv math.Vector2
--- @overload fun(uvSetName: string, idx: int, uv: math.Vector2): 
function Model.Mesh.Sub:SetVertexUV(idx, uv) end

--- 
--- @param idx int
--- @param weight Model.VertexWeight
function Model.Mesh.Sub:SetVertexWeight(idx, weight) end

--- 
--- @param verts table
function Model.Mesh.Sub:SetVertices(verts) end

--- 
--- @param targetVertexCount int
--- @return Model.Mesh.Sub ret0_1
--- @return table ret0_2
--- @overload fun(targetVertexCount: int, aggressiveness: number): Model.Mesh.Sub, table
function Model.Mesh.Sub:Simplify(targetVertexCount) end

--- 
--- @param pose math.ScaledTransform
function Model.Mesh.Sub:Transform(pose) end

--- 
--- @param translation math.Vector
function Model.Mesh.Sub:Translate(translation) end

--- 
--- @param 1 Model.Mesh.Sub
function Model.Mesh.Sub:__eq(arg1) end

--- 
function Model.Mesh.Sub:__tostring() end


--- @enum Max
Model.Mesh.Sub = {
	MAX_INDEX16 = 65535,
	MAX_INDEX32 = -1,
}

--- @enum GeometryType
Model.Mesh.Sub = {
	GEOMETRY_TYPE_LINES = 1,
	GEOMETRY_TYPE_POINTS = 2,
	GEOMETRY_TYPE_TRIANGLES = 0,
}

--- @enum IndexType
Model.Mesh.Sub = {
	INDEX_TYPE_UINT16 = 0,
	INDEX_TYPE_UINT32 = 1,
}

--- 
--- @class Model.VertexAnimation
Model.VertexAnimation = {}

--- 
function Model.VertexAnimation:GetMeshAnimations() end

--- 
function Model.VertexAnimation:GetName() end

--- 
--- @param rot math.Quaternion
function Model.VertexAnimation:Rotate(rot) end


--- 
--- @class Model.VertexAnimation.MeshAnimation
Model.VertexAnimation.MeshAnimation = {}

--- 
function Model.VertexAnimation.MeshAnimation:GetFrames() end

--- 
--- @param rot math.Quaternion
function Model.VertexAnimation.MeshAnimation:Rotate(rot) end

--- 
function Model.VertexAnimation.MeshAnimation:GetMesh() end


--- 
--- @class Model.VertexAnimation.MeshAnimation.Frame
Model.VertexAnimation.MeshAnimation.Frame = {}

--- 
--- @param vertId int
function Model.VertexAnimation.MeshAnimation.Frame:GetDeltaValue(vertId) end

--- 
--- @param vertIdx int
function Model.VertexAnimation.MeshAnimation.Frame:GetVertexPosition(vertIdx) end

--- 
--- @param vertIdx int
function Model.VertexAnimation.MeshAnimation.Frame:GetVertexNormal(vertIdx) end

--- 
function Model.VertexAnimation.MeshAnimation.Frame:GetFlags() end

--- 
--- @param vertId int
--- @param value number
function Model.VertexAnimation.MeshAnimation.Frame:SetDeltaValue(vertId, value) end

--- 
function Model.VertexAnimation.MeshAnimation.Frame:GetVertexCount() end

--- 
function Model.VertexAnimation.MeshAnimation.Frame:GetVertices() end

--- 
--- @param rot math.Quaternion
function Model.VertexAnimation.MeshAnimation.Frame:Rotate(rot) end

--- 
--- @param vertIdx int
--- @param pos vector.Vector
function Model.VertexAnimation.MeshAnimation.Frame:SetVertexPosition(vertIdx, pos) end

--- 
--- @param flags int
function Model.VertexAnimation.MeshAnimation.Frame:SetFlags(flags) end

--- 
--- @param numVerts int
function Model.VertexAnimation.MeshAnimation.Frame:SetVertexCount(numVerts) end

--- 
--- @param vertIdx int
--- @param n vector.Vector
function Model.VertexAnimation.MeshAnimation.Frame:SetVertexNormal(vertIdx, n) end


--- @enum Flag
Model.VertexAnimation.MeshAnimation.Frame = {
	FLAG_BIT_HAS_DELTA_VALUES = 1,
	FLAG_NONE = 0,
}

--- 
--- @class Model.MeshGroup
Model.MeshGroup = {}

--- 
--- @param 1 Model.MeshGroup
function Model.MeshGroup:__eq(arg1) end

--- 
--- @param index int
function Model.MeshGroup:GetMeshCount(index) end

--- 
--- @param mesh Model.Mesh
function Model.MeshGroup:AddMesh(mesh) end

--- 
function Model.MeshGroup:ClearMeshes() end

--- 
function Model.MeshGroup:GetMeshes() end

--- 
--- @param index int
function Model.MeshGroup:GetMesh(index) end

--- 
function Model.MeshGroup:GetName() end

--- 
--- @param tMeshes any
function Model.MeshGroup:SetMeshes(tMeshes) end


--- 
--- @class Model.MetaRig
--- @field forwardAxis pragma::SignedAxis 
--- @field forwardFacingRotationOffset  
--- @field upAxis pragma::SignedAxis 
--- @field rigType pragma::animation::RigType 
Model.MetaRig = {}

--- 
function Model.MetaRig:__tostring() end

--- 
--- @param arg1 game.Model
function Model.MetaRig:DebugPrint(arg1) end

--- 
--- @param arg1 enum pragma::animation::MetaRigBoneType
--- @return Model.MetaRigBone ret0
function Model.MetaRig:GetBone(arg1) end

--- 
--- @param arg1 int
--- @return enum pragma::animation::MetaRigBoneType ret0
function Model.MetaRig:FindMetaBoneType(arg1) end

--- 
--- @param arg1 enum pragma::animation::BlendShape
--- @return Model.MetaRigBlendShape ret0
function Model.MetaRig:GetBlendShape(arg1) end

--- 
--- @param skeleton Model.Skeleton
--- @param fileName string
--- @return bool ret0_1
--- @return string ret0_2
function Model.MetaRig:Save(skeleton, fileName) end

--- 
--- @param boneType enum pragma::animation::MetaRigBoneType
--- @return Model.MetaRigBone ret0
function Model.MetaRig:GetNormalizedBoneInfo(boneType) end

--- 
--- @param boneType enum pragma::animation::MetaRigBoneType
--- @return int ret0
function Model.MetaRig:GetBoneId(boneType) end


--- @enum BoneSide
Model.MetaRig = {
	BONE_SIDE_LEFT = 0,
	BONE_SIDE_RIGHT = 1,
}

--- @enum BoneTypeLeftRing
Model.MetaRig = {
	BONE_TYPE_LEFT_RING_FINGER1 = 37,
	BONE_TYPE_LEFT_RING_FINGER2 = 38,
	BONE_TYPE_LEFT_RING_FINGER3 = 39,
}

--- @enum BoneTypeRightLittle
Model.MetaRig = {
	BONE_TYPE_RIGHT_LITTLE_FINGER1 = 55,
	BONE_TYPE_RIGHT_LITTLE_FINGER2 = 56,
	BONE_TYPE_RIGHT_LITTLE_FINGER3 = 57,
}

--- @enum BoneType
Model.MetaRig = {
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
Model.MetaRig = {
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
Model.MetaRig = {
	BONE_TYPE_LEFT_LITTLE_FINGER1 = 40,
	BONE_TYPE_LEFT_LITTLE_FINGER2 = 41,
	BONE_TYPE_LEFT_LITTLE_FINGER3 = 42,
}

--- @enum BoneTypeLeftIndex
Model.MetaRig = {
	BONE_TYPE_LEFT_INDEX_FINGER1 = 31,
	BONE_TYPE_LEFT_INDEX_FINGER2 = 32,
	BONE_TYPE_LEFT_INDEX_FINGER3 = 33,
}

--- @enum BoneTypeLeftMiddle
Model.MetaRig = {
	BONE_TYPE_LEFT_MIDDLE_FINGER1 = 34,
	BONE_TYPE_LEFT_MIDDLE_FINGER2 = 35,
	BONE_TYPE_LEFT_MIDDLE_FINGER3 = 36,
}

--- @enum BoneTypeRight
Model.MetaRig = {
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
Model.MetaRig = {
	BONE_TYPE_LEFT_LOWER_ARM = 15,
	BONE_TYPE_LEFT_LOWER_LEG = 21,
}

--- @enum BoneTypeLeftUpper
Model.MetaRig = {
	BONE_TYPE_LEFT_UPPER_ARM = 14,
	BONE_TYPE_LEFT_UPPER_LEG = 20,
}

--- @enum BoneTypeTail
Model.MetaRig = {
	BONE_TYPE_TAIL_TIP = 61,
	BONE_TYPE_TAIL_MIDDLE = 59,
	BONE_TYPE_TAIL_BASE = 58,
	BONE_TYPE_TAIL_MIDDLE1 = 60,
}

--- @enum BoneTypeLeftWing
Model.MetaRig = {
	BONE_TYPE_LEFT_WING_MIDDLE = 63,
	BONE_TYPE_LEFT_WING = 62,
	BONE_TYPE_LEFT_WING_TIP = 64,
}

--- @enum BoneTypeRightIndex
Model.MetaRig = {
	BONE_TYPE_RIGHT_INDEX_FINGER1 = 46,
	BONE_TYPE_RIGHT_INDEX_FINGER2 = 47,
	BONE_TYPE_RIGHT_INDEX_FINGER3 = 48,
}

--- @enum BoneTypeRightLower
Model.MetaRig = {
	BONE_TYPE_RIGHT_LOWER_ARM = 18,
	BONE_TYPE_RIGHT_LOWER_LEG = 25,
}

--- @enum BoneTypeRightMiddle
Model.MetaRig = {
	BONE_TYPE_RIGHT_MIDDLE_FINGER1 = 49,
	BONE_TYPE_RIGHT_MIDDLE_FINGER2 = 50,
	BONE_TYPE_RIGHT_MIDDLE_FINGER3 = 51,
}

--- @enum BoneTypeRightRing
Model.MetaRig = {
	BONE_TYPE_RIGHT_RING_FINGER1 = 52,
	BONE_TYPE_RIGHT_RING_FINGER2 = 53,
	BONE_TYPE_RIGHT_RING_FINGER3 = 54,
}

--- @enum BoneTypeRightUpper
Model.MetaRig = {
	BONE_TYPE_RIGHT_UPPER_ARM = 17,
	BONE_TYPE_RIGHT_UPPER_LEG = 24,
}

--- @enum BoneTypeRightWing
Model.MetaRig = {
	BONE_TYPE_RIGHT_WING = 65,
	BONE_TYPE_RIGHT_WING_MIDDLE = 66,
	BONE_TYPE_RIGHT_WING_TIP = 67,
}

--- @enum RigType
Model.MetaRig = {
	RIG_TYPE_BIPED = 0,
	RIG_TYPE_QUADRUPED = 1,
}

--- @enum RootBone
Model.MetaRig = {
	ROOT_BONE = 0,
}

--- 
--- @class Model.RingCreateInfo
--- @field segmentCount int 
--- @field innerRadius number 
--- @field doubleSided bool 
--- @field outerRadius number 
--- @field totalAngle number 
--- @overload fun():Model.RingCreateInfo
--- @overload fun(arg1: number, arg2: number, arg3: bool):Model.RingCreateInfo
--- @overload fun(arg1: number, arg2: number, arg3: bool):Model.RingCreateInfo
Model.RingCreateInfo = {}


--- 
--- @class Model.Skeleton
Model.Skeleton = {}

--- 
--- @return table ret0
function Model.Skeleton:GetBones() end

--- 
--- @param name string
--- @return Model.Skeleton.Bone ret0
--- @overload fun(name: string, parent: Model.Skeleton.Bone): Model.Skeleton.Bone
function Model.Skeleton:AddBone(name) end

--- 
--- @param boneId int
--- @return Model.Skeleton.Bone ret0
function Model.Skeleton:GetBone(boneId) end

--- 
function Model.Skeleton:ClearBones() end

--- 
function Model.Skeleton:DebugPrint() end

--- 
--- @return int ret0
function Model.Skeleton:GetBoneCount() end

--- 
--- @return map ret0
function Model.Skeleton:GetBoneHierarchy() end

--- 
--- @return map ret0
function Model.Skeleton:GetRootBones() end

--- 
--- @param boneId int
--- @return bool ret0
--- @overload fun(boneName: string): bool
function Model.Skeleton:IsRootBone(boneId) end

--- 
--- @param name string
--- @return int ret0
function Model.Skeleton:LookupBone(name) end

--- 
--- @param bone Model.Skeleton.Bone
--- @return bool ret0
function Model.Skeleton:MakeRootBone(bone) end

--- 
--- @param arg1 Model.Skeleton
function Model.Skeleton:Merge(arg1) end

--- 
--- @return string ret0
function Model.Skeleton:ToDebugString() end


--- 
--- @class Model.Skeleton.Bone
Model.Skeleton.Bone = {}

--- 
--- @return int ret0
function Model.Skeleton.Bone:GetID() end

--- 
function Model.Skeleton.Bone:ClearParent() end

--- 
--- @param name string
function Model.Skeleton.Bone:SetName(name) end

--- 
--- @return map ret0
function Model.Skeleton.Bone:GetChildren() end

--- 
--- @return string ret0
function Model.Skeleton.Bone:GetName() end

--- 
--- @param arg1 Model.Skeleton.Bone
--- @return bool ret0
function Model.Skeleton.Bone:IsDescendantOf(arg1) end

--- 
--- @return Model.Skeleton.Bone ret0
function Model.Skeleton.Bone:GetParent() end

--- 
--- @param arg1 Model.Skeleton.Bone
--- @return bool ret0
function Model.Skeleton.Bone:IsAncestorOf(arg1) end

--- 
--- @param parent Model.Skeleton.Bone
function Model.Skeleton.Bone:SetParent(parent) end

--- 
function Model.Skeleton.Bone:__tostring() end


--- 
--- @class Model.Vertex
--- @field uv  
--- @field tangent  
--- @field position  
--- @field normal  
--- @overload fun():Model.Vertex
--- @overload fun(arg1: math.Vector, arg2: math.Vector):Model.Vertex
--- @overload fun(arg1: math.Vector, arg2: math.Vector2, arg3: math.Vector):Model.Vertex
--- @overload fun(arg1: math.Vector, arg2: math.Vector2, arg3: math.Vector, arg4: math.Vector4):Model.Vertex
Model.Vertex = {}

--- 
--- @return Model.Vertex ret0
function Model.Vertex:Copy() end

--- 
--- @return math.Vector ret0
function Model.Vertex:GetBiTangent() end

--- 
--- @param 1 Model.Vertex
function Model.Vertex:__eq(arg1) end

--- 
function Model.Vertex:__tostring() end


--- 
--- @class Model.VertexWeight
--- @field boneIds  
--- @field weights  
--- @overload fun():Model.VertexWeight
--- @overload fun(arg1: math.Vector4i, arg2: math.Vector4):Model.VertexWeight
Model.VertexWeight = {}

--- 
--- @return Model.VertexWeight ret0
function Model.VertexWeight:Copy() end

--- 
--- @param 1 Model.VertexWeight
function Model.VertexWeight:__eq(arg1) end

--- 
function Model.VertexWeight:__tostring() end


