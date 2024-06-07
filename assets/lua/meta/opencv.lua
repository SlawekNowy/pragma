--- @meta
--- 
--- @class opencv
opencv = {}

--- 
--- @param psrc util.ImageBuffer
--- @param dst util.ImageBuffer
--- @param x int
--- @param y int
--- @param w int
--- @param h int
function opencv.copy(psrc, dst, x, y, w, h) end

--- 
--- @param img util.ImageBuffer
--- @param newWidth int
--- @param newHeight int
--- @return util.ImageBuffer ret0
function opencv.resize(img, newWidth, newHeight) end

--- 
--- @param img util.ImageBuffer
--- @param filePath string
--- @return bool ret0
function opencv.save(img, filePath) end


