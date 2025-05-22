--- @meta
--- 
--- @class curl
curl = {}

--- 
--- @param url string
--- @param requestData curl.RequestData
--- @return util.ParallelJobData ret0
function curl.request(url, requestData) end


--- 
--- @class curl.RequestData
--- @field headers table 
--- @field postData string 
--- @field timeoutMs int 
--- @overload fun():curl.RequestData
curl.RequestData = {}

--- 
--- @param postValues map
function curl.RequestData:SetPostKeyValues(postValues) end

--- 
--- @return string ret0
function curl.RequestData:__tostring() end


--- 
--- @class curl.Instance
curl.Instance = {}

--- 
--- @param url string
--- @overload fun(url: string, timeout: int): 
function curl.Instance:AddRequest(url) end

--- 
--- @return bool ret0
--- @overload fun(): bool
function curl.Instance:CancelDownload() end

--- 
function curl.Instance:StartDownload() end


