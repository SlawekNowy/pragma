--- @meta
--- 
--- @class nav
nav = {}

--- 
function nav.generate() end

--- 
--- @return nav.Mesh ret0
function nav.load() end


--- 
--- @class nav.Config
--- @field maxSimplificationError  
--- @field cellHeight  
--- @field cellSize  
--- @field maxEdgeLength  
--- @field characterHeight  
--- @field maxClimbHeight  
--- @field minRegionSize  
--- @field mergeRegionSize  
--- @field sampleDetailDist  
--- @field sampleDetailMaxError  
--- @field samplePartitionType  
--- @field vertsPerPoly  
--- @field walkableRadius  
--- @field walkableSlopeAngle  
--- @overload fun():nav.Config
--- @overload fun(arg1: number, arg2: number, arg3: number, arg4: number):nav.Config
nav.Config = {}


--- @enum PartitionType
nav.Config = {
	PARTITION_TYPE_LAYERS = 2,
	PARTITION_TYPE_MONOTONE = 1,
	PARTITION_TYPE_WATERSHED = 0,
}

--- 
--- @class nav.Mesh
nav.Mesh = {}

--- 
--- @return nav.Config ret0
function nav.Mesh:GetConfig() end

--- 
--- @param fname string
function nav.Mesh:Save(fname) end

--- 
--- @param start math.Vector
--- @param end math.Vector
--- @overload fun(start: vector.Vector, end_: vector.Vector): 
function nav.Mesh:RayCast(start, end_) end


