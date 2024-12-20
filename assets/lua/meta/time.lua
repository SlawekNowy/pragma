--- @meta
--- 
--- @class time
time = {}

--- 
--- @param duration int
--- @param srcType enum util::DurationType
--- @param dstType enum util::DurationType
--- @return int ret0
function time.convert_duration(duration, srcType, dstType) end

--- 
--- @return number ret0
function time.server_time() end

--- 
--- @param delay number
--- @param fc any
--- @return time.Timer ret0
--- @overload fun(delay: number, fc: any, timerType: enum TimerType): time.Timer
function time.create_simple_timer(delay, fc) end

--- 
--- @return number ret0
function time.real_time() end

--- 
--- @return number ret0
function time.cur_time() end

--- 
--- @param delay number
--- @param repetitions int
--- @param fc any
--- @return time.Timer ret0
--- @overload fun(delay: number, repetitions: int, fc: any, timerType: enum TimerType): time.Timer
function time.create_timer(delay, repetitions, fc) end

--- 
--- @return int ret0
function time.time_since_epoch() end

--- 
--- @return number ret0
function time.delta_time() end

--- 
--- @return number ret0
function time.frame_time() end


--- 
--- @class time.Timer
time.Timer = {}

--- 
function time.Timer:IsValid() end

--- 
function time.Timer:Call() end

--- 
function time.Timer:GetInterval() end

--- 
function time.Timer:IsRunning() end

--- 
function time.Timer:GetRepetitionsLeft() end

--- 
function time.Timer:IsPaused() end

--- 
function time.Timer:GetTimeLeft() end

--- 
function time.Timer:Pause() end

--- 
function time.Timer:Remove() end

--- 
--- @param o any
function time.Timer:SetCall(o) end

--- 
--- @param time number
function time.Timer:SetInterval(time) end

--- 
--- @param reps int
function time.Timer:SetRepetitions(reps) end

--- 
function time.Timer:Start() end

--- 
function time.Timer:Stop() end


