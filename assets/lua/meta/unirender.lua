--- @meta
--- 
--- @class unirender
unirender = {}

--- 
--- @param typeName string
--- @param function any
--- @return int ret0
function unirender.register_node(typeName, function_) end

--- 
--- @param className string
--- @param shaderClass any
function unirender.register_shader(className, shaderClass) end


--- 
--- @class unirender.Node
unirender.Node = {}

--- 
--- @return string ret0
function unirender.Node:GetTypeName() end

--- 
--- @return string ret0
function unirender.Node:GetName() end

--- 
--- @param arg1 string
--- @return unirender.Socket ret0
function unirender.Node:GetInputSocket(arg1) end

--- 
--- @return unirender.Socket ret0
function unirender.Node:GetPrimaryOutputSocket() end

--- 
--- @param nodeOther unirender.Node
--- @return unirender.Socket ret0
function unirender.Node:LessThan(nodeOther) end

--- 
--- @param arg1 string
--- @return unirender.Socket ret0
function unirender.Node:GetOutputSocket(arg1) end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: number): 
function unirender.Node:__sub(arg2) end

--- 
--- @param arg1 string
--- @return unirender.Socket ret0
function unirender.Node:GetPropertySocket(arg1) end

--- 
--- @return unirender.GroupNode ret0
function unirender.Node:GetParent() end

--- 
--- @param socketName string
--- @return any ret0
function unirender.Node:GetProperty(socketName) end

--- 
--- @param nodeOther unirender.Node
--- @return unirender.Socket ret0
function unirender.Node:GreaterThan(nodeOther) end

--- 
--- @return bool ret0
function unirender.Node:IsGroupNode() end

--- 
--- @param nodeOther unirender.Node
--- @return unirender.Socket ret0
function unirender.Node:GreaterThanOrEqualTo(nodeOther) end

--- 
function unirender.Node:__unm() end

--- 
--- @param nodeOther unirender.Node
--- @return unirender.Socket ret0
function unirender.Node:LessThanOrEqualTo(nodeOther) end

--- 
--- @param propertyName string
--- @param value 
--- @overload fun(arg1: string, arg2: math.Mat4x3): 
--- @overload fun(arg1: string, arg2: string): 
--- @overload fun(arg1: string, arg2: math.Vector2): 
--- @overload fun(arg1: string, arg2: math.Vector): 
--- @overload fun(arg1: string, arg2: number): 
--- @overload fun(arg1: string, arg2: bool): 
function unirender.Node:SetProperty(propertyName, value) end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: number): 
function unirender.Node:__add(arg2) end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: number): 
function unirender.Node:__div(arg2) end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: number): 
function unirender.Node:__mod(arg2) end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: number): 
function unirender.Node:__mul(arg2) end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: number): 
function unirender.Node:__pow(arg2) end

--- 
--- @return string ret0
function unirender.Node:__tostring() end


--- 
--- @class unirender.Cache
unirender.Cache = {}

--- 
--- @param gameScene ents.SceneComponent
--- @overload fun(gameScene: ents.SceneComponent, entFilter: any): 
function unirender.Cache:InitializeFromGameScene(gameScene) end


--- 
--- @class unirender.Renderer
unirender.Renderer = {}

--- 
--- @return bool ret0
function unirender.Renderer:BeginSceneEdit() end

--- 
--- @return unirender.ProgressiveTexture ret0
function unirender.Renderer:CreateProgressiveImageHandler() end

--- 
--- @return bool ret0
function unirender.Renderer:EndSceneEdit() end

--- 
--- @param uuid util.Uuid
--- @return unirender.WorldObject ret0
function unirender.Renderer:FindActor(uuid) end

--- 
--- @return unirender.Scene ret0
function unirender.Renderer:GetScene() end

--- 
--- @return udm.PropertyWrapper ret0
function unirender.Renderer:GetApiData() end

--- 
--- @return bool ret0
function unirender.Renderer:HasRenderedSamplesForAllTiles() end

--- 
--- @return bool ret0
function unirender.Renderer:IsBuildingKernels() end

--- 
function unirender.Renderer:Reset() end

--- 
--- @param feature enum unirender::Renderer::Feature
--- @return bool ret0
function unirender.Renderer:IsFeatureAvailable(feature) end

--- 
function unirender.Renderer:ReloadShaders() end

--- 
function unirender.Renderer:Restart() end

--- 
function unirender.Renderer:StartRender() end

--- 
function unirender.Renderer:StopRendering() end

--- 
--- @param ent ents.BaseEntityBase
--- @return bool ret0
function unirender.Renderer:SyncActor(ent) end


--- @enum Flag
unirender.Renderer = {
	FLAG_ENABLE_LIVE_EDITING_BIT = 1,
	FLAG_NONE = 0,
}

--- @enum FeatureFlag
unirender.Renderer = {
	FEATURE_FLAG_OPTIX_AVAILABLE_BIT = 1,
	FEATURE_FLAG_NONE = 0,
}

--- 
--- @class unirender.Camera: unirender.WorldObject, unirender.SceneObject
unirender.Camera = {}

--- 
--- @param arg1 number
function unirender.Camera:SetFarZ(arg1) end

--- 
--- @param arg1 int
function unirender.Camera:SetBladeCount(arg1) end

--- 
--- @param arg1 number
function unirender.Camera:SetEquirectangularHorizontalRange(arg1) end

--- 
--- @param arg1 number
function unirender.Camera:SetApertureSize(arg1) end

--- 
--- @param arg1 bool
function unirender.Camera:SetDepthOfFieldEnabled(arg1) end

--- 
--- @param arg1 enum unirender::Camera::CameraType
function unirender.Camera:SetCameraType(arg1) end

--- 
--- @param arg1 number
--- @param arg2 number
function unirender.Camera:SetApertureSizeFromFStop(arg1, arg2) end

--- 
--- @param arg1 number
function unirender.Camera:SetBladesRotation(arg1) end

--- 
--- @param arg1 number
function unirender.Camera:SetBokehRatio(arg1) end

--- 
--- @param arg1 number
function unirender.Camera:SetEquirectangularVerticalRange(arg1) end

--- 
--- @param fov number
function unirender.Camera:SetFOV(fov) end

--- 
--- @param arg1 number
--- @param arg2 number
function unirender.Camera:SetFOVFromFocalLength(arg1, arg2) end

--- 
--- @param arg1 number
function unirender.Camera:SetFocalDistance(arg1) end

--- 
--- @param arg1 number
function unirender.Camera:SetInterocularDistance(arg1) end

--- 
--- @param arg1 number
function unirender.Camera:SetNearZ(arg1) end

--- 
--- @param arg1 enum unirender::Camera::PanoramaType
function unirender.Camera:SetPanoramaType(arg1) end

--- 
--- @param arg1 int
--- @param arg2 int
function unirender.Camera:SetResolution(arg1, arg2) end

--- 
--- @param arg1 bool
function unirender.Camera:SetStereoscopic(arg1) end


--- @enum PanoramaType
unirender.Camera = {
	PANORAMA_TYPE_EQUIRECTANGULAR = 0,
	PANORAMA_TYPE_MIRRORBALL = 3,
}

--- @enum PanoramaTypeFisheye
unirender.Camera = {
	PANORAMA_TYPE_FISHEYE_EQUIDISTANT = 1,
	PANORAMA_TYPE_FISHEYE_EQUISOLID = 2,
}

--- @enum Type
unirender.Camera = {
	TYPE_PERSPECTIVE = 0,
	TYPE_ORTHOGRAPHIC = 1,
	TYPE_PANORAMA = 2,
}

--- 
--- @class unirender.WorldObject
unirender.WorldObject = {}

--- 
--- @return math.Vector ret0
function unirender.WorldObject:GetPos() end

--- 
--- @return math.ScaledTransform ret0
function unirender.WorldObject:GetPose() end

--- 
--- @return math.Quaternion ret0
function unirender.WorldObject:GetRotation() end

--- 
--- @param arg1 math.Vector
function unirender.WorldObject:SetPos(arg1) end

--- 
--- @param arg1 math.Quaternion
function unirender.WorldObject:SetRotation(arg1) end


--- 
--- @class unirender.SceneObject
unirender.SceneObject = {}

--- 
--- @param scene unirender.Scene
function unirender.SceneObject:Finalize(scene) end

--- 
--- @return class unirender::Scene ret0
function unirender.SceneObject:GetScene() end


--- 
--- @class unirender.GroupNode: unirender.Node
unirender.GroupNode = {}

--- 
--- @param v math.Vector
--- @return any ret0
--- @overload fun(f: number): any
function unirender.GroupNode:AddConstantNode(v) end

--- 
--- @param mathOp enum unirender::nodes::math::MathType
--- @param socket0 any
--- @param socket1 any
--- @return any ret0
function unirender.GroupNode:AddMathNode(mathOp, socket0, socket1) end

--- 
--- @param nodeTypeId int
--- @return any ret0
--- @overload fun(typeName: string): any
function unirender.GroupNode:AddNode(nodeTypeId) end

--- 
--- @param socket unirender.Socket
--- @return any ret0
--- @overload fun(socket: unirender.Socket, texType: enum unirender::TextureType): any
--- @overload fun(fileName: string): any
--- @overload fun(fileName: string, texType: enum unirender::TextureType): any
function unirender.GroupNode:AddTextureNode(socket) end

--- 
--- @param socket unirender.Socket
--- @return unirender.Socket ret0
--- @overload fun(socket: unirender.Socket, strength: number): unirender.Socket
--- @overload fun(fileName: string): unirender.Socket
--- @overload fun(fileName: string, strength: number): unirender.Socket
function unirender.GroupNode:AddNormalMapNode(socket) end

--- 
--- @param st enum unirender::SocketType
--- @param name string
--- @return unirender.Socket ret0
function unirender.GroupNode:RegisterOutput(st, name) end

--- 
--- @param mathOp enum unirender::nodes::vector_math::MathType
--- @param socket0 any
--- @param socket1 any
--- @return any ret0
function unirender.GroupNode:AddVectorMathNode(mathOp, socket0, socket1) end

--- 
--- @param r any
--- @param g any
--- @param b any
--- @return any ret0
function unirender.GroupNode:CombineRGB(r, g, b) end

--- 
--- @param st enum unirender::SocketType
--- @param name string
--- @param defaultValue math.Mat4x3
--- @return unirender.Socket ret0
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: string): unirender.Socket
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: math.Vector2): unirender.Socket
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: math.Vector): unirender.Socket
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: number): unirender.Socket
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: bool): unirender.Socket
function unirender.GroupNode:RegisterProperty(st, name, defaultValue) end

--- 
--- @param nodeSrc unirender.Node
--- @param socketSrc string
--- @param nodeDst unirender.Node
--- @param socketDst string
--- @return bool ret0
--- @overload fun(fromSocket: any, toSocket: unirender.Socket): bool
function unirender.GroupNode:Link(nodeSrc, socketSrc, nodeDst, socketDst) end

--- 
--- @param st enum unirender::SocketType
--- @param name string
--- @param defaultValue math.Mat4x3
--- @return unirender.Socket ret0
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: string): unirender.Socket
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: math.Vector2): unirender.Socket
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: math.Vector): unirender.Socket
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: number): unirender.Socket
--- @overload fun(st: enum unirender::SocketType, name: string, defaultValue: bool): unirender.Socket
function unirender.GroupNode:RegisterInput(st, name, defaultValue) end

--- 
--- @param socket unirender.Socket
--- @overload fun(arg1: string): 
function unirender.GroupNode:SetPrimaryOutputSocket(socket) end


--- 
--- @class unirender.Object
unirender.Object = {}

--- 
--- @return bool ret0
function unirender.Object:IsSubdivisionEnabled() end

--- 
--- @param arg1 bool
function unirender.Object:SetSubdivisionEnabled(arg1) end


--- 
--- @class unirender.LightSource: unirender.WorldObject
unirender.LightSource = {}

--- 
--- @param axisU math.Vector
function unirender.LightSource:SetAxisU(axisU) end

--- 
--- @param intensity number
function unirender.LightSource:SetIntensity(intensity) end

--- 
--- @param axisV math.Vector
function unirender.LightSource:SetAxisV(axisV) end

--- 
--- @param size number
function unirender.LightSource:SetSize(size) end

--- 
--- @param color util.Color
function unirender.LightSource:SetColor(color) end

--- 
--- @param outerAngle number
--- @param blendFraction number
function unirender.LightSource:SetConeAngle(outerAngle, blendFraction) end

--- 
--- @param sizeU number
function unirender.LightSource:SetSizeU(sizeU) end

--- 
--- @param sizeV number
function unirender.LightSource:SetSizeV(sizeV) end

--- 
--- @param type int
function unirender.LightSource:SetType(type) end


--- @enum Type
unirender.LightSource = {
	TYPE_AREA = 3,
	TYPE_TRIANGLE = 5,
	TYPE_SPOT = 1,
	TYPE_DIRECTIONAL = 2,
	TYPE_BACKGROUND = 4,
	TYPE_POINT = 0,
}

--- 
--- @class unirender.ProgressiveTexture
unirender.ProgressiveTexture = {}

--- 
--- @return prosper.Texture ret0
function unirender.ProgressiveTexture:GetTexture() end


--- 
--- @class unirender.Scene
unirender.Scene = {}

--- 
--- @param arg1 ents.BaseEntityBase
function unirender.Scene:AddLightmapBakeTarget(arg1) end

--- 
--- @param cache unirender.Cache
function unirender.Scene:AddCache(cache) end

--- 
function unirender.Scene:GetLightSources() end

--- 
--- @param type int
--- @param pos math.Vector
--- @overload fun(ent: ents.BaseEntityBase): 
function unirender.Scene:AddLightSource(type, pos) end

--- 
function unirender.Scene:Finalize() end

--- 
--- @param gameScene ents.SceneComponent
--- @param camPos math.Vector
--- @param camRot math.Quaternion
--- @param vp math.Mat4
--- @param nearZ number
--- @param farZ number
--- @param fov number
--- @param sceneFlags int
--- @overload fun(gameScene: ents.SceneComponent, camPos: math.Vector, camRot: math.Quaternion, vp: math.Mat4, nearZ: number, farZ: number, fov: number, sceneFlags: int, entFilter: any): 
--- @overload fun(gameScene: ents.SceneComponent, camPos: math.Vector, camRot: math.Quaternion, vp: math.Mat4, nearZ: number, farZ: number, fov: number, sceneFlags: int, entFilter: any, lightFilter: any): 
function unirender.Scene:InitializeFromGameScene(gameScene, camPos, camRot, vp, nearZ, farZ, fov, sceneFlags) end

--- 
--- @param gameScene ents.SceneComponent
--- @param sceneFlags int
--- @param optEntFilter any
function unirender.Scene:PopulateFromGameScene(gameScene, sceneFlags, optEntFilter) end

--- 
--- @param arg1 string
--- @return unirender.Object ret0
function unirender.Scene:FindObjectByName(arg1) end

--- 
--- @return unirender.Camera ret0
function unirender.Scene:GetCamera() end

--- 
--- @param skyStrength number
function unirender.Scene:SetSkyStrength(skyStrength) end

--- 
--- @param ds util.DataStream
--- @param rootDir string
function unirender.Scene:Load(ds, rootDir) end

--- 
--- @param skyAngles math.EulerAngles
function unirender.Scene:SetSkyAngles(skyAngles) end

--- 
--- @param skyPath string
function unirender.Scene:SetSky(skyPath) end

--- 
--- @param enabled bool
--- @param adaptiveSamplingThreshold number
--- @param adaptiveMinSamples int
function unirender.Scene:SetAdaptiveSampling(enabled, adaptiveSamplingThreshold, adaptiveMinSamples) end

--- 
--- @param ds util.DataStream
--- @param rootDir string
--- @param serializationData unirender.Scene.SerializationData
function unirender.Scene:Save(ds, rootDir, serializationData) end

--- 
--- @param arg1 ents.BaseEntityBase
--- @param arg2 int
--- @overload fun(arg1: game.Model, arg2: int): 
function unirender.Scene:SetAoBakeTarget(arg1, arg2) end

--- 
--- @param emissionStrength number
function unirender.Scene:SetEmissionStrength(emissionStrength) end

--- 
--- @param factor number
function unirender.Scene:SetLightIntensityFactor(factor) end

--- 
--- @param arg1 ents.LightMapComponent.DataCache
function unirender.Scene:SetLightmapDataCache(arg1) end

--- 
--- @param bounces int
function unirender.Scene:SetMaxBounces(bounces) end

--- 
--- @param bounces int
function unirender.Scene:SetMaxDiffuseBounces(bounces) end

--- 
--- @param bounces int
function unirender.Scene:SetMaxGlossyBounces(bounces) end

--- 
--- @param bounces int
function unirender.Scene:SetMaxTransmissionBounces(bounces) end

--- 
--- @param bounces int
function unirender.Scene:SetMaxTransparencyBounces(bounces) end

--- 
--- @param width int
--- @param height int
function unirender.Scene:SetResolution(width, height) end

--- 
--- @param transparent bool
function unirender.Scene:SetSkyTransparent(transparent) end


--- @enum RenderModeBake
unirender.Scene = {
	RENDER_MODE_BAKE_AMBIENT_OCCLUSION = 1,
	RENDER_MODE_BAKE_DIFFUSE_LIGHTING = 3,
	RENDER_MODE_BAKE_NORMALS = 2,
}

--- @enum RenderModeBakeDiffuse
unirender.Scene = {
	RENDER_MODE_BAKE_DIFFUSE_LIGHTING = 3,
	RENDER_MODE_BAKE_DIFFUSE_LIGHTING_SEPARATE = 4,
}

--- @enum DenoiseMode
unirender.Scene = {
	DENOISE_MODE_DETAILED = 2,
	DENOISE_MODE_NONE = 0,
	DENOISE_MODE_FAST = 1,
}

--- @enum DenoiseModeAuto
unirender.Scene = {
	DENOISE_MODE_AUTO_DETAILED = 2,
	DENOISE_MODE_AUTO_FAST = 1,
}

--- @enum DeviceType
unirender.Scene = {
	DEVICE_TYPE_CPU = 0,
	DEVICE_TYPE_GPU = 1,
}

--- @enum RenderModeDirectDiffuse
unirender.Scene = {
	RENDER_MODE_DIRECT_DIFFUSE = 10,
	RENDER_MODE_DIRECT_DIFFUSE_REFLECT = 11,
	RENDER_MODE_DIRECT_DIFFUSE_TRANSMIT = 12,
}

--- @enum RenderMode
unirender.Scene = {
	RENDER_MODE_DEPTH = 6,
	RENDER_MODE_ALBEDO = 4,
	RENDER_MODE_ALPHA = 7,
	RENDER_MODE_CAUSTIC = 29,
	RENDER_MODE_EMISSION = 16,
	RENDER_MODE_COMBINED = 0,
	RENDER_MODE_COUNT = 30,
	RENDER_MODE_GEOMETRY_NORMAL = 8,
	RENDER_MODE_IRRADIANCE = 27,
	RENDER_MODE_NOISE = 28,
	RENDER_MODE_NORMALS = 5,
	RENDER_MODE_SHADING_NORMAL = 9,
	RENDER_MODE_UV = 26,
}

--- @enum RenderModeDirectGlossy
unirender.Scene = {
	RENDER_MODE_DIRECT_GLOSSY = 13,
	RENDER_MODE_DIRECT_GLOSSY_REFLECT = 14,
	RENDER_MODE_DIRECT_GLOSSY_TRANSMIT = 15,
}

--- @enum RenderModeIndirectDiffuse
unirender.Scene = {
	RENDER_MODE_INDIRECT_DIFFUSE = 17,
	RENDER_MODE_INDIRECT_DIFFUSE_REFLECT = 18,
	RENDER_MODE_INDIRECT_DIFFUSE_TRANSMIT = 19,
}

--- @enum RenderModeIndirectGlossy
unirender.Scene = {
	RENDER_MODE_INDIRECT_GLOSSY = 20,
	RENDER_MODE_INDIRECT_GLOSSY_REFLECT = 21,
	RENDER_MODE_INDIRECT_GLOSSY_TRANSMIT = 22,
}

--- @enum RenderModeIndirectSpecular
unirender.Scene = {
	RENDER_MODE_INDIRECT_SPECULAR = 23,
	RENDER_MODE_INDIRECT_SPECULAR_REFLECT = 24,
	RENDER_MODE_INDIRECT_SPECULAR_TRANSMIT = 25,
}

--- @enum SceneFlagBitCullObjectsOutside
unirender.Scene = {
	SCENE_FLAG_BIT_CULL_OBJECTS_OUTSIDE_CAMERA_FRUSTUM = 2,
	SCENE_FLAG_BIT_CULL_OBJECTS_OUTSIDE_PVS = 1,
}

--- @enum SceneFlagNone
unirender.Scene = {
	SCENE_FLAG_NONE = 0,
}

--- 
--- @class unirender.Scene.CreateInfo
--- @field denoiseMode  
--- @field deviceType  
--- @field hdrOutput  
--- @field exposure  
--- @field preCalculateLight  
--- @field progressive  
--- @field progressiveRefine  
--- @field renderer  
--- @overload fun():unirender.Scene.CreateInfo
unirender.Scene.CreateInfo = {}

--- 
--- @param config string
--- @param lookName string
--- @overload fun(config: string): 
function unirender.Scene.CreateInfo:SetColorTransform(config, lookName) end

--- 
--- @param samples int
function unirender.Scene.CreateInfo:SetSamplesPerPixel(samples) end


--- 
--- @class unirender.Scene.SerializationData
--- @field outputFileName  
--- @overload fun():unirender.Scene.SerializationData
unirender.Scene.SerializationData = {}


--- 
--- @class unirender.Shader
--- @overload fun():unirender.Shader
unirender.Shader = {}

--- 
function unirender.Shader:ClearHairConfig() end

--- 
--- @return game.Material ret0
function unirender.Shader:GetMaterial() end

--- 
function unirender.Shader:ClearSubdivisionSettings() end

--- 
--- @return ents.BaseEntityBase ret0
function unirender.Shader:GetEntity() end

--- 
--- @param arg1 unirender.GroupNode
--- @param arg2 unirender.Node
function unirender.Shader:InitializeNormalPass(arg1, arg2) end

--- 
--- @return unirender.Shader.HairConfig ret0
function unirender.Shader:GetHairConfig() end

--- 
--- @return Model.Mesh.Sub ret0
function unirender.Shader:GetMesh() end

--- 
--- @return unirender.Shader.SubdivisionSettings ret0
function unirender.Shader:GetSubdivisionSettings() end

--- 
function unirender.Shader:Initialize() end

--- 
--- @param arg1 unirender.GroupNode
--- @param arg2 unirender.Node
function unirender.Shader:InitializeAlbedoPass(arg1, arg2) end

--- 
--- @param arg1 unirender.GroupNode
--- @param arg2 unirender.Node
function unirender.Shader:InitializeCombinedPass(arg1, arg2) end

--- 
--- @param arg1 unirender.GroupNode
--- @param arg2 unirender.Node
function unirender.Shader:InitializeDepthPass(arg1, arg2) end

--- 
--- @param arg1 unirender.Shader.HairConfig
function unirender.Shader:SetHairConfig(arg1) end

--- 
--- @param arg1 unirender.Shader.SubdivisionSettings
function unirender.Shader:SetSubdivisionSettings(arg1) end


--- 
--- @class unirender.Shader.SubdivisionSettings
--- @field maxEdgeScreenSize  
--- @field maxLevel  
--- @overload fun():unirender.Shader.SubdivisionSettings
unirender.Shader.SubdivisionSettings = {}


--- 
--- @class unirender.Shader.HairConfig
--- @field defaultLength  
--- @field curvature  
--- @field defaultHairStrength  
--- @field defaultThickness  
--- @field hairPerSquareMeter  
--- @field numSegments  
--- @field randomHairLengthFactor  
--- @overload fun():unirender.Shader.HairConfig
unirender.Shader.HairConfig = {}


--- 
--- @class unirender.Socket
--- @field z  
--- @field r  
--- @field b  
--- @field g  
--- @field x  
--- @field y  
--- @overload fun(arg1: math.Vector):unirender.Socket
--- @overload fun(arg1: number):unirender.Socket
--- @overload fun():unirender.Socket
unirender.Socket = {}

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:Cross(socketOther) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Abs() end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:Min(socketOther) end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:Atan2(socketOther) end

--- 
--- @return string ret0
function unirender.Socket:__tostring() end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Atan() end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: number): 
function unirender.Socket:__pow(arg2) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Acos() end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Asin() end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: number): 
function unirender.Socket:__add(arg2) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Ceil() end

--- 
--- @param min any
--- @param max any
--- @return unirender.Socket ret0
function unirender.Socket:Clamp(min, max) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Cos() end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:Distance(socketOther) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Sqrt() end

--- 
--- @return bool ret0
function unirender.Socket:IsConcreteValue() end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:DotProduct(socketOther) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Floor() end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:ToGrayScale() end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:LessThan(socketOther) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Fraction() end

--- 
--- @return unirender.Node ret0
function unirender.Socket:GetNode() end

--- 
--- @return any ret0
function unirender.Socket:GetSocketName() end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:GreaterThan(socketOther) end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:GreaterThanOrEqualTo(socketOther) end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: number): 
function unirender.Socket:__mod(arg2) end

--- 
--- @return unirender.Socket ret0
--- @overload fun(oFac: any): unirender.Socket
function unirender.Socket:Invert() end

--- 
--- @return bool ret0
function unirender.Socket:IsNodeSocket() end

--- 
--- @return bool ret0
function unirender.Socket:IsOutputSocket() end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Length() end

--- 
--- @param other unirender.Socket
--- @param factor unirender.Socket
--- @return unirender.Socket ret0
function unirender.Socket:Lerp(other, factor) end

--- 
function unirender.Socket:__unm() end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:LessThanOrEqualTo(socketOther) end

--- 
--- @param v math.Vector
--- @overload fun(f: number): 
--- @overload fun(toNode: unirender.Node, socketName: string): 
--- @overload fun(toSocket: unirender.Socket): 
function unirender.Socket:Link(v) end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:Log(socketOther) end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:Max(socketOther) end

--- 
--- @param oSocketOther any
--- @param oFac any
--- @param mixType enum unirender::nodes::mix::Mix
--- @return unirender.Socket ret0
--- @overload fun(oSocketOther: any, oFac: any): unirender.Socket
function unirender.Socket:Mix(oSocketOther, oFac, mixType) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Tan() end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Normalize() end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:Reflect(socketOther) end

--- 
--- @param socketOther any
--- @return unirender.Socket ret0
function unirender.Socket:Project(socketOther) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Round() end

--- 
--- @param scale any
--- @return unirender.Socket ret0
function unirender.Socket:Scale(scale) end

--- 
--- @return unirender.Socket ret0
function unirender.Socket:Sin() end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: number): 
function unirender.Socket:__div(arg2) end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: number): 
function unirender.Socket:__mul(arg2) end

--- 
--- @param arg2 unirender.Socket
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: math.Vector): 
--- @overload fun(arg2: unirender.Socket): 
--- @overload fun(arg2: number): 
function unirender.Socket:__sub(arg2) end


--- @enum Type
unirender.Socket = {
	TYPE_FLOAT_ARRAY = 14,
	TYPE_BOOL = 0,
	TYPE_STRING = 10,
	TYPE_ENUM = 11,
	TYPE_CLOSURE = 9,
	TYPE_COLOR = 4,
	TYPE_COLOR_ARRAY = 15,
	TYPE_NORMAL = 7,
	TYPE_COUNT = 16,
	TYPE_FLOAT = 1,
	TYPE_INT = 2,
	TYPE_NODE = 13,
	TYPE_POINT = 6,
	TYPE_POINT2 = 8,
	TYPE_TRANSFORM = 12,
	TYPE_UINT = 3,
	TYPE_VECTOR = 5,
}

