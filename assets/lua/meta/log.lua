--- @meta
--- 
--- @class log
log = {}

--- 
function log.flush_loggers() end

--- 
--- @return enum util::LogSeverity ret0
function log.get_console_log_level() end

--- 
--- @return enum util::LogSeverity ret0
function log.get_file_log_level() end

--- 
--- @param severity enum util::LogSeverity
--- @return bool ret0
function log.is_log_level_enabled(severity) end

--- 
--- @param level enum util::LogSeverity
function log.set_console_log_level(level) end

--- 
--- @param level enum util::LogSeverity
function log.set_file_log_level(level) end


--- 
--- @class log.Logger
log.Logger = {}


