--- @meta
--- 
--- @class shader
shader = {}


--- 
--- @class shader.BaseComputeModule: shader.BaseModule
shader.BaseComputeModule = {}


--- 
--- @class shader.BaseCompute: shader.BaseComputeModule, shader.BaseModule
--- @overload fun():shader.BaseCompute
shader.BaseCompute = {}


--- 
--- @class shader.ShaderEntity: shader.SceneLit3D, shader.Scene3D, shader.Graphics, shader.Shader
shader.ShaderEntity = {}


--- 
--- @class shader.BindState
--- @overload fun(arg1: prosper.CommandBuffer):shader.BindState
shader.BindState = {}


--- 
--- @class shader.BaseGUI: shader.BaseGraphicsModule, shader.BaseModule
--- @overload fun():shader.BaseGUI
shader.BaseGUI = {}

--- 
--- @param pcb prosper.PreparedCommandBuffer
--- @overload fun(bindState: shader.BindState, drawState: struct wgui::DrawState, width: int, height: int, pipelineIdx: enum wgui::StencilPipeline, msaa: bool, testStencilLevel: int): 
function shader.BaseGUI:RecordBeginDraw(pcb) end


--- 
--- @class shader.BaseGUITextured: shader.BaseGraphicsModule, shader.BaseModule
--- @overload fun():shader.BaseGUITextured
shader.BaseGUITextured = {}


--- 
--- @class shader.BaseGraphicsModule: shader.BaseModule
shader.BaseGraphicsModule = {}


--- 
--- @class shader.GameWorld: shader.ShaderEntity, shader.SceneLit3D, shader.Scene3D, shader.Graphics, shader.Shader
shader.GameWorld = {}

--- 
--- @return int ret0
function shader.GameWorld:GetInstanceDescriptorSetIndex() end

--- 
--- @return int ret0
function shader.GameWorld:GetRenderSettingsDescriptorSetIndex() end

--- 
--- @return int ret0
function shader.GameWorld:GetMaterialDescriptorSetIndex() end


--- 
--- @class shader.BaseGraphics: shader.BaseGraphicsModule, shader.BaseModule
--- @overload fun():shader.BaseGraphics
shader.BaseGraphics = {}


--- 
--- @class shader.BaseImageProcessing: shader.BaseGraphicsModule, shader.BaseModule
--- @overload fun():shader.BaseImageProcessing
shader.BaseImageProcessing = {}

--- 
--- @param bindState shader.BindState
--- @param dsg prosper.DescriptorSet
--- @return bool ret0
function shader.BaseImageProcessing:RecordDraw(bindState, dsg) end


--- @enum DescriptorSet
shader.BaseImageProcessing = {
	DESCRIPTOR_SET_TEXTURE = 0,
	DESCRIPTOR_SET_TEXTURE_BINDING_TEXTURE = 0,
}

--- 
--- @class shader.BaseModule
shader.BaseModule = {}

--- 
--- @return shader.Shader ret0
function shader.BaseModule:GetShader() end

--- 
--- @param arg1 shader.BasePipelineCreateInfo
--- @param arg2 int
function shader.BaseModule:InitializePipeline(arg1, arg2) end

--- 
function shader.BaseModule:OnInitialized() end

--- 
--- @param arg1 int
function shader.BaseModule:OnPipelineInitialized(arg1) end

--- 
--- @param shaderStage int
--- @param fpath string
function shader.BaseModule:SetShaderSource(shaderStage, fpath) end

--- 
function shader.BaseModule:OnPipelinesInitialized() end

--- 
--- @param pipelineCount int
function shader.BaseModule:SetPipelineCount(pipelineCount) end


--- 
--- @class shader.Scene3D: shader.Graphics, shader.Shader
shader.Scene3D = {}

--- 
--- @return int ret0
function shader.Scene3D:GetRendererDescriptorSetIndex() end

--- 
--- @return int ret0
function shader.Scene3D:GetCameraDescriptorSetIndex() end


--- @enum RenderPass
shader.Scene3D = {
	RENDER_PASS_BLOOM_FORMAT = 97,
	RENDER_PASS_COLOR_FORMAT = 97,
	RENDER_PASS_DEPTH_FORMAT = 126,
}

--- 
--- @class shader.ComputePipelineCreateInfo: shader.BasePipelineCreateInfo
shader.ComputePipelineCreateInfo = {}

--- 
--- @param constantId int
--- @param ds util.DataStream
function shader.ComputePipelineCreateInfo:AddSpecializationConstant(constantId, ds) end


--- 
--- @class shader.BaseParticle2D: shader.BaseGraphicsModule, shader.BaseModule
--- @overload fun():shader.BaseParticle2D
shader.BaseParticle2D = {}

--- 
--- @param bindState shader.BindState
--- @param ps ents.ParticleSystemComponent
--- @param renderFlags int
--- @return int ret0
function shader.BaseParticle2D:RecordBeginDraw(bindState, ps, renderFlags) end


--- @enum PushConstants
shader.BaseParticle2D = {
	PUSH_CONSTANTS_SIZE = 80,
	PUSH_CONSTANTS_USER_DATA_OFFSET = 80,
}

--- 
--- @class shader.BasePbr: shader.BaseGraphicsModule, shader.BaseModule
--- @overload fun():shader.BasePbr
shader.BasePbr = {}

--- 
--- @param arg1 shader.BasePipelineCreateInfo
--- @param arg2 int
function shader.BasePbr:InitializeGfxPipelineDescriptorSets(arg1, arg2) end

--- 
--- @param arg1 class util::TWeakSharedHandle<class BaseEntity>
function shader.BasePbr:OnBindEntity(arg1) end

--- 
--- @param arg1 shader.BasePipelineCreateInfo
--- @param arg2 int
function shader.BasePbr:InitializeGfxPipelinePushConstantRanges(arg1, arg2) end

--- 
--- @param arg1 game.Material
function shader.BasePbr:OnBindMaterial(arg1) end

--- 
--- @param arg1 shader.BasePipelineCreateInfo
--- @param arg2 int
function shader.BasePbr:InitializeGfxPipelineVertexAttributes(arg1, arg2) end

--- 
function shader.BasePbr:OnEndDraw() end

--- 
--- @param arg1 prosper.CommandBuffer
--- @param arg2 math.Vector4
--- @param arg3 int
--- @param arg4 int
function shader.BasePbr:OnBeginDraw(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 ents.RasterizationRendererComponent
--- @param arg2 bool
function shader.BasePbr:OnBindScene(arg1, arg2) end

--- 
--- @param arg1 game.Model.Mesh.Sub
--- @return int ret0
function shader.BasePbr:OnDraw(arg1) end


--- 
--- @class shader.BasePipelineCreateInfo
shader.BasePipelineCreateInfo = {}

--- 
--- @param descSetInfo shader.DescriptorSetInfo
function shader.BasePipelineCreateInfo:AttachDescriptorSetInfo(descSetInfo) end

--- 
--- @param offset int
--- @param size int
--- @param shaderStages int
function shader.BasePipelineCreateInfo:AttachPushConstantRange(offset, size, shaderStages) end


--- 
--- @class shader.BasePostProcessing: shader.BaseGraphicsModule, shader.BaseModule
--- @overload fun():shader.BasePostProcessing
shader.BasePostProcessing = {}


--- 
--- @class shader.DescriptorSetBinding
--- @field bindingIndex  
--- @field descriptorArraySize  
--- @field shaderStages  
--- @field type  
--- @overload fun(arg1: int, arg2: int):shader.DescriptorSetBinding
--- @overload fun(arg1: int, arg2: int, arg3: int):shader.DescriptorSetBinding
--- @overload fun(arg1: int, arg2: int, arg3: int, arg4: int):shader.DescriptorSetBinding
shader.DescriptorSetBinding = {}


--- 
--- @class shader.BaseTexturedLit3D: shader.BaseGraphicsModule, shader.BaseModule
--- @overload fun():shader.BaseTexturedLit3D
shader.BaseTexturedLit3D = {}

--- 
--- @param arg1 util.DataStream
function shader.BaseTexturedLit3D:SetPushConstants(arg1) end

--- 
--- @param arg1 class util::TWeakSharedHandle<class BaseEntity>
function shader.BaseTexturedLit3D:OnBindEntity(arg1) end

--- 
--- @param arg1 shader.BasePipelineCreateInfo
--- @param arg2 int
function shader.BaseTexturedLit3D:InitializeGfxPipelineDescriptorSets(arg1, arg2) end

--- 
--- @param arg1 game.Material
function shader.BaseTexturedLit3D:OnBindMaterial(arg1) end

--- 
--- @param arg1 shader.BasePipelineCreateInfo
--- @param arg2 int
function shader.BaseTexturedLit3D:InitializeGfxPipelinePushConstantRanges(arg1, arg2) end

--- 
--- @param arg1 shader.BasePipelineCreateInfo
--- @param arg2 int
function shader.BaseTexturedLit3D:InitializeGfxPipelineVertexAttributes(arg1, arg2) end

--- 
--- @param arg1 prosper.DescriptorSet
--- @param arg2 class CMaterial
function shader.BaseTexturedLit3D:InitializeMaterialBuffer(arg1, arg2) end

--- 
--- @param arg1 game.Material
--- @param arg2 shader.TexturedLit3D.MaterialData
function shader.BaseTexturedLit3D:InitializeMaterialData(arg1, arg2) end

--- 
--- @param arg1 game.Material
--- @return prosper.DescriptorSet ret0
function shader.BaseTexturedLit3D:InitializeMaterialDescriptorSet(arg1) end

--- 
function shader.BaseTexturedLit3D:OnEndDraw() end

--- 
--- @param arg1 prosper.CommandBuffer
--- @param arg2 math.Vector4
--- @param arg3 int
--- @param arg4 int
function shader.BaseTexturedLit3D:OnBeginDraw(arg1, arg2, arg3, arg4) end

--- 
--- @return bool ret0
function shader.BaseTexturedLit3D:IsDepthPrepassEnabled() end

--- 
--- @param arg1 ents.RasterizationRendererComponent
--- @param arg2 bool
function shader.BaseTexturedLit3D:OnBindScene(arg1, arg2) end

--- 
--- @param arg1 game.Model.Mesh.Sub
--- @return int ret0
function shader.BaseTexturedLit3D:OnDraw(arg1) end

--- 
--- @param depthPrepassEnabled bool
function shader.BaseTexturedLit3D:SetDepthPrepassEnabled(depthPrepassEnabled) end


--- @enum SpecializationConstant
shader.BaseTexturedLit3D = {
	SPECIALIZATION_CONSTANT_EMISSION_ENABLED_BIT = 8,
	SPECIALIZATION_CONSTANT_PARALLAX_ENABLED_BIT = 256,
	SPECIALIZATION_CONSTANT_FLAG_NONE = 0,
	SPECIALIZATION_CONSTANT_WRINKLES_ENABLED_BIT = 16,
}

--- @enum SpecializationConstantEnable
shader.BaseTexturedLit3D = {
	SPECIALIZATION_CONSTANT_ENABLE_LIGHT_MAPS_BIT = 1,
	SPECIALIZATION_CONSTANT_ENABLE_ANIMATION_BIT = 2,
	SPECIALIZATION_CONSTANT_ENABLE_3D_ORIGIN_BIT = 1024,
	SPECIALIZATION_CONSTANT_ENABLE_NORMAL_MAP_BIT = 128,
	SPECIALIZATION_CONSTANT_ENABLE_CLIPPING_BIT = 512,
	SPECIALIZATION_CONSTANT_ENABLE_EXTENDED_VERTEX_WEIGHTS_BIT = 2048,
	SPECIALIZATION_CONSTANT_ENABLE_MORPH_TARGET_ANIMATION_BIT = 4,
	SPECIALIZATION_CONSTANT_ENABLE_DEPTH_BIAS_BIT = 4096,
	SPECIALIZATION_CONSTANT_ENABLE_RMA_MAP_BIT = 64,
	SPECIALIZATION_CONSTANT_ENABLE_TRANSLUCENCY_BIT = 32,
}

--- 
--- @class shader.ComposeRMA: shader.Graphics, shader.Shader
shader.ComposeRMA = {}

--- 
--- @param roughnessMap prosper.Texture
--- @param metalnessMap prosper.Texture
--- @param aoMap prosper.Texture
--- @param flags int
function shader.ComposeRMA:ComposeRMA(roughnessMap, metalnessMap, aoMap, flags) end


--- @enum Flag
shader.ComposeRMA = {
	FLAG_NONE = 0,
	FLAG_USE_SPECULAR_WORKFLOW_BIT = 1,
}

--- 
--- @class shader.Compute: shader.Shader
shader.Compute = {}

--- 
--- @param bindState shader.BindState
function shader.Compute:RecordEndCompute(bindState) end

--- 
--- @param bindState shader.BindState
--- @overload fun(bindState: shader.BindState, x: int): 
--- @overload fun(bindState: shader.BindState, x: int, y: int): 
--- @overload fun(bindState: shader.BindState, x: int, y: int, z: int): 
function shader.Compute:RecordDispatch(bindState) end

--- 
--- @param bindState shader.BindState
--- @param hCommandBuffer prosper.CommandBuffer
--- @overload fun(bindState: shader.BindState, pipelineIdx: int): 
function shader.Compute:RecordBeginCompute(bindState, hCommandBuffer) end

--- 
--- @param bindState shader.BindState
function shader.Compute:RecordCompute(bindState) end


--- 
--- @class shader.DescriptorSetInfo
--- @field setIndex  
--- @overload fun(arg1: any):shader.DescriptorSetInfo
--- @overload fun(arg1: any, arg2: int):shader.DescriptorSetInfo
--- @overload fun():shader.DescriptorSetInfo
shader.DescriptorSetInfo = {}


--- 
--- @class shader.FlipImage: shader.Graphics, shader.Shader
shader.FlipImage = {}


--- 
--- @class shader.GUITextured: shader.Graphics, shader.Shader
shader.GUITextured = {}


--- 
--- @class shader.Glow: shader.TexturedLit3D, shader.ShaderEntity, shader.SceneLit3D, shader.Scene3D, shader.Graphics, shader.Shader
shader.Glow = {}


--- 
--- @class shader.VertexBinding
--- @field inputRate  
--- @field stride  
--- @overload fun(arg1: int):shader.VertexBinding
--- @overload fun(arg1: int, arg2: int):shader.VertexBinding
--- @overload fun():shader.VertexBinding
shader.VertexBinding = {}


--- 
--- @class shader.Merge2dImageIntoEquirectangular: shader.Graphics, shader.Shader
shader.Merge2dImageIntoEquirectangular = {}


--- @enum CubeFacePositive
shader.Merge2dImageIntoEquirectangular = {
	CUBE_FACE_POSITIVE_X = 4,
	CUBE_FACE_POSITIVE_Y = 4,
	CUBE_FACE_POSITIVE_Z = 4,
}

--- @enum CubeFaceNegative
shader.Merge2dImageIntoEquirectangular = {
	CUBE_FACE_NEGATIVE_X = 4,
	CUBE_FACE_NEGATIVE_Y = 4,
	CUBE_FACE_NEGATIVE_Z = 4,
}

--- 
--- @class shader.Graphics: shader.Shader
shader.Graphics = {}

--- 
--- @param recordTarget struct LuaShaderRecordTarget
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, vertCount: int): 
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, vertCount: int, instanceCount: int): 
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, vertCount: int, instanceCount: int, firstVertex: int): 
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, vertCount: int, instanceCount: int, firstVertex: int, firstInstance: int): 
function shader.Graphics:RecordDraw(recordTarget) end

--- 
--- @overload fun(pipelineIdx: int): 
function shader.Graphics:GetRenderPass() end

--- 
--- @param recordTarget struct LuaShaderRecordTarget
function shader.Graphics:RecordEndDraw(recordTarget) end

--- 
--- @param bindState shader.BindState
--- @param indexBuffer prosper.Buffer
--- @param indexType int
--- @overload fun(bindState: shader.BindState, indexBuffer: prosper.Buffer, indexType: int, offset: int): 
function shader.Graphics:RecordBindIndexBuffer(bindState, indexBuffer, indexType) end

--- 
--- @param recordTarget struct LuaShaderRecordTarget
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, pipelineIdx: int): 
function shader.Graphics:RecordBeginDraw(recordTarget) end

--- 
--- @param recordTarget struct LuaShaderRecordTarget
--- @param indexCount int
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, indexCount: int, instanceCount: int): 
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, indexCount: int, instanceCount: int, firstIndex: int): 
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, indexCount: int, instanceCount: int, firstIndex: int, firstInstance: int): 
function shader.Graphics:RecordDrawIndexed(recordTarget, indexCount) end

--- 
--- @param bindState shader.BindState
--- @param buffer prosper.Buffer
--- @overload fun(bindState: shader.BindState, buffer: prosper.Buffer, startBinding: int): 
--- @overload fun(bindState: shader.BindState, buffer: prosper.Buffer, startBinding: int, offset: int): 
function shader.Graphics:RecordBindVertexBuffer(bindState, buffer) end

--- 
--- @param recordTarget struct LuaShaderRecordTarget
--- @param buffers any
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, buffers: any, startBinding: int): 
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, buffers: any, startBinding: int, offsets: any): 
function shader.Graphics:RecordBindVertexBuffers(recordTarget, buffers) end


--- 
--- @class shader.GraphicsPipelineCreateInfo: shader.BasePipelineCreateInfo
shader.GraphicsPipelineCreateInfo = {}

--- 
--- @param bEnabled bool
--- @param compareOp int
function shader.GraphicsPipelineCreateInfo:SetDepthTestProperties(bEnabled, compareOp) end

--- 
--- @param shaderStage int
--- @param constantId int
--- @param ds util.DataStream
function shader.GraphicsPipelineCreateInfo:AddSpecializationConstant(shaderStage, constantId, ds) end

--- 
--- @param iScissor int
function shader.GraphicsPipelineCreateInfo:GetScissorBoxProperties(iScissor) end

--- 
--- @param attId int
function shader.GraphicsPipelineCreateInfo:GetColorBlendAttachmentProperties(attId) end

--- 
function shader.GraphicsPipelineCreateInfo:IsRasterizerDiscardEnabled() end

--- 
function shader.GraphicsPipelineCreateInfo:GetLineWidth() end

--- 
function shader.GraphicsPipelineCreateInfo:GetBlendingProperties() end

--- 
function shader.GraphicsPipelineCreateInfo:AreDepthWritesEnabled() end

--- 
function shader.GraphicsPipelineCreateInfo:GetDepthBiasConstantFactor() end

--- 
--- @param binding shader.VertexBinding
--- @param attributes any
function shader.GraphicsPipelineCreateInfo:AttachVertexAttribute(binding, attributes) end

--- 
function shader.GraphicsPipelineCreateInfo:GetMultisamplingProperties() end

--- 
function shader.GraphicsPipelineCreateInfo:GetDepthBiasClamp() end

--- 
--- @param bEnabled bool
--- @param minDepthBounds number
--- @param maxDepthBounds number
function shader.GraphicsPipelineCreateInfo:SetDepthBoundsTestProperties(bEnabled, minDepthBounds, maxDepthBounds) end

--- 
function shader.GraphicsPipelineCreateInfo:GetCullMode() end

--- 
function shader.GraphicsPipelineCreateInfo:GetDepthBiasSlopeFactor() end

--- 
function shader.GraphicsPipelineCreateInfo:GetDepthBiasState() end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetDepthBoundsTestEnabled(bEnabled) end

--- 
--- @param depthBiasConstantFactor number
function shader.GraphicsPipelineCreateInfo:SetDepthBiasConstantFactor(depthBiasConstantFactor) end

--- 
function shader.GraphicsPipelineCreateInfo:IsDepthClampEnabled() end

--- 
function shader.GraphicsPipelineCreateInfo:GetVertexAttributeCount() end

--- 
function shader.GraphicsPipelineCreateInfo:GetDepthBoundsState() end

--- 
--- @param depthBiasSlopeFactor number
function shader.GraphicsPipelineCreateInfo:SetDepthBiasSlopeFactor(depthBiasSlopeFactor) end

--- 
function shader.GraphicsPipelineCreateInfo:GetDepthClamp() end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetDepthWritesEnabled(bEnabled) end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetLogicOpEnabled(bEnabled) end

--- 
function shader.GraphicsPipelineCreateInfo:GetSampleMask() end

--- 
function shader.GraphicsPipelineCreateInfo:GetDepthTestState() end

--- 
--- @param iVerexInputAttribute int
function shader.GraphicsPipelineCreateInfo:GetVertexAttributeProperties(iVerexInputAttribute) end

--- 
--- @param numDynamicViewports int
function shader.GraphicsPipelineCreateInfo:SetDynamicViewportsCount(numDynamicViewports) end

--- 
function shader.GraphicsPipelineCreateInfo:GetDynamicScissorBoxesCount() end

--- 
function shader.GraphicsPipelineCreateInfo:GetDynamicViewportsCount() end

--- 
function shader.GraphicsPipelineCreateInfo:GetDynamicStates() end

--- 
function shader.GraphicsPipelineCreateInfo:GetFrontFace() end

--- 
function shader.GraphicsPipelineCreateInfo:GetLogicOpState() end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetDepthTestEnabled(bEnabled) end

--- 
function shader.GraphicsPipelineCreateInfo:GetMaxDepthBounds() end

--- 
function shader.GraphicsPipelineCreateInfo:GetMinDepthBounds() end

--- 
function shader.GraphicsPipelineCreateInfo:GetMinSampleShading() end

--- 
function shader.GraphicsPipelineCreateInfo:IsAlphaToOneEnabled() end

--- 
function shader.GraphicsPipelineCreateInfo:GetPolygonMode() end

--- 
function shader.GraphicsPipelineCreateInfo:GetPrimitiveTopology() end

--- 
function shader.GraphicsPipelineCreateInfo:GetPushConstantRanges() end

--- 
function shader.GraphicsPipelineCreateInfo:GetScissorBoxesCount() end

--- 
function shader.GraphicsPipelineCreateInfo:GetRasterizationProperties() end

--- 
--- @param iViewport int
function shader.GraphicsPipelineCreateInfo:GetViewportProperties(iViewport) end

--- 
function shader.GraphicsPipelineCreateInfo:GetSampleCount() end

--- 
function shader.GraphicsPipelineCreateInfo:GetSampleShadingState() end

--- 
function shader.GraphicsPipelineCreateInfo:GetScissorCount() end

--- 
function shader.GraphicsPipelineCreateInfo:GetStencilTestProperties() end

--- 
function shader.GraphicsPipelineCreateInfo:GetSubpassId() end

--- 
function shader.GraphicsPipelineCreateInfo:GetViewportCount() end

--- 
function shader.GraphicsPipelineCreateInfo:GetViewportsCount() end

--- 
function shader.GraphicsPipelineCreateInfo:IsAlphaToCoverageEnabled() end

--- 
function shader.GraphicsPipelineCreateInfo:IsPrimitiveRestartEnabled() end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetDepthClampEnabled(bEnabled) end

--- 
--- @param cullMode int
function shader.GraphicsPipelineCreateInfo:SetCullMode(cullMode) end

--- 
function shader.GraphicsPipelineCreateInfo:IsSampleMaskEnabled() end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetAlphaToCoverageEnabled(bEnabled) end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetAlphaToOneEnabled(bEnabled) end

--- 
--- @param blendingProperties math.Vector4
function shader.GraphicsPipelineCreateInfo:SetBlendingProperties(blendingProperties) end

--- 
--- @param attId int
--- @param blendingEnabled bool
--- @param blendOpColor int
--- @param blendOpAlpha int
--- @param srcColorBlendFactor int
--- @param dstColorBlendFactor int
--- @param srcAlphaBlendFactor int
--- @param dstAlphaBlendFactor int
--- @param channelWriteMask int
function shader.GraphicsPipelineCreateInfo:SetColorBlendAttachmentProperties(attId, blendingEnabled, blendOpColor, blendOpAlpha, srcColorBlendFactor, dstColorBlendFactor, srcAlphaBlendFactor, dstAlphaBlendFactor, channelWriteMask) end

--- 
--- @param bEnabled bool
--- @param depthBiasConstantFactor number
--- @param depthBiasClamp number
--- @param depthBiasSlopeFactor number
function shader.GraphicsPipelineCreateInfo:SetDepthBiasProperties(bEnabled, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor) end

--- 
function shader.GraphicsPipelineCreateInfo:SetCommonAlphaBlendProperties() end

--- 
--- @param depthBiasClamp number
function shader.GraphicsPipelineCreateInfo:SetDepthBiasClamp(depthBiasClamp) end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetDepthBiasEnabled(bEnabled) end

--- 
--- @param numDynamicScissorBoxes int
function shader.GraphicsPipelineCreateInfo:SetDynamicScissorBoxesCount(numDynamicScissorBoxes) end

--- 
--- @param state int
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetDynamicStateEnabled(state, bEnabled) end

--- 
--- @param states int
function shader.GraphicsPipelineCreateInfo:SetDynamicStates(states) end

--- 
--- @param frontFace int
function shader.GraphicsPipelineCreateInfo:SetFrontFace(frontFace) end

--- 
--- @param lineWidth number
function shader.GraphicsPipelineCreateInfo:SetLineWidth(lineWidth) end

--- 
--- @param bEnabled bool
--- @param logicOp int
function shader.GraphicsPipelineCreateInfo:SetLogicOpProperties(bEnabled, logicOp) end

--- 
--- @param maxDepthBounds number
function shader.GraphicsPipelineCreateInfo:SetMaxDepthBounds(maxDepthBounds) end

--- 
--- @param minDepthBounds number
function shader.GraphicsPipelineCreateInfo:SetMinDepthBounds(minDepthBounds) end

--- 
--- @param minSampleShading number
function shader.GraphicsPipelineCreateInfo:SetMinSampleShading(minSampleShading) end

--- 
--- @param sampleCount int
--- @param sampleShading number
--- @param sampleMask int
function shader.GraphicsPipelineCreateInfo:SetMultisamplingProperties(sampleCount, sampleShading, sampleMask) end

--- 
--- @param polygonMode int
function shader.GraphicsPipelineCreateInfo:SetPolygonMode(polygonMode) end

--- 
--- @param sampleCount int
function shader.GraphicsPipelineCreateInfo:SetSampleCount(sampleCount) end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetPrimitiveRestartEnabled(bEnabled) end

--- 
--- @param primitiveTopology int
function shader.GraphicsPipelineCreateInfo:SetPrimitiveTopology(primitiveTopology) end

--- 
--- @param polygonMode int
--- @param cullMode int
--- @param frontFace int
--- @param lineWidth number
function shader.GraphicsPipelineCreateInfo:SetRasterizationProperties(polygonMode, cullMode, frontFace, lineWidth) end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetRasterizerDiscardEnabled(bEnabled) end

--- 
--- @param sampleMask int
function shader.GraphicsPipelineCreateInfo:SetSampleMask(sampleMask) end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetSampleMaskEnabled(bEnabled) end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetSampleShadingEnabled(bEnabled) end

--- 
--- @param iScissorBox int
--- @param x int
--- @param y int
--- @param w int
--- @param h int
function shader.GraphicsPipelineCreateInfo:SetScissorBoxProperties(iScissorBox, x, y, w, h) end

--- 
--- @param bEnabled bool
function shader.GraphicsPipelineCreateInfo:SetStencilTestEnabled(bEnabled) end

--- 
--- @param updateFrontFaceState bool
--- @param stencilFailOp int
--- @param stencilPassOp int
--- @param stencilDepthFailOp int
--- @param stencilCompareOp int
--- @param stencilCompareMask int
--- @param stencilWriteMask int
--- @param stencilReference int
function shader.GraphicsPipelineCreateInfo:SetStencilTestProperties(updateFrontFaceState, stencilFailOp, stencilPassOp, stencilDepthFailOp, stencilCompareOp, stencilCompareMask, stencilWriteMask, stencilReference) end

--- 
--- @param iViewport int
--- @param originX number
--- @param originY number
--- @param w number
--- @param h number
--- @param minDepth number
--- @param maxDepth number
function shader.GraphicsPipelineCreateInfo:SetViewportProperties(iViewport, originX, originY, w, h, minDepth, maxDepth) end


--- 
--- @class shader.Info
shader.Info = {}

--- 
--- @return string ret0
function shader.Info:GetName() end


--- 
--- @class shader.VertexAttribute
--- @field offset  
--- @field format  
--- @field location  
--- @overload fun(arg1: int):shader.VertexAttribute
--- @overload fun(arg1: int, arg2: int):shader.VertexAttribute
--- @overload fun(arg1: int, arg2: int, arg3: int):shader.VertexAttribute
--- @overload fun():shader.VertexAttribute
shader.VertexAttribute = {}


--- 
--- @class shader.MergeImages: shader.Graphics, shader.Shader
shader.MergeImages = {}


--- 
--- @class shader.SceneLit3D: shader.Scene3D, shader.Graphics, shader.Shader
shader.SceneLit3D = {}

--- 
--- @return int ret0
function shader.SceneLit3D:GetLightDescriptorSetIndex() end


--- 
--- @class shader.Shader
shader.Shader = {}

--- 
function shader.Shader:GetSourceFilePaths() end

--- 
--- @param setIdx int
--- @overload fun(setIdx: int, pipelineIdx: int): 
function shader.Shader:CreateDescriptorSet(setIdx) end

--- 
--- @param shaderStage int
--- @overload fun(shaderStage: int, pipelineIdx: int): 
function shader.Shader:GetEntrypointName(shaderStage) end

--- 
--- @param bindState shader.BindState
--- @param descSets any
--- @overload fun(bindState: shader.BindState, descSets: any, firstSet: int): 
--- @overload fun(bindState: shader.BindState, descSets: any, firstSet: int, dynamicOffsets: any): 
function shader.Shader:RecordBindDescriptorSets(bindState, descSets) end

--- 
--- @param shaderStage int
function shader.Shader:GetSourceFilePath(shaderStage) end

--- 
--- @param shaderStage int
--- @param pipelineIdx int
--- @overload fun(shaderStage: int, pipelineIdx: int): 
function shader.Shader:GetGlslSourceCode(shaderStage, pipelineIdx) end

--- 
function shader.Shader:GetPipelineBindPoint() end

--- 
function shader.Shader:GetIdentifier() end

--- 
--- @param shaderStage int
--- @param pipelineIdx int
--- @overload fun(shaderStage: int, pipelineIdx: int): 
function shader.Shader:GetPipelineInfo(shaderStage, pipelineIdx) end

--- 
--- @return any ret0
function shader.Shader:GetWrapper() end

--- 
function shader.Shader:IsComputeShader() end

--- 
function shader.Shader:IsGraphicsShader() end

--- 
function shader.Shader:IsValid() end

--- 
--- @param pcb prosper.PreparedCommandBuffer
--- @param ds prosper.DescriptorSet
--- @param firstSet int
--- @param dynamicOffsets any
--- @overload fun(bindState: shader.BindState, ds: prosper.DescriptorSet): 
--- @overload fun(bindState: shader.BindState, ds: prosper.DescriptorSet, firstSet: int): 
--- @overload fun(bindState: shader.BindState, ds: prosper.DescriptorSet, firstSet: int, dynamicOffsets: any): 
function shader.Shader:RecordBindDescriptorSet(pcb, ds, firstSet, dynamicOffsets) end

--- 
--- @param pcb prosper.PreparedCommandBuffer
--- @param type enum udm::Type
--- @param value struct Lua::Vulkan::PreparedCommandLuaArg
--- @param offset int
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, ds: util.DataStream, offset: int): 
--- @overload fun(pcb: prosper.PreparedCommandBuffer, type: enum udm::Type, value: struct Lua::Vulkan::PreparedCommandLuaArg, offset: int): 
--- @overload fun(recordTarget: struct LuaShaderRecordTarget, ds: util.DataStream, offset: int): 
function shader.Shader:RecordPushConstants(pcb, type, value, offset) end


--- 
--- @class shader.TexturedLit3D: shader.GameWorld, shader.ShaderEntity, shader.SceneLit3D, shader.Scene3D, shader.Graphics, shader.Shader
shader.TexturedLit3D = {}


--- @enum PushConstants
shader.TexturedLit3D = {
	PUSH_CONSTANTS_SIZE = 64,
	PUSH_CONSTANTS_USER_DATA_OFFSET = 64,
}

--- 
--- @class shader.TexturedLit3D.MaterialData
--- @field glowScale number 
--- @field alphaCutoff number 
--- @field aoFactor number 
--- @field alphaDiscardThreshold number 
--- @field flags pragma::ShaderGameWorldLightingPass::MaterialFlags 
--- @field alphaMode AlphaMode 
--- @field color math.Vector4 
--- @field emissionFactor math.Vector4 
--- @field metalnessFactor number 
--- @field parallaxHeightScale number 
--- @field phongIntensity number 
--- @field roughnessFactor number 
shader.TexturedLit3D.MaterialData = {}


