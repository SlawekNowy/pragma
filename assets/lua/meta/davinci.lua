--- @meta
--- 
--- @class davinci
davinci = {}

--- 
--- @param nw class NetworkState
--- @return bool ret0
function davinci.is_installed(nw) end

--- 
--- @param nw class NetworkState
--- @param timelineXmlPath string
--- @return enum davinci::DaVinciErrorCode ret0
function davinci.generate_project(nw, timelineXmlPath) end

--- 
--- @param err enum davinci::DaVinciErrorCode
--- @return string ret0
function davinci.result_to_string(err) end


