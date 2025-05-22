--- @meta
--- 
--- @class locale
locale = {}

--- 
--- @param lan string
function locale.change_language(lan) end

--- 
--- @return map ret0
function locale.get_texts() end

--- 
--- @param id string
--- @return string ret0
function locale.get_raw_text(id) end

--- 
function locale.clear() end

--- 
--- @return string ret0
function locale.get_language() end

--- 
--- @return string ret0
function locale.get_used_characters() end

--- 
function locale.load_all() end

--- 
--- @param fileName string
--- @return bool ret0
function locale.load(fileName) end

--- 
--- @param identifier string
--- @param lan string
--- @param category string
--- @param text string
--- @return bool ret0
function locale.localize(identifier, lan, category, text) end

--- 
--- @param fileName string
--- @return map ret0
--- @overload fun(fileName: string, lan: string): map
function locale.parse(fileName) end

--- 
--- @param id string
--- @param text string
function locale.set_text(id, text) end


