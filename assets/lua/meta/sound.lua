--- @meta
--- 
--- @class sound
sound = {}


--- 
--- @class sound.Effect
sound.Effect = {}

--- 
--- @param props sound.Effect.EqualizerProperties
--- @overload fun(props: sound.Effect.CompressorProperties): 
--- @overload fun(props: sound.Effect.AutoWahProperties): 
--- @overload fun(props: sound.Effect.RingModulatorProperties): 
--- @overload fun(props: sound.Effect.PitchShifterProperties): 
--- @overload fun(props: sound.Effect.VocalMorpherProperties): 
--- @overload fun(props: sound.Effect.FrequencyShifterProperties): 
--- @overload fun(props: sound.Effect.FlangerProperties): 
--- @overload fun(props: sound.Effect.EchoProperties): 
--- @overload fun(props: sound.Effect.DistortionProperties): 
--- @overload fun(props: sound.Effect.ChorusProperties): 
--- @overload fun(props: sound.Effect.ReverbProperties): 
function sound.Effect:SetProperties(props) end


--- 
--- @class sound.Effect.FlangerProperties
--- @field phase  
--- @field delay  
--- @field waveform  
--- @field feedback  
--- @field depth  
--- @field rate  
--- @overload fun():sound.Effect.FlangerProperties
sound.Effect.FlangerProperties = {}


--- 
--- @class sound.Effect.DistortionProperties
--- @field edge  
--- @field eqBandwidth  
--- @field gain  
--- @field eqCenter  
--- @field lowpassCutoff  
--- @overload fun():sound.Effect.DistortionProperties
sound.Effect.DistortionProperties = {}


--- 
--- @class sound.Effect.AutoWahProperties
--- @field attackTime  
--- @field peakGain  
--- @field resonance  
--- @field releaseTime  
--- @overload fun():sound.Effect.AutoWahProperties
sound.Effect.AutoWahProperties = {}


--- 
--- @class sound.Effect.ChorusProperties
--- @field phase  
--- @field delay  
--- @field waveform  
--- @field feedback  
--- @field depth  
--- @field rate  
--- @overload fun():sound.Effect.ChorusProperties
sound.Effect.ChorusProperties = {}


--- 
--- @class sound.Effect.EchoProperties
--- @field damping  
--- @field delay  
--- @field lrDelay  
--- @field feedback  
--- @field spread  
--- @overload fun():sound.Effect.EchoProperties
sound.Effect.EchoProperties = {}


--- 
--- @class sound.Effect.CompressorProperties
--- @field onOff  
--- @overload fun():sound.Effect.CompressorProperties
sound.Effect.CompressorProperties = {}


--- 
--- @class sound.Effect.EqualizerProperties
--- @field highCutoff  
--- @field mid1Width  
--- @field highGain  
--- @field mid2Center  
--- @field lowCutoff  
--- @field lowGain  
--- @field mid1Center  
--- @field mid1Gain  
--- @field mid2Gain  
--- @field mid2Width  
--- @overload fun():sound.Effect.EqualizerProperties
sound.Effect.EqualizerProperties = {}


--- 
--- @class sound.Effect.FrequencyShifterProperties
--- @field leftDirection  
--- @field frequency  
--- @field rightDirection  
--- @overload fun():sound.Effect.FrequencyShifterProperties
sound.Effect.FrequencyShifterProperties = {}


--- 
--- @class sound.Effect.PitchShifterProperties
--- @field coarseTune  
--- @field fineTune  
--- @overload fun():sound.Effect.PitchShifterProperties
sound.Effect.PitchShifterProperties = {}


--- 
--- @class sound.Effect.ReverbProperties
--- @field density  
--- @field airAbsorptionGainHF  
--- @field decayHFRatio  
--- @field decayHFLimit  
--- @field decayLFRatio  
--- @field modulationDepth  
--- @field diffusion  
--- @field decayTime  
--- @field echoDepth  
--- @field echoTime  
--- @field gain  
--- @field gainHF  
--- @field gainLF  
--- @field hfReference  
--- @field reflectionsPan  
--- @field lateReverbDelay  
--- @field lateReverbGain  
--- @field lateReverbPan  
--- @field lfReference  
--- @field modulationTime  
--- @field reflectionsDelay  
--- @field reflectionsGain  
--- @field roomRolloffFactor  
--- @overload fun():sound.Effect.ReverbProperties
sound.Effect.ReverbProperties = {}


--- 
--- @class sound.Effect.RingModulatorProperties
--- @field frequency  
--- @field highpassCutoff  
--- @field waveform  
--- @overload fun():sound.Effect.RingModulatorProperties
sound.Effect.RingModulatorProperties = {}


--- 
--- @class sound.Effect.VocalMorpherProperties
--- @field phonemeACoarseTuning  
--- @field phonemeA  
--- @field phonemeBCoarseTuning  
--- @field phonemeB  
--- @field rate  
--- @field waveform  
--- @overload fun():sound.Effect.VocalMorpherProperties
sound.Effect.VocalMorpherProperties = {}


--- 
--- @class sound.Source
sound.Source = {}

--- 
--- @return number ret0_1
--- @return number ret0_2
function sound.Source:GetGainRange() end

--- 
--- @return bool ret0
function sound.Source:GetSendGainAuto() end

--- 
--- @return number ret0_1
--- @return number ret0_2
function sound.Source:GetDistanceRange() end

--- 
--- @param arg1 number
function sound.Source:FadeOut(arg1) end

--- 
--- @param name string
--- @param gain number
--- @return bool ret0
--- @overload fun(name: string, gain: number, gainHF: number, gainLF: number): bool
function sound.Source:AddEffect(name, gain) end

--- 
--- @param arg1 enum ALSoundType
function sound.Source:AddType(arg1) end

--- 
function sound.Source:ClearRange() end

--- 
--- @return number ret0
function sound.Source:GetAirAbsorptionFactor() end

--- 
--- @return number ret0_1
--- @return number ret0_2
function sound.Source:GetRolloffFactors() end

--- 
--- @param arg2 unknown
--- @return util.Callback ret0
function sound.Source:CallOnStateChanged(arg2) end

--- 
--- @return bool ret0_1
--- @return bool ret0_2
--- @return bool ret0_3
function sound.Source:GetGainAuto() end

--- 
--- @return number ret0_1
--- @return number ret0_2
function sound.Source:GetConeAngles() end

--- 
--- @return math.Vector ret0
function sound.Source:GetDirection() end

--- 
--- @param arg1 number
function sound.Source:FadeIn(arg1) end

--- 
--- @return bool ret0
function sound.Source:HasRange() end

--- 
--- @return number ret0
function sound.Source:GetMaxDistance() end

--- 
--- @return number ret0_1
--- @return number ret0_2
--- @return number ret0_3
function sound.Source:GetDirectFilter() end

--- 
--- @param arg1 number
function sound.Source:SetMaxGain(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetMaxDistance(arg1) end

--- 
--- @param arg1 number
--- @param arg2 number
function sound.Source:SetConeAngles(arg1, arg2) end

--- 
--- @return bool ret0
function sound.Source:GetDirectGainHFAuto() end

--- 
--- @return number ret0
function sound.Source:GetDopplerFactor() end

--- 
function sound.Source:Play() end

--- 
--- @return number ret0
function sound.Source:GetDuration() end

--- 
--- @return number ret0
function sound.Source:GetFadeInDuration() end

--- 
--- @return bool ret0
function sound.Source:GetSendGainHFAuto() end

--- 
--- @return number ret0
function sound.Source:GetFadeOutDuration() end

--- 
--- @return math.Vector ret0
function sound.Source:GetVelocity() end

--- 
--- @return number ret0
function sound.Source:GetOuterConeGainHF() end

--- 
--- @param arg1 number
function sound.Source:SetOuterConeAngle(arg1) end

--- 
--- @return number ret0
function sound.Source:GetGain() end

--- 
--- @return number ret0
function sound.Source:GetLeftStereoAngle() end

--- 
--- @return number ret0
function sound.Source:GetInnerConeAngle() end

--- 
--- @param arg1 math.Vector
--- @return number ret0
function sound.Source:GetIntensity(arg1) end

--- 
--- @return number ret0
function sound.Source:GetMaxAudibleDistance() end

--- 
--- @return enum ALState ret0
function sound.Source:GetState() end

--- 
--- @return number ret0
function sound.Source:GetMaxGain() end

--- 
--- @return number ret0
function sound.Source:GetMinGain() end

--- 
--- @param arg1 math.Vector
function sound.Source:SetDirection(arg1) end

--- 
--- @return number ret0_1
--- @return number ret0_2
function sound.Source:GetRangeOffsets() end

--- 
--- @return number ret0
function sound.Source:GetOffset() end

--- 
--- @return math.Vector ret0_1
--- @return math.Vector ret0_2
function sound.Source:GetOrientation() end

--- 
--- @return number ret0
function sound.Source:GetOuterConeAngle() end

--- 
--- @return number ret0
function sound.Source:GetOuterConeGain() end

--- 
--- @return number ret0
function sound.Source:GetRoomRolloffFactor() end

--- 
--- @return number ret0_1
--- @return number ret0_2
function sound.Source:GetOuterConeGains() end

--- 
--- @return int ret0
function sound.Source:GetPriority() end

--- 
--- @return table ret0
function sound.Source:GetPhonemeData() end

--- 
--- @return number ret0
function sound.Source:GetPitch() end

--- 
--- @return math.Vector ret0
function sound.Source:GetPos() end

--- 
--- @param gain number
--- @overload fun(gain: number, gainHF: number, gainLF: number): 
function sound.Source:SetDirectFilter(gain) end

--- 
--- @param arg1 string
function sound.Source:RemoveEffect(arg1) end

--- 
--- @return number ret0_1
--- @return number ret0_2
function sound.Source:GetRange() end

--- 
--- @return enum ALSoundType ret0
function sound.Source:GetType() end

--- 
--- @return number ret0
function sound.Source:GetReferenceDistance() end

--- 
--- @return number ret0
function sound.Source:GetRightStereoAngle() end

--- 
--- @return bool ret0
function sound.Source:IsStopped() end

--- 
--- @return number ret0
function sound.Source:GetRolloffFactor() end

--- 
--- @return ents.BaseEntityBase ret0
function sound.Source:GetSource() end

--- 
--- @return number ret0_1
--- @return number ret0_2
function sound.Source:GetStereoAngles() end

--- 
--- @return bool ret0
function sound.Source:IsLooping() end

--- 
--- @return bool ret0
function sound.Source:IsPaused() end

--- 
--- @return bool ret0
function sound.Source:IsPlaying() end

--- 
--- @return bool ret0
function sound.Source:IsRelative() end

--- 
function sound.Source:Pause() end

--- 
function sound.Source:Rewind() end

--- 
--- @param arg1 number
function sound.Source:SetAirAbsorptionFactor(arg1) end

--- 
--- @param arg1 number
--- @param arg2 number
function sound.Source:SetDistanceRange(arg1, arg2) end

--- 
--- @param arg1 number
function sound.Source:SetDopplerFactor(arg1) end

--- 
--- @param arg1 string
--- @param arg2 number
function sound.Source:SetEffectGain(arg1, arg2) end

--- 
--- @param name string
--- @param gain number
--- @return bool ret0
--- @overload fun(name: string, gain: number, gainHF: number, gainLF: number): bool
function sound.Source:SetEffectParameters(name, gain) end

--- 
--- @param arg1 number
function sound.Source:SetFadeInDuration(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetFadeOutDuration(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetGain(arg1) end

--- 
--- @param arg1 bool
--- @param arg2 bool
--- @param arg3 bool
function sound.Source:SetGainAuto(arg1, arg2, arg3) end

--- 
--- @param arg1 number
--- @param arg2 number
function sound.Source:SetGainRange(arg1, arg2) end

--- 
--- @param arg1 number
function sound.Source:SetInnerConeAngle(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetLeftStereoAngle(arg1) end

--- 
--- @param arg1 number
--- @param arg2 number
function sound.Source:SetOuterConeGains(arg1, arg2) end

--- 
--- @param arg1 bool
function sound.Source:SetLooping(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetMinGain(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetOffset(arg1) end

--- 
--- @param arg1 math.Vector
--- @param arg2 math.Vector
function sound.Source:SetOrientation(arg1, arg2) end

--- 
--- @param arg1 number
function sound.Source:SetOuterConeGain(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetOuterConeGainHF(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetPitch(arg1) end

--- 
--- @param arg1 math.Vector
function sound.Source:SetPos(arg1) end

--- 
--- @param arg1 int
function sound.Source:SetPriority(arg1) end

--- 
--- @param arg1 number
--- @param arg2 number
function sound.Source:SetRange(arg1, arg2) end

--- 
--- @param arg1 number
function sound.Source:SetReferenceDistance(arg1) end

--- 
--- @param arg1 bool
function sound.Source:SetRelative(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetRightStereoAngle(arg1) end

--- 
--- @param arg1 number
function sound.Source:SetRolloffFactor(arg1) end

--- 
--- @param arg1 number
--- @param arg2 number
function sound.Source:SetRolloffFactors(arg1, arg2) end

--- 
--- @param arg1 number
function sound.Source:SetRoomRolloffFactor(arg1) end

--- 
--- @overload fun(arg1: ents.BaseEntityBase): 
function sound.Source:SetSource() end

--- 
--- @param arg1 number
--- @param arg2 number
function sound.Source:SetStereoAngles(arg1, arg2) end

--- 
--- @param arg1 enum ALSoundType
function sound.Source:SetType(arg1) end

--- 
--- @param arg1 math.Vector
function sound.Source:SetVelocity(arg1) end

--- 
function sound.Source:Stop() end

--- 
function sound.Source:__tostring() end


