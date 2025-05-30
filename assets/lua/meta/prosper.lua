--- @meta
--- 
--- @class prosper
prosper = {}

--- 
--- @param ldescSetInfo shader.DescriptorSetInfo
--- @return prosper.DescriptorSet ret0
function prosper.create_descriptor_set(ldescSetInfo) end

--- 
--- @param v int
--- @param level int
--- @return int ret0
--- @overload fun(w: int, h: int, level: int): int
function prosper.calculate_mipmap_size(v, level) end

--- 
--- @param w int
--- @param h int
--- @return int ret0
function prosper.calculate_mipmap_count(w, h) end

--- 
--- @param srcTex prosper.Texture
--- @param blurStrength int
--- @return variant ret0
--- @overload fun(srcTex: prosper.Texture, blurStrength: int): variant
function prosper.blur_texture(srcTex, blurStrength) end

--- 
--- @param context class prosper::IPrContext
--- @param bufCreateInfo prosper.BufferCreateInfo
--- @return prosper.Buffer ret0
--- @overload fun(context: class prosper::IPrContext, bufCreateInfo: prosper.BufferCreateInfo, ds: util.DataStream): prosper.Buffer
function prosper.create_buffer(context, bufCreateInfo) end

--- 
--- @param debugName string
--- @return prosper.CommandBufferRecorder ret0
--- @overload fun(): prosper.CommandBufferRecorder
function prosper.create_command_buffer_recorder(debugName) end

--- 
--- @param format enum prosper::Format
--- @return string ret0
function prosper.format_to_string(format) end

--- 
--- @param rtCreateInfo prosper.RenderTargetCreateInfo
--- @param textures table
--- @return prosper.RenderTarget ret0
--- @overload fun(rtCreateInfo: prosper.RenderTargetCreateInfo, textures: table, renderPass: prosper.RenderPass): prosper.RenderTarget
--- @overload fun(rtCreateInfo: prosper.RenderTargetCreateInfo, texture: prosper.Texture, renderPass: prosper.RenderPass): prosper.RenderTarget
--- @overload fun(rtCreateInfo: prosper.RenderTargetCreateInfo, texture: prosper.Texture): prosper.RenderTarget
function prosper.create_render_target(rtCreateInfo, textures) end

--- 
--- @param arg0 class prosper::IPrContext
--- @return prosper.Event ret0
function prosper.create_event(arg0) end

--- 
--- @return prosper.Fence ret0
--- @overload fun(createSignalled: bool): prosper.Fence
function prosper.create_fence() end

--- 
--- @param stage enum prosper::ShaderStage
--- @return string ret0
function prosper.shader_stage_to_string(stage) end

--- 
--- @param width int
--- @param height int
--- @param attachments table
--- @return prosper.Framebuffer ret0
--- @overload fun(width: int, height: int, attachments: table, layers: int): prosper.Framebuffer
function prosper.create_framebuffer(width, height, attachments) end

--- 
--- @param width int
--- @param height int
--- @param format enum prosper::Format
--- @param dir math.Vector2
--- @param tNodes table
--- @return prosper.Texture ret0
function prosper.create_gradient_texture(width, height, format, dir, tNodes) end

--- 
--- @param imgBuffer util.ImageBuffer
--- @param imgCreateInfo prosper.ImageCreateInfo
--- @return prosper.Image ret0
--- @overload fun(imgBuffer: util.ImageBuffer): prosper.Image
--- @overload fun(arg0: class std::array<class std::shared_ptr<class uimg::ImageBuffer>,6>, arg1: prosper.ImageCreateInfo): prosper.Image
--- @overload fun(arg0: class std::array<class std::shared_ptr<class uimg::ImageBuffer>,6>): prosper.Image
--- @overload fun(imgCreateInfo: prosper.ImageCreateInfo): prosper.Image
--- @overload fun(imgCreateInfo: prosper.ImageCreateInfo, ds: util.DataStream): prosper.Image
function prosper.create_image(imgBuffer, imgCreateInfo) end

--- 
--- @return variant ret0
function prosper.wait_for_current_swapchain_command_buffer_completion() end

--- 
--- @param imgBuf util.ImageBuffer
--- @return prosper.ImageCreateInfo ret0
--- @overload fun(imgBuf: util.ImageBuffer, cubemap: bool): prosper.ImageCreateInfo
function prosper.create_image_create_info(imgBuf) end

--- 
--- @param context class prosper::IPrContext
--- @param imgViewCreateInfo prosper.ImageViewCreateInfo
--- @param img prosper.Image
--- @return prosper.ImageView ret0
function prosper.create_image_view(context, imgViewCreateInfo, img) end

--- 
--- @param format enum prosper::Format
--- @return int ret0
function prosper.get_bit_size(format) end

--- 
--- @return prosper.CommandBuffer ret0
function prosper.create_primary_command_buffer() end

--- 
--- @param rpCreateInfo prosper.RenderPassCreateInfo
--- @return prosper.RenderPass ret0
function prosper.create_render_pass(rpCreateInfo) end

--- 
--- @param arg0 class prosper::IPrContext
function prosper.flush(arg0) end

--- 
--- @return prosper.CommandBuffer ret0
function prosper.create_secondary_command_buffer() end

--- 
--- @param img prosper.Image
--- @param texCreateInfo prosper.TextureCreateInfo
--- @return prosper.Texture ret0
--- @overload fun(img: prosper.Image, texCreateInfo: prosper.TextureCreateInfo, imgViewCreateInfo: prosper.ImageViewCreateInfo): prosper.Texture
--- @overload fun(img: prosper.Image, texCreateInfo: prosper.TextureCreateInfo, imgViewCreateInfo: prosper.ImageViewCreateInfo, samplerCreateInfo: prosper.SamplerCreateInfo): prosper.Texture
function prosper.create_texture(img, texCreateInfo) end

--- 
--- @param arg0 class CEngine
--- @param arg1 prosper.WindowCreateInfo
--- @return prosper.Window ret0
function prosper.create_window(arg0, arg1) end

--- 
--- @param arg0 class prosper::IPrContext
--- @return string ret0
function prosper.get_api_abbreviation(arg0) end

--- 
--- @param arg0 class prosper::IPrContext
--- @return string ret0
function prosper.get_api_identifier(arg0) end

--- 
--- @param format enum prosper::Format
--- @return int ret0
function prosper.get_byte_size(format) end

--- 
--- @param format enum prosper::Format
--- @return bool ret0
function prosper.is_compressed_format(format) end

--- 
--- @param format enum prosper::Format
--- @return bool ret0
function prosper.is_depth_format(format) end

--- 
--- @param format enum prosper::Format
--- @return bool ret0
function prosper.is_uncompressed_format(format) end

--- 
--- @param r enum prosper::Result
--- @return string ret0
function prosper.result_to_string(r) end

--- 
--- @param arg0 class prosper::IPrContext
--- @param arg1 bool
function prosper.wait_idle(arg0, arg1) end


--- 
--- @class prosper.BlitInfo
--- @field dstSubresourceLayer  
--- @field extentsDst math.Vector2i 
--- @field extentsSrc math.Vector2i 
--- @field offsetDst math.Vector2i 
--- @field offsetSrc math.Vector2i 
--- @field srcSubresourceLayer  
--- @overload fun():prosper.BlitInfo
prosper.BlitInfo = {}


--- 
--- @class prosper.ClearValue
--- @overload fun(arg1: number):prosper.ClearValue
--- @overload fun(arg1: number, arg2: int):prosper.ClearValue
--- @overload fun(arg1: util.Color):prosper.ClearValue
--- @overload fun():prosper.ClearValue
prosper.ClearValue = {}

--- 
--- @param clearColor util.Color
function prosper.ClearValue:SetColor(clearColor) end

--- 
--- @param depth number
--- @param stencil int
--- @overload fun(depth: number): 
function prosper.ClearValue:SetDepthStencil(depth, stencil) end


--- 
--- @class prosper.ClearImageInfo
--- @field subresourceRange  
--- @overload fun():prosper.ClearImageInfo
prosper.ClearImageInfo = {}


--- 
--- @class prosper.Buffer
prosper.Buffer = {}

--- 
--- @return util.DataStream ret0
--- @overload fun(offset: int, size: int): util.DataStream
--- @overload fun(offset: int, type: enum udm::Type, value: struct luabind::adl::udm_type<class luabind::adl::object,1,1,0>): util.DataStream
--- @overload fun(offset: int, size: int, ds: util.DataStream): util.DataStream
--- @overload fun(offset: int, size: int, ds: util.DataStream, dsOffset: int): util.DataStream
function prosper.Buffer:ReadMemory() end

--- 
--- @return int ret0
function prosper.Buffer:GetBaseIndex() end

--- 
--- @return int ret0
function prosper.Buffer:GetSize() end

--- 
--- @return prosper.BufferCreateInfo ret0
function prosper.Buffer:GetCreateInfo() end

--- 
--- @return string ret0
function prosper.Buffer:GetDebugName() end

--- 
--- @return prosper.Buffer ret0
function prosper.Buffer:GetParent() end

--- 
--- @return int ret0
function prosper.Buffer:GetStartOffset() end

--- 
--- @return bool ret0
function prosper.Buffer:IsValid() end

--- 
--- @param name string
function prosper.Buffer:SetDebugName(name) end

--- 
--- @return enum prosper::BufferUsageFlags ret0
function prosper.Buffer:GetUsageFlags() end

--- 
--- @param mapFlags enum prosper::IBuffer::MapFlags
--- @return bool ret0
--- @overload fun(offset: int, size: int, mapFlags: enum prosper::IBuffer::MapFlags): bool
function prosper.Buffer:MapMemory(mapFlags) end

--- 
--- @param arg1 bool
--- @param arg2 enum prosper::IBuffer::MapFlags
function prosper.Buffer:SetPermanentlyMapped(arg1, arg2) end

--- 
--- @return bool ret0
function prosper.Buffer:UnmapMemory() end

--- 
function prosper.Buffer:__tostring() end

--- 
--- @param offset int
--- @param ds util.DataStream
--- @return bool ret0
--- @overload fun(offset: int, type: enum udm::Type, value: struct luabind::adl::udm_type<class luabind::adl::object,1,1,0>): bool
--- @overload fun(offset: int, ds: util.DataStream, dsOffset: int, dsSize: int): bool
function prosper.Buffer:WriteMemory(offset, ds) end

--- 
--- @param 1 prosper.Buffer
function prosper.Buffer:__eq(arg1) end


--- 
--- @class prosper.PipelineBarrierInfo
--- @field dstStageMask  
--- @field srcStageMask  
--- @overload fun():prosper.PipelineBarrierInfo
prosper.PipelineBarrierInfo = {}


--- 
--- @class prosper.Image
prosper.Image = {}

--- 
--- @return enum prosper::Format ret0
function prosper.Image:GetFormat() end

--- 
--- @return int ret0
function prosper.Image:GetAlignment() end

--- 
--- @param cmd prosper.CommandBuffer
--- @param format enum prosper::Format
--- @return prosper.Image ret0
function prosper.Image:Convert(cmd, format) end

--- 
--- @param cmd prosper.CommandBuffer
--- @return prosper.Image ret0
--- @overload fun(cmd: prosper.CommandBuffer, imgCreateInfo: prosper.ImageCreateInfo): prosper.Image
function prosper.Image:Copy(cmd) end

--- 
--- @return table ret0
function prosper.Image:CreateIndividualImagesFromLayers() end

--- 
--- @return string ret0
function prosper.Image:GetDebugName() end

--- 
--- @param cmd prosper.CommandBuffer
--- @return prosper.Image ret0
function prosper.Image:CreateWorkingImage(cmd) end

--- 
--- @param 1 prosper.Image
function prosper.Image:__eq(arg1) end

--- 
--- @return prosper.SubresourceLayout ret0
--- @overload fun(layer: int): prosper.SubresourceLayout
--- @overload fun(arg1: int, arg2: int): prosper.SubresourceLayout
function prosper.Image:GetAspectSubresourceLayout() end

--- 
--- @return prosper.ImageCreateInfo ret0
function prosper.Image:GetCreateInfo() end

--- 
--- @param mipmap int
--- @return int ret0_1
--- @return int ret0_2
function prosper.Image:GetExtent2D(mipmap) end

--- 
--- @param arg1 int
--- @return int ret0
--- @overload fun(arg1: int): int
function prosper.Image:GetHeight(arg1) end

--- 
--- @return int ret0
function prosper.Image:GetLayerCount() end

--- 
--- @return prosper.Buffer ret0
function prosper.Image:GetMemoryBuffer() end

--- 
--- @return enum prosper::ImageUsageFlags ret0
function prosper.Image:GetUsage() end

--- 
--- @return int ret0
function prosper.Image:GetMipmapCount() end

--- 
--- @param mipmap int
--- @return int ret0_1
--- @return int ret0_2
function prosper.Image:GetMipmapSize(mipmap) end

--- 
--- @return enum prosper::SampleCountFlags ret0
function prosper.Image:GetSampleCount() end

--- 
--- @return enum prosper::SharingMode ret0
function prosper.Image:GetSharingMode() end

--- 
--- @return enum prosper::ImageTiling ret0
function prosper.Image:GetTiling() end

--- 
--- @return enum prosper::ImageType ret0
function prosper.Image:GetType() end

--- 
--- @param arg1 int
--- @return int ret0
--- @overload fun(arg1: int): int
function prosper.Image:GetWidth(arg1) end

--- 
--- @return bool ret0
function prosper.Image:IsNormalMap() end

--- 
--- @return bool ret0
function prosper.Image:IsSrgb() end

--- 
--- @return bool ret0
function prosper.Image:IsValid() end

--- 
--- @param name string
function prosper.Image:SetDebugName(name) end

--- 
--- @param arg1 bool
function prosper.Image:SetNormalMap(arg1) end

--- 
--- @param arg1 bool
function prosper.Image:SetSrgb(arg1) end

--- 
--- @param info prosper.Image.ToImageBufferInfo
--- @overload fun(includeLayers: bool, includeMipmaps: bool): 
--- @overload fun(includeLayers: bool, includeMipmaps: bool, targetFormat: int): 
--- @overload fun(includeLayers: bool, includeMipmaps: bool, targetFormat: int, inputImageLayout: enum prosper::ImageLayout): 
function prosper.Image:ToImageBuffer(info) end

--- 
function prosper.Image:__tostring() end

--- 
--- @param x int
--- @param y int
--- @param imgBuf util.ImageBuffer
--- @overload fun(x: int, y: int, imgBuf: util.ImageBuffer, layerIndex: int): 
--- @overload fun(x: int, y: int, imgBuf: util.ImageBuffer, layerIndex: int, mipLevel: int): 
function prosper.Image:WriteMemory(x, y, imgBuf) end


--- 
--- @class prosper.Image.ToImageBufferInfo
--- @field includeLayers bool 
--- @field includeMipmaps bool 
--- @field inputImageLayout prosper::ImageLayout 
--- @field targetFormat uimg::Format 
--- @field stagingImage prosper.Image 
--- @overload fun():prosper.Image.ToImageBufferInfo
prosper.Image.ToImageBufferInfo = {}


--- 
--- @class prosper.BufferCopyInfo
--- @field dstOffset  
--- @field size  
--- @field srcOffset  
--- @overload fun():prosper.BufferCopyInfo
prosper.BufferCopyInfo = {}


--- 
--- @class prosper.BufferCreateInfo
--- @field size  
--- @field flags  
--- @field memoryFeatures  
--- @field queueFamilyMask  
--- @field usageFlags  
--- @overload fun():prosper.BufferCreateInfo
prosper.BufferCreateInfo = {}


--- @enum Flag
prosper.BufferCreateInfo = {
	FLAG_NONE = 0,
	FLAG_CONCURRENT_SHARING_BIT = 1,
	FLAG_DONT_ALLOCATE_MEMORY_BIT = 2,
}

--- @enum FlagSparse
prosper.BufferCreateInfo = {
	FLAG_SPARSE_ALIASED_RESIDENCY_BIT = 8,
	FLAG_SPARSE_BIT = 4,
}

--- 
--- @class prosper.BufferImageCopyInfo
--- @field layerCount  
--- @field aspectMask  
--- @field baseArrayLayer  
--- @field bufferOffset  
--- @field dstImageLayout  
--- @field imageSize  
--- @field height  
--- @field mipLevel  
--- @field width  
--- @overload fun():prosper.BufferImageCopyInfo
prosper.BufferImageCopyInfo = {}

--- 
--- @return math.Vector2i ret0
function prosper.BufferImageCopyInfo:GetImageSize() end

--- 
--- @param width int
--- @param height int
function prosper.BufferImageCopyInfo:SetImageSize(width, height) end


--- 
--- @class prosper.CommandBuffer
prosper.CommandBuffer = {}

--- 
--- @return string ret0
function prosper.CommandBuffer:GetDebugName() end

--- 
function prosper.CommandBuffer:Flush() end

--- 
--- @param img prosper.Image
--- @param clearDepth number
--- @return bool ret0
--- @overload fun(img: prosper.Image, clearDepth: number, clearStencil: int): bool
--- @overload fun(img: prosper.Image, col: util.Color, attId: int): bool
function prosper.CommandBuffer:RecordClearAttachment(img, clearDepth) end

--- 
--- @param imgSrc prosper.Image
--- @param imgDst prosper.Image
--- @param blitInfo prosper.BlitInfo
--- @return bool ret0
function prosper.CommandBuffer:RecordBlitImage(imgSrc, imgDst, blitInfo) end

--- 
--- @param minDepthBounds number
--- @param maxDepthBounds number
--- @return bool ret0
function prosper.CommandBuffer:RecordSetDepthBounds(minDepthBounds, maxDepthBounds) end

--- 
--- @return bool ret0
function prosper.CommandBuffer:IsRecording() end

--- 
--- @param rpInfo prosper.RenderPassInfo
--- @return bool ret0
function prosper.CommandBuffer:RecordBeginRenderPass(rpInfo) end

--- 
--- @param indexBuffer prosper.Buffer
--- @param indexType int
--- @return bool ret0
--- @overload fun(indexBuffer: prosper.Buffer, indexType: int, offset: int): bool
function prosper.CommandBuffer:RecordBindIndexBuffer(indexBuffer, indexType) end

--- 
--- @param graphics shader.Graphics
--- @param vertexBuffer prosper.Buffer
--- @return bool ret0
--- @overload fun(graphics: shader.Graphics, vertexBuffer: prosper.Buffer, startBinding: int): bool
--- @overload fun(graphics: shader.Graphics, vertexBuffer: prosper.Buffer, startBinding: int, offset: int): bool
function prosper.CommandBuffer:RecordBindVertexBuffer(graphics, vertexBuffer) end

--- 
--- @param graphics shader.Graphics
--- @param buffers table
--- @return bool ret0
--- @overload fun(graphics: shader.Graphics, buffers: table, startBinding: int): bool
--- @overload fun(graphics: shader.Graphics, buffers: table, startBinding: int, voffsets: table): bool
function prosper.CommandBuffer:RecordBindVertexBuffers(graphics, buffers) end

--- 
--- @param vertexCount int
--- @return bool ret0
--- @overload fun(vertexCount: int, instanceCount: int): bool
--- @overload fun(vertexCount: int, instanceCount: int, firstVertex: int): bool
--- @overload fun(vertexCount: int, instanceCount: int, firstVertex: int, firstInstance: int): bool
function prosper.CommandBuffer:RecordDraw(vertexCount) end

--- 
--- @param texSrc prosper.Texture
--- @param imgDst prosper.Image
--- @return bool ret0
function prosper.CommandBuffer:RecordBlitTexture(texSrc, imgDst) end

--- 
--- @param buf prosper.Buffer
--- @param srcStageMask int
--- @param dstStageMask int
--- @param srcAccessMask int
--- @param dstAccessMask int
--- @return bool ret0
--- @overload fun(buf: prosper.Buffer, srcStageMask: int, dstStageMask: int, srcAccessMask: int, dstAccessMask: int, offset: int): bool
--- @overload fun(buf: prosper.Buffer, srcStageMask: int, dstStageMask: int, srcAccessMask: int, dstAccessMask: int, offset: int, size: int): bool
function prosper.CommandBuffer:RecordBufferBarrier(buf, srcStageMask, dstStageMask, srcAccessMask, dstAccessMask) end

--- 
--- @param img prosper.Image
--- @param clearDepth number
--- @param clearStencil int
--- @return bool ret0
--- @overload fun(img: prosper.Image, clearDepth: number, clearStencil: int, clearImageInfo: prosper.ClearImageInfo): bool
--- @overload fun(img: prosper.Image, col: util.Color): bool
--- @overload fun(img: prosper.Image, col: util.Color, clearImageInfo: prosper.ClearImageInfo): bool
function prosper.CommandBuffer:RecordClearImage(img, clearDepth, clearStencil) end

--- 
--- @param bufSrc prosper.Buffer
--- @param bufDst prosper.Buffer
--- @param copyInfo prosper.BufferCopyInfo
--- @return bool ret0
function prosper.CommandBuffer:RecordCopyBuffer(bufSrc, bufDst, copyInfo) end

--- 
--- @param bufSrc prosper.Buffer
--- @param imgDst prosper.Image
--- @return bool ret0
--- @overload fun(bufSrc: prosper.Buffer, imgDst: prosper.Image, copyInfo: prosper.BufferImageCopyInfo): bool
function prosper.CommandBuffer:RecordCopyBufferToImage(bufSrc, imgDst) end

--- 
--- @param imgSrc prosper.Image
--- @param imgDst prosper.Image
--- @param copyInfo prosper.ImageCopyInfo
--- @return bool ret0
function prosper.CommandBuffer:RecordCopyImage(imgSrc, imgDst, copyInfo) end

--- 
--- @param buffer prosper.Buffer
--- @param offset int
--- @param drawCount int
--- @param stride int
--- @return bool ret0
function prosper.CommandBuffer:RecordDrawIndexedIndirect(buffer, offset, drawCount, stride) end

--- 
--- @param imgSrc prosper.Image
--- @param srcImageLayout int
--- @param bufDst prosper.Buffer
--- @param copyInfo prosper.BufferImageCopyInfo
--- @return bool ret0
function prosper.CommandBuffer:RecordCopyImageToBuffer(imgSrc, srcImageLayout, bufDst, copyInfo) end

--- 
--- @param rt prosper.RenderTarget
--- @param dir math.Vector2
--- @param lnodes any
--- @return bool ret0
function prosper.CommandBuffer:RecordDrawGradient(rt, dir, lnodes) end

--- 
--- @param indexCount int
--- @return bool ret0
--- @overload fun(indexCount: int, instanceCount: int): bool
--- @overload fun(indexCount: int, instanceCount: int, firstIndex: int): bool
--- @overload fun(indexCount: int, instanceCount: int, firstIndex: int, firstInstance: int): bool
function prosper.CommandBuffer:RecordDrawIndexed(indexCount) end

--- 
--- @param buffer prosper.Buffer
--- @param offset int
--- @param drawCount int
--- @param stride int
--- @return bool ret0
function prosper.CommandBuffer:RecordDrawIndirect(buffer, offset, drawCount, stride) end

--- 
--- @return bool ret0
function prosper.CommandBuffer:StopRecording() end

--- 
--- @return bool ret0
function prosper.CommandBuffer:RecordEndRenderPass() end

--- 
--- @param buffer prosper.Buffer
--- @param offset int
--- @param size int
--- @param data int
--- @return bool ret0
function prosper.CommandBuffer:RecordFillBuffer(buffer, offset, size, data) end

--- 
--- @param img prosper.Image
--- @param currentLayout int
--- @param srcAccessMask int
--- @param srcStage int
--- @return bool ret0
function prosper.CommandBuffer:RecordGenerateMipmaps(img, currentLayout, srcAccessMask, srcStage) end

--- 
--- @param img prosper.Image
--- @param srcStageMask int
--- @param dstStageMask int
--- @param oldLayout int
--- @param newLayout int
--- @param srcAccessMask int
--- @param dstAccessMask int
--- @return bool ret0
--- @overload fun(img: prosper.Image, srcStageMask: int, dstStageMask: int, oldLayout: int, newLayout: int, srcAccessMask: int, dstAccessMask: int, baseLayer: int): bool
--- @overload fun(img: prosper.Image, oldLayout: int, newLayout: int): bool
--- @overload fun(img: prosper.Image, oldLayout: int, newLayout: int, subresourceRange: prosper.ImageSubresourceRange): bool
function prosper.CommandBuffer:RecordImageBarrier(img, srcStageMask, dstStageMask, oldLayout, newLayout, srcAccessMask, dstAccessMask) end

--- 
--- @param barrierInfo prosper.PipelineBarrierInfo
--- @return bool ret0
function prosper.CommandBuffer:RecordPipelineBarrier(barrierInfo) end

--- 
--- @param imgSrc prosper.Image
--- @param imgDst prosper.Image
--- @return bool ret0
function prosper.CommandBuffer:RecordResolveImage(imgSrc, imgDst) end

--- 
--- @param blendConstants math.Vector4
--- @return bool ret0
function prosper.CommandBuffer:RecordSetBlendConstants(blendConstants) end

--- 
--- @param depthBiasConstantFactor number
--- @param depthBiasClamp number
--- @param slopeScaledDepthBias number
--- @return bool ret0
function prosper.CommandBuffer:RecordSetDepthBias(depthBiasConstantFactor, depthBiasClamp, slopeScaledDepthBias) end

--- 
--- @param lineWidth number
--- @return bool ret0
function prosper.CommandBuffer:RecordSetLineWidth(lineWidth) end

--- 
--- @param width int
--- @param height int
--- @param x int
--- @param y int
--- @return bool ret0
function prosper.CommandBuffer:RecordSetScissor(width, height, x, y) end

--- 
--- @param faceMask int
--- @param stencilCompareMask int
--- @return bool ret0
function prosper.CommandBuffer:RecordSetStencilCompareMask(faceMask, stencilCompareMask) end

--- 
--- @param faceMask int
--- @param stencilReference int
--- @return bool ret0
function prosper.CommandBuffer:RecordSetStencilReference(faceMask, stencilReference) end

--- 
--- @param buf prosper.Buffer
--- @param offset int
--- @param type enum udm::Type
--- @param value struct luabind::adl::udm_type<class luabind::adl::object,1,1,0>
--- @return bool ret0
--- @overload fun(buf: prosper.Buffer, offset: int, ds: util.DataStream): bool
function prosper.CommandBuffer:RecordUpdateBuffer(buf, offset, type, value) end

--- 
--- @param faceMask int
--- @param stencilWriteMask int
--- @return bool ret0
function prosper.CommandBuffer:RecordSetStencilWriteMask(faceMask, stencilWriteMask) end

--- 
--- @param width int
--- @param height int
--- @param x int
--- @param y int
--- @return bool ret0
function prosper.CommandBuffer:RecordSetViewport(width, height, x, y) end

--- 
--- @param name string
function prosper.CommandBuffer:SetDebugName(name) end

--- 
--- @param oneTimeSubmit bool
--- @param simultaneousUseAllowed bool
--- @return bool ret0
function prosper.CommandBuffer:StartRecording(oneTimeSubmit, simultaneousUseAllowed) end

--- 
--- @param 1 prosper.CommandBuffer
function prosper.CommandBuffer:__eq(arg1) end

--- 
function prosper.CommandBuffer:__tostring() end


--- @enum RenderPassFlag
prosper.CommandBuffer = {
	RENDER_PASS_FLAG_NONE = 0,
	RENDER_PASS_FLAG_SECONDARY_COMMAND_BUFFERS_BIT = 1,
}

--- 
--- @class prosper.CommandBufferRecorder
prosper.CommandBufferRecorder = {}

--- 
--- @return bool ret0
function prosper.CommandBufferRecorder:IsValid() end

--- 
--- @param 1 prosper.CommandBufferRecorder
function prosper.CommandBufferRecorder:__eq(arg1) end

--- 
function prosper.CommandBufferRecorder:EndRecording() end

--- 
--- @param drawCmd prosper.CommandBuffer
--- @return bool ret0
function prosper.CommandBufferRecorder:ExecuteCommands(drawCmd) end

--- 
--- @return bool ret0
function prosper.CommandBufferRecorder:IsPending() end

--- 
--- @return bool ret0
function prosper.CommandBufferRecorder:GetOneTimeSubmit() end

--- 
function prosper.CommandBufferRecorder:Wait() end

--- 
--- @param arg1 bool
function prosper.CommandBufferRecorder:SetOneTimeSubmit(arg1) end

--- 
--- @param arg1 prosper.RenderPass
--- @param arg2 prosper.Framebuffer
function prosper.CommandBufferRecorder:StartRecording(arg1, arg2) end

--- 
function prosper.CommandBufferRecorder:__tostring() end


--- 
--- @class prosper.DescriptorSet
prosper.DescriptorSet = {}

--- 
--- @param bindingIdx int
--- @param texture prosper.Texture
--- @return bool ret0
--- @overload fun(bindingIdx: int, texture: prosper.Texture, layerId: int): bool
function prosper.DescriptorSet:SetBindingTexture(bindingIdx, texture) end

--- 
--- @return int ret0
function prosper.DescriptorSet:GetBindingCount() end

--- 
--- @return string ret0
function prosper.DescriptorSet:GetDebugName() end

--- 
--- @param bindingIdx int
--- @param texture prosper.Texture
--- @param arrayIdx int
--- @return bool ret0
--- @overload fun(bindingIdx: int, texture: prosper.Texture, arrayIdx: int, layerId: int): bool
function prosper.DescriptorSet:SetBindingArrayTexture(bindingIdx, texture, arrayIdx) end

--- 
--- @param bindingIdx int
--- @param buffer prosper.Buffer
--- @return bool ret0
--- @overload fun(bindingIdx: int, buffer: prosper.Buffer, startOffset: int): bool
--- @overload fun(bindingIdx: int, buffer: prosper.Buffer, startOffset: int, size: int): bool
function prosper.DescriptorSet:SetBindingStorageBuffer(bindingIdx, buffer) end

--- 
--- @param bindingIdx int
--- @param buffer prosper.Buffer
--- @return bool ret0
--- @overload fun(bindingIdx: int, buffer: prosper.Buffer, startOffset: int): bool
--- @overload fun(bindingIdx: int, buffer: prosper.Buffer, startOffset: int, size: int): bool
function prosper.DescriptorSet:SetBindingUniformBufferDynamic(bindingIdx, buffer) end

--- 
--- @param bindingIdx int
--- @param buffer prosper.Buffer
--- @return bool ret0
--- @overload fun(bindingIdx: int, buffer: prosper.Buffer, startOffset: int): bool
--- @overload fun(bindingIdx: int, buffer: prosper.Buffer, startOffset: int, size: int): bool
function prosper.DescriptorSet:SetBindingUniformBuffer(bindingIdx, buffer) end

--- 
--- @param name string
function prosper.DescriptorSet:SetDebugName(name) end

--- 
--- @return bool ret0
function prosper.DescriptorSet:Update() end

--- 
--- @param 1 prosper.DescriptorSet
function prosper.DescriptorSet:__eq(arg1) end

--- 
function prosper.DescriptorSet:__tostring() end


--- 
--- @class prosper.SubresourceLayout
--- @field size  
--- @field arrayPitch  
--- @field depthPitch  
--- @field offset  
--- @field rowPitch  
--- @overload fun():prosper.SubresourceLayout
prosper.SubresourceLayout = {}


--- 
--- @class prosper.Event
prosper.Event = {}

--- 
--- @param 1 prosper.Event
function prosper.Event:__eq(arg1) end

--- 
--- @return bool ret0
function prosper.Event:IsValid() end

--- 
function prosper.Event:__tostring() end


--- 
--- @class prosper.Fence
prosper.Fence = {}

--- 
--- @param 1 prosper.Fence
function prosper.Fence:__eq(arg1) end

--- 
--- @return bool ret0
function prosper.Fence:IsValid() end

--- 
function prosper.Fence:__tostring() end


--- 
--- @class prosper.RenderTarget
prosper.RenderTarget = {}

--- 
--- @param idx int
--- @return prosper.Texture ret0
--- @overload fun(idx: int): prosper.Texture
function prosper.RenderTarget:GetColorAttachmentTexture(idx) end

--- 
--- @return string ret0
function prosper.RenderTarget:GetDebugName() end

--- 
--- @return int ret0
function prosper.RenderTarget:GetHeight() end

--- 
--- @return enum prosper::Format ret0
function prosper.RenderTarget:GetFormat() end

--- 
--- @return prosper.Texture ret0
function prosper.RenderTarget:GetDepthStencilAttachmentTexture() end

--- 
--- @return prosper.Framebuffer ret0
function prosper.RenderTarget:GetFramebuffer() end

--- 
--- @param arg1 int
--- @return prosper.Texture ret0
--- @overload fun(): prosper.Texture
function prosper.RenderTarget:GetTexture(arg1) end

--- 
--- @return prosper.RenderPass ret0
function prosper.RenderTarget:GetRenderPass() end

--- 
--- @return int ret0
function prosper.RenderTarget:GetWidth() end

--- 
--- @param name string
function prosper.RenderTarget:SetDebugName(name) end

--- 
--- @param 1 prosper.RenderTarget
function prosper.RenderTarget:__eq(arg1) end

--- 
function prosper.RenderTarget:__tostring() end


--- 
--- @class prosper.Framebuffer
prosper.Framebuffer = {}

--- 
--- @return int ret0
function prosper.Framebuffer:GetHeight() end

--- 
--- @param 1 prosper.Framebuffer
function prosper.Framebuffer:__eq(arg1) end

--- 
--- @return bool ret0
function prosper.Framebuffer:IsValid() end

--- 
--- @return int ret0
function prosper.Framebuffer:GetWidth() end

--- 
function prosper.Framebuffer:__tostring() end


--- 
--- @class prosper.RenderBuffer
prosper.RenderBuffer = {}


--- 
--- @class prosper.ImageCopyInfo
--- @field dstImageLayout  
--- @field width  
--- @field dstOffset  
--- @field srcOffset  
--- @field dstSubresource  
--- @field height  
--- @field srcImageLayout  
--- @field srcSubresource  
--- @overload fun():prosper.ImageCopyInfo
prosper.ImageCopyInfo = {}


--- 
--- @class prosper.TimerQuery
prosper.TimerQuery = {}

--- 
--- @param 1 prosper.TimerQuery
function prosper.TimerQuery:__eq(arg1) end

--- 
--- @return bool ret0
function prosper.TimerQuery:IsValid() end

--- 
function prosper.TimerQuery:__tostring() end


--- 
--- @class prosper.ImageSubresourceLayers
--- @field layerCount  
--- @field aspectMask  
--- @field baseArrayLayer  
--- @field mipLevel  
--- @overload fun():prosper.ImageSubresourceLayers
prosper.ImageSubresourceLayers = {}


--- 
--- @class prosper.ImageCreateInfo
--- @field samples  
--- @field flags  
--- @field height  
--- @field format  
--- @field layers  
--- @field memoryFeatures  
--- @field postCreateLayout  
--- @field queueFamilyMask  
--- @field tiling  
--- @field type  
--- @field usageFlags  
--- @field width  
--- @overload fun():prosper.ImageCreateInfo
prosper.ImageCreateInfo = {}


--- @enum Flag
prosper.ImageCreateInfo = {
	FLAG_DONT_ALLOCATE_MEMORY_BIT = 64,
	FLAG_ALLOCATE_DISCRETE_MEMORY_BIT = 32,
	FLAG_NORMAL_MAP_BIT = 256,
	FLAG_NONE = 0,
	FLAG_CONCURRENT_SHARING_BIT = 2,
	FLAG_CUBEMAP_BIT = 1,
	FLAG_SRGB_BIT = 128,
	FLAG_FULL_MIPMAP_CHAIN_BIT = 4,
}

--- @enum FlagSparse
prosper.ImageCreateInfo = {
	FLAG_SPARSE_ALIASED_RESIDENCY_BIT = 16,
	FLAG_SPARSE_BIT = 8,
}

--- 
--- @class prosper.ImageSubresourceRange
--- @field baseArrayLayer  
--- @field levelCount  
--- @field baseMipLevel  
--- @field layerCount  
--- @overload fun(arg1: int, arg2: int, arg3: int, arg4: int):prosper.ImageSubresourceRange
--- @overload fun(arg1: int, arg2: int, arg3: int):prosper.ImageSubresourceRange
--- @overload fun(arg1: int, arg2: int):prosper.ImageSubresourceRange
--- @overload fun(arg1: int):prosper.ImageSubresourceRange
--- @overload fun():prosper.ImageSubresourceRange
prosper.ImageSubresourceRange = {}


--- 
--- @class prosper.SamplerCreateInfo
--- @field compareOp  
--- @field compareEnable  
--- @field addressModeU  
--- @field magFilter  
--- @field borderColor  
--- @field addressModeV  
--- @field mipLodBias  
--- @field addressModeW  
--- @field maxAnisotropy  
--- @field maxLod  
--- @field minFilter  
--- @field minLod  
--- @field mipmapMode  
--- @overload fun():prosper.SamplerCreateInfo
prosper.SamplerCreateInfo = {}


--- 
--- @class prosper.ImageView
prosper.ImageView = {}

--- 
--- @return enum prosper::ImageAspectFlags ret0
function prosper.ImageView:GetAspectMask() end

--- 
--- @return int ret0
function prosper.ImageView:GetLayerCount() end

--- 
function prosper.ImageView:__tostring() end

--- 
--- @return enum prosper::Format ret0
function prosper.ImageView:GetImageFormat() end

--- 
--- @return int ret0
function prosper.ImageView:GetBaseLayer() end

--- 
--- @return int ret0
function prosper.ImageView:GetBaseMipmapLevel() end

--- 
--- @return string ret0
function prosper.ImageView:GetDebugName() end

--- 
--- @return int ret0
function prosper.ImageView:GetMipmapCount() end

--- 
--- @return class std::array<enum prosper::ComponentSwizzle,4> ret0
function prosper.ImageView:GetSwizzleArray() end

--- 
--- @return enum prosper::ImageViewType ret0
function prosper.ImageView:GetType() end

--- 
--- @return bool ret0
function prosper.ImageView:IsValid() end

--- 
--- @param name string
function prosper.ImageView:SetDebugName(name) end

--- 
--- @param 1 prosper.ImageView
function prosper.ImageView:__eq(arg1) end


--- 
--- @class prosper.ImageViewCreateInfo
--- @field baseLayer  
--- @field swizzleRed  
--- @field baseMipmap  
--- @field swizzleGreen  
--- @field mipmapLevels  
--- @field format  
--- @field levelCount  
--- @field swizzleAlpha  
--- @field swizzleBlue  
--- @overload fun():prosper.ImageViewCreateInfo
prosper.ImageViewCreateInfo = {}


--- 
--- @class prosper.TextureCreateInfo
--- @field flags  
--- @field imageView  
--- @field sampler  
--- @overload fun():prosper.TextureCreateInfo
prosper.TextureCreateInfo = {}


--- @enum Flag
prosper.TextureCreateInfo = {
	FLAG_CREATE_IMAGE_VIEW_FOR_EACH_LAYER = 2,
	FLAG_NONE = 0,
	FLAG_RESOLVABLE = 1,
}

--- 
--- @class prosper.RenderPassInfo
--- @field renderPassFlags prosper::IPrimaryCommandBuffer::RenderPassFlags 
--- @overload fun(arg1: prosper.RenderTarget):prosper.RenderPassInfo
prosper.RenderPassInfo = {}

--- 
--- @param clearValue prosper.ClearValue
function prosper.RenderPassInfo:AddClearValue(clearValue) end

--- 
--- @param rp prosper.RenderPass
--- @overload fun(): 
function prosper.RenderPassInfo:SetRenderPass(rp) end

--- 
--- @param clearValues table
function prosper.RenderPassInfo:SetClearValues(clearValues) end

--- 
--- @param layerId int
--- @overload fun(): 
function prosper.RenderPassInfo:SetLayer(layerId) end


--- 
--- @class prosper.Mesh
prosper.Mesh = {}

--- 
function prosper.Mesh:ClearBuffers() end

--- 
--- @param arg1 prosper.Buffer
--- @param arg2 enum pragma::model::IndexType
function prosper.Mesh:SetIndexBuffer(arg1, arg2) end

--- 
--- @return prosper.Buffer ret0
function prosper.Mesh:GetVertexBuffer() end

--- 
function prosper.Mesh:__tostring() end

--- 
--- @param arg1 prosper.Buffer
function prosper.Mesh:SetVertexWeightBuffer(arg1) end

--- 
--- @return prosper.Buffer ret0
function prosper.Mesh:GetAlphaBuffer() end

--- 
--- @param arg1 prosper.Buffer
function prosper.Mesh:SetVertexBuffer(arg1) end

--- 
--- @param arg1 prosper.Buffer
function prosper.Mesh:SetAlphaBuffer(arg1) end

--- 
--- @return prosper.Buffer ret0
function prosper.Mesh:GetVertexWeightBuffer() end

--- 
--- @return prosper.Buffer ret0
function prosper.Mesh:GetIndexBuffer() end

--- 
--- @param 1 prosper.Mesh
function prosper.Mesh:__eq(arg1) end


--- 
--- @class prosper.Monitor
prosper.Monitor = {}

--- 
--- @return string ret0
function prosper.Monitor:GetName() end

--- 
--- @return table ret0
function prosper.Monitor:GetGammaRamp() end

--- 
--- @return math.Vector2i ret0
function prosper.Monitor:GetPhysicalSize() end

--- 
--- @return math.Vector2i ret0
function prosper.Monitor:GetPos() end

--- 
--- @return table ret0
function prosper.Monitor:GetSupportedVideoModes() end

--- 
--- @return map ret0
function prosper.Monitor:GetVideoMode() end

--- 
--- @param arg1 table
function prosper.Monitor:SetGammaRamp(arg1) end

--- 
--- @param arg1 number
function prosper.Monitor:SetGamma(arg1) end

--- 
function prosper.Monitor:__tostring() end


--- 
--- @class prosper.PreparedCommandBuffer
--- @field enableDrawArgs  
--- @overload fun():prosper.PreparedCommandBuffer
prosper.PreparedCommandBuffer = {}

--- 
--- @param faceMask struct Lua::Vulkan::PreparedCommandLuaArg
--- @param stencilReference struct Lua::Vulkan::PreparedCommandLuaArg
function prosper.PreparedCommandBuffer:RecordSetStencilReference(faceMask, stencilReference) end

--- 
--- @param buf prosper.Buffer
--- @param srcStageMask struct Lua::Vulkan::PreparedCommandLuaArg
--- @param dstStageMask struct Lua::Vulkan::PreparedCommandLuaArg
--- @param srcAccessMask struct Lua::Vulkan::PreparedCommandLuaArg
--- @param dstAccessMask struct Lua::Vulkan::PreparedCommandLuaArg
--- @overload fun(buf: prosper.Buffer, srcStageMask: struct Lua::Vulkan::PreparedCommandLuaArg, dstStageMask: struct Lua::Vulkan::PreparedCommandLuaArg, srcAccessMask: struct Lua::Vulkan::PreparedCommandLuaArg, dstAccessMask: struct Lua::Vulkan::PreparedCommandLuaArg, offset: struct Lua::Vulkan::PreparedCommandLuaArg, size: struct Lua::Vulkan::PreparedCommandLuaArg): 
function prosper.PreparedCommandBuffer:RecordBufferBarrier(buf, srcStageMask, dstStageMask, srcAccessMask, dstAccessMask) end

--- 
--- @param width struct Lua::Vulkan::PreparedCommandLuaArg
--- @param height struct Lua::Vulkan::PreparedCommandLuaArg
--- @param x struct Lua::Vulkan::PreparedCommandLuaArg
--- @param y struct Lua::Vulkan::PreparedCommandLuaArg
function prosper.PreparedCommandBuffer:RecordSetScissor(width, height, x, y) end

--- 
--- @param img prosper.Image
--- @param color util.Color
--- @return bool ret0
function prosper.PreparedCommandBuffer:RecordClearImage(img, color) end

--- 
--- @param lineWidth struct Lua::Vulkan::PreparedCommandLuaArg
function prosper.PreparedCommandBuffer:RecordSetLineWidth(lineWidth) end

--- 
--- @param cmd prosper.CommandBuffer
--- @return bool ret0
function prosper.PreparedCommandBuffer:RecordCommands(cmd) end


--- 
--- @class prosper.PreparedCommandBuffer.DynArg
--- @overload fun(arg1: string):prosper.PreparedCommandBuffer.DynArg
prosper.PreparedCommandBuffer.DynArg = {}


--- 
--- @class prosper.RenderPass
prosper.RenderPass = {}

--- 
--- @param 1 prosper.RenderPass
function prosper.RenderPass:__eq(arg1) end

--- 
--- @return bool ret0
function prosper.RenderPass:IsValid() end

--- 
function prosper.RenderPass:__tostring() end


--- 
--- @class prosper.RenderPassCreateInfo
--- @overload fun():prosper.RenderPassCreateInfo
prosper.RenderPassCreateInfo = {}

--- 
--- @param format int
--- @param initialLayout int
--- @param finalLayout int
--- @param loadOp int
--- @param storeOp int
--- @return int ret0
--- @overload fun(format: int, initialLayout: int, finalLayout: int, loadOp: int, storeOp: int, sampleCount: int): int
function prosper.RenderPassCreateInfo:AddAttachment(format, initialLayout, finalLayout, loadOp, storeOp) end

--- 
--- @return int ret0
function prosper.RenderPassCreateInfo:AddSubPass() end

--- 
--- @param subPassId int
--- @param colorAttId int
function prosper.RenderPassCreateInfo:AddSubPassColorAttachment(subPassId, colorAttId) end

--- 
--- @param subPassId int
--- @param sourceSubPassId int
--- @param destinationSubPassId int
--- @param sourceStageMask int
--- @param destinationStageMask int
--- @param sourceAccessMask int
--- @param destinationAccessMask int
function prosper.RenderPassCreateInfo:AddSubPassDependency(subPassId, sourceSubPassId, destinationSubPassId, sourceStageMask, destinationStageMask, sourceAccessMask, destinationAccessMask) end

--- 
--- @param subPassId int
--- @param bEnabled bool
function prosper.RenderPassCreateInfo:SetSubPassDepthStencilAttachmentEnabled(subPassId, bEnabled) end


--- 
--- @class prosper.RenderTargetCreateInfo
--- @field useLayerFramebuffers  
--- @overload fun():prosper.RenderTargetCreateInfo
prosper.RenderTargetCreateInfo = {}


--- 
--- @class prosper.Sampler
prosper.Sampler = {}

--- 
--- @return enum prosper::SamplerAddressMode ret0
function prosper.Sampler:GetAddressModeU() end

--- 
--- @return string ret0
function prosper.Sampler:GetDebugName() end

--- 
--- @return enum prosper::BorderColor ret0
function prosper.Sampler:GetBorderColor() end

--- 
--- @return enum prosper::SamplerAddressMode ret0
function prosper.Sampler:GetAddressModeV() end

--- 
--- @return enum prosper::SamplerAddressMode ret0
function prosper.Sampler:GetAddressModeW() end

--- 
--- @return bool ret0
function prosper.Sampler:GetAnisotropyEnabled() end

--- 
--- @return enum prosper::CompareOp ret0
function prosper.Sampler:GetCompareOperation() end

--- 
--- @return number ret0
function prosper.Sampler:GetMaxAnisotropy() end

--- 
--- @return bool ret0
function prosper.Sampler:GetCompareEnabled() end

--- 
--- @param arg1 number
function prosper.Sampler:SetMinLod(arg1) end

--- 
--- @param arg1 enum prosper::SamplerAddressMode
function prosper.Sampler:SetAddressModeV(arg1) end

--- 
--- @return enum prosper::SamplerMipmapMode ret0
function prosper.Sampler:GetMipmapMode() end

--- 
--- @return enum prosper::Filter ret0
function prosper.Sampler:GetMagFilter() end

--- 
--- @return number ret0
function prosper.Sampler:GetMaxLod() end

--- 
--- @return enum prosper::Filter ret0
function prosper.Sampler:GetMinFilter() end

--- 
--- @return bool ret0
function prosper.Sampler:Update() end

--- 
--- @return number ret0
function prosper.Sampler:GetMinLod() end

--- 
--- @param arg1 enum prosper::CompareOp
function prosper.Sampler:SetCompareOperation(arg1) end

--- 
--- @return number ret0
function prosper.Sampler:GetMipLodBias() end

--- 
--- @param arg1 enum prosper::SamplerAddressMode
function prosper.Sampler:SetAddressModeU(arg1) end

--- 
--- @return bool ret0
function prosper.Sampler:IsValid() end

--- 
--- @param arg1 enum prosper::SamplerAddressMode
function prosper.Sampler:SetAddressModeW(arg1) end

--- 
--- @param arg1 enum prosper::BorderColor
function prosper.Sampler:SetBorderColor(arg1) end

--- 
--- @param arg1 bool
function prosper.Sampler:SetCompareEnabled(arg1) end

--- 
--- @param name string
function prosper.Sampler:SetDebugName(name) end

--- 
--- @param arg1 enum prosper::Filter
function prosper.Sampler:SetMagFilter(arg1) end

--- 
--- @param arg1 number
function prosper.Sampler:SetMaxAnisotropy(arg1) end

--- 
--- @param arg1 number
function prosper.Sampler:SetMaxLod(arg1) end

--- 
--- @param arg1 enum prosper::Filter
function prosper.Sampler:SetMinFilter(arg1) end

--- 
--- @param arg1 enum prosper::SamplerMipmapMode
function prosper.Sampler:SetMipmapMode(arg1) end

--- 
--- @param 1 prosper.Sampler
function prosper.Sampler:__eq(arg1) end

--- 
function prosper.Sampler:__tostring() end


--- 
--- @class prosper.SwapBuffer
prosper.SwapBuffer = {}


--- 
--- @class prosper.Texture
prosper.Texture = {}

--- 
--- @param arg1 int
--- @return prosper.ImageView ret0
--- @overload fun(): prosper.ImageView
function prosper.Texture:GetImageView(arg1) end

--- 
--- @return prosper.Sampler ret0
function prosper.Texture:GetSampler() end

--- 
--- @return string ret0
function prosper.Texture:GetDebugName() end

--- 
--- @return int ret0
function prosper.Texture:GetHeight() end

--- 
--- @return enum prosper::Format ret0
function prosper.Texture:GetFormat() end

--- 
--- @return prosper.Image ret0
function prosper.Texture:GetImage() end

--- 
--- @return bool ret0
function prosper.Texture:IsValid() end

--- 
--- @param arg1 prosper.ImageView
function prosper.Texture:SetImageView(arg1) end

--- 
--- @return int ret0
function prosper.Texture:GetWidth() end

--- 
--- @param name string
function prosper.Texture:SetDebugName(name) end

--- 
--- @param 1 prosper.Texture
function prosper.Texture:__eq(arg1) end

--- 
function prosper.Texture:__tostring() end


--- 
--- @class prosper.TimestampQuery
prosper.TimestampQuery = {}

--- 
--- @param 1 prosper.TimestampQuery
function prosper.TimestampQuery:__eq(arg1) end

--- 
--- @return bool ret0
function prosper.TimestampQuery:IsValid() end

--- 
function prosper.TimestampQuery:__tostring() end


--- 
--- @class prosper.Window
prosper.Window = {}

--- 
function prosper.Window:ClearCursor() end

--- 
--- @param function unknown
function prosper.Window:AddCloseListener(function_) end

--- 
--- @return string ret0
function prosper.Window:GetClipboardString() end

--- 
function prosper.Window:ClearCursorPosOverride() end

--- 
function prosper.Window:Close() end

--- 
--- @param resizable bool
function prosper.Window:SetResizable(resizable) end

--- 
--- @return enum GLFW::CursorMode ret0
function prosper.Window:GetCursorInputMode() end

--- 
--- @return bool ret0
function prosper.Window:GetStickyMouseButtonsEnabled() end

--- 
--- @return math.Vector2 ret0
function prosper.Window:GetCursorPos() end

--- 
--- @return math.Vector4i ret0
function prosper.Window:GetFrameSize() end

--- 
--- @return math.Vector2i ret0
function prosper.Window:GetPos() end

--- 
--- @return math.Vector2i ret0
function prosper.Window:GetFramebufferSize() end

--- 
--- @param pos math.Vector2i
function prosper.Window:SetPos(pos) end

--- 
--- @param key enum GLFW::Key
--- @return enum GLFW::KeyState ret0
function prosper.Window:GetKeyState(key) end

--- 
--- @return prosper.Monitor ret0
function prosper.Window:GetMonitor() end

--- 
--- @param size math.Vector2i
function prosper.Window:SetSize(size) end

--- 
--- @return bool ret0
function prosper.Window:IsResizable() end

--- 
--- @return bool ret0
function prosper.Window:IsFocused() end

--- 
--- @return math.Vector2 ret0_1
--- @return math.Vector2 ret0_2
--- @return math.Vector2 ret0_3
--- @return math.Vector2 ret0_4
function prosper.Window:GetMonitorBounds() end

--- 
--- @param mouseButton enum GLFW::MouseButton
--- @return enum GLFW::KeyState ret0
function prosper.Window:GetMouseButtonState(mouseButton) end

--- 
--- @return math.Vector2i ret0
function prosper.Window:GetSize() end

--- 
--- @return int ret0
function prosper.Window:GetSwapchainImageCount() end

--- 
--- @return bool ret0
function prosper.Window:GetStickyKeysEnabled() end

--- 
function prosper.Window:Maximize() end

--- 
function prosper.Window:MakeContextCurrent() end

--- 
--- @return string ret0
function prosper.Window:GetWindowTitle() end

--- 
function prosper.Window:Hide() end

--- 
function prosper.Window:Iconify() end

--- 
--- @return bool ret0
function prosper.Window:ShouldClose() end

--- 
--- @return bool ret0
function prosper.Window:IsDecorated() end

--- 
--- @return bool ret0
function prosper.Window:IsIconified() end

--- 
--- @return bool ret0
function prosper.Window:IsFloating() end

--- 
--- @param cursor class GLFW::Cursor
function prosper.Window:SetCursor(cursor) end

--- 
--- @return bool ret0
function prosper.Window:IsMaximized() end

--- 
--- @return bool ret0
function prosper.Window:IsValid() end

--- 
function prosper.Window:SwapBuffers() end

--- 
--- @return bool ret0
function prosper.Window:IsVisible() end

--- 
function prosper.Window:Restore() end

--- 
--- @param color util.Color
function prosper.Window:SetBorderColor(color) end

--- 
--- @param str string
function prosper.Window:SetClipboardString(str) end

--- 
--- @param cursorMode enum GLFW::CursorMode
function prosper.Window:SetCursorInputMode(cursorMode) end

--- 
--- @param pos math.Vector2
function prosper.Window:SetCursorPos(pos) end

--- 
--- @param pos math.Vector2
function prosper.Window:SetCursorPosOverride(pos) end

--- 
--- @param shouldClose bool
function prosper.Window:SetShouldClose(shouldClose) end

--- 
--- @param b prosper.Window
--- @return bool ret0
function prosper.Window:__eq(b) end

--- 
--- @param enabled bool
function prosper.Window:SetStickyKeysEnabled(enabled) end

--- 
--- @param enabled bool
function prosper.Window:SetStickyMouseButtonsEnabled(enabled) end

--- 
--- @param color util.Color
function prosper.Window:SetTitleBarColor(color) end

--- 
--- @param title string
function prosper.Window:SetWindowTitle(title) end

--- 
function prosper.Window:Show() end

--- 
function prosper.Window:__tostring() end


--- 
--- @class prosper.WindowCreateInfo
--- @field alphaBits  
--- @field floating  
--- @field autoIconify  
--- @field blueBits  
--- @field decorated  
--- @field depthBits  
--- @field focused  
--- @field height  
--- @field doublebuffer  
--- @field samples  
--- @field greenBits  
--- @field redBits  
--- @field refreshRate  
--- @field resizable  
--- @field srgbCapable  
--- @field stencilBits  
--- @field stereo  
--- @field title  
--- @field visible  
--- @field width  
--- @overload fun():prosper.WindowCreateInfo
prosper.WindowCreateInfo = {}


