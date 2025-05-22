--- @meta
--- 
--- @class ik
ik = {}


--- 
--- @class ik.StateControl: ik.Control, ik.LinearMotorControl
ik.StateControl = {}

--- 
--- @return math.Quaternion ret0
function ik.StateControl:GetTargetOrientation() end

--- 
--- @param arg1 math.Quaternion
function ik.StateControl:SetTargetOrientation(arg1) end


--- 
--- @class ik.AngularJoint: ik.Joint
ik.AngularJoint = {}


--- 
--- @class ik.AngularPlaneControl: ik.Control
ik.AngularPlaneControl = {}

--- 
--- @return vector.Vector ret0
function ik.AngularPlaneControl:GetBoneLocalAxis() end

--- 
--- @return vector.Vector ret0
function ik.AngularPlaneControl:GetPlaneNormal() end

--- 
--- @param arg1 vector.Vector
function ik.AngularPlaneControl:SetBoneLocalAxis(arg1) end

--- 
--- @param arg1 vector.Vector
function ik.AngularPlaneControl:SetPlaneNormal(arg1) end


--- 
--- @class ik.AxisControl: ik.Control
ik.AxisControl = {}

--- 
--- @return vector.Vector ret0
function ik.AxisControl:CalcAnchorPosition() end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:GetAxisA() end

--- 
--- @param arg1 ik.Bone
function ik.AxisControl:SetParentBone(arg1) end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:GetAnchorOffset() end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:CalcWorldAxisB() end

--- 
--- @param arg1 vector.Vector
function ik.AxisControl:SetTargetPosition(arg1) end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:CalcBoneFreeAxis() end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:CalcFreeAxis() end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:GetAxisB() end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:CalcWorldAxisA() end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:GetBoneLocalFreeAxis() end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:GetFreeAxis() end

--- 
--- @param arg1 vector.Vector
function ik.AxisControl:SetAxisA(arg1) end

--- 
--- @return ik.Bone ret0
function ik.AxisControl:GetParentBone() end

--- 
--- @return vector.Vector ret0
function ik.AxisControl:GetTargetPosition() end

--- 
--- @param arg1 vector.Vector
function ik.AxisControl:SetAnchorOffset(arg1) end

--- 
--- @param arg1 vector.Vector
function ik.AxisControl:SetAxisB(arg1) end

--- 
--- @param arg1 vector.Vector
function ik.AxisControl:SetBoneLocalFreeAxis(arg1) end


--- 
--- @class ik.Bone
ik.Bone = {}

--- 
--- @return bool ret0
function ik.Bone:IsPinned() end

--- 
--- @return vector.Vector ret0
function ik.Bone:GetPos() end

--- 
--- @return number ret0
function ik.Bone:GetLength() end

--- 
--- @return number ret0
function ik.Bone:GetMass() end

--- 
--- @return math.Quaternion ret0
function ik.Bone:GetRot() end

--- 
--- @return string ret0
function ik.Bone:GetName() end

--- 
--- @param arg2 ik.Bone
function ik.Bone:__eq(arg2) end

--- 
--- @return math.Transform ret0
function ik.Bone:GetOriginalPose() end

--- 
--- @return number ret0
function ik.Bone:GetRadius() end

--- 
--- @param arg1 string
function ik.Bone:SetName(arg1) end

--- 
--- @param arg1 bool
function ik.Bone:SetPinned(arg1) end

--- 
--- @param arg1 vector.Vector
function ik.Bone:SetPos(arg1) end

--- 
--- @param arg1 math.Quaternion
function ik.Bone:SetRot(arg1) end

--- 
--- @return string ret0
function ik.Bone:__tostring() end


--- 
--- @class ik.BallSocketJoint: ik.Joint
ik.BallSocketJoint = {}

--- 
--- @return vector.Vector ret0
function ik.BallSocketJoint:GetAnchor() end

--- 
--- @return vector.Vector ret0
function ik.BallSocketJoint:GetOffsetA() end

--- 
--- @return vector.Vector ret0
function ik.BallSocketJoint:GetOffsetB() end


--- 
--- @class ik.DistanceJoint: ik.Joint
ik.DistanceJoint = {}


--- 
--- @class ik.IkSolver
ik.IkSolver = {}

--- 
--- @param idx int
--- @param limit number
--- @return ik.IkBallSocketConstraint ret0
function ik.IkSolver:AddBallSocketConstraint(idx, limit) end

--- 
--- @return int ret0
function ik.IkSolver:Size() end

--- 
--- @param arg2 int
--- @param arg3 unknown
--- @return ik.IkConstraint ret0
function ik.IkSolver:AddCustomConstraint(arg2, arg3) end

--- 
--- @param arg1 int
--- @return math.ScaledTransform ret0
function ik.IkSolver:GetGlobalTransform(arg1) end

--- 
--- @param idx int
--- @param axis math.Vector
--- @return ik.IkHingeConstraint ret0
--- @overload fun(idx: int, axis: vector.Vector): ik.IkHingeConstraint
function ik.IkSolver:AddHingeConstraint(idx, axis) end

--- 
--- @param arg1 int
--- @return math.ScaledTransform ret0
function ik.IkSolver:GetLocalTransform(arg1) end

--- 
--- @param arg1 int
function ik.IkSolver:Resize(arg1) end

--- 
--- @param arg1 int
--- @param arg2 math.ScaledTransform
function ik.IkSolver:SetLocalTransform(arg1, arg2) end

--- 
--- @param arg1 math.ScaledTransform
--- @return bool ret0
function ik.IkSolver:Solve(arg1) end


--- 
--- @class ik.Control
ik.Control = {}

--- 
--- @return number ret0
function ik.Control:GetRigidity() end

--- 
--- @return number ret0
function ik.Control:GetMaxForce() end

--- 
--- @return ik.Bone ret0
function ik.Control:GetTargetBone() end

--- 
--- @return string ret0
function ik.Control:__tostring() end

--- 
--- @return enum pragma::ik::ControlType ret0
function ik.Control:GetType() end

--- 
--- @param arg1 number
function ik.Control:SetRigidity(arg1) end

--- 
--- @param arg1 number
function ik.Control:SetMaxForce(arg1) end

--- 
--- @return bool ret0
function ik.Control:IsEnabled() end


--- @enum Type
ik.Control = {
	TYPE_ANGULAR_PLANE = 1,
	TYPE_STATE = 2,
	TYPE_AXIS = 5,
	TYPE_REVOLUTE = 4,
	TYPE_DRAG = 0,
	TYPE_ORIENTED_DRAG = 3,
}

--- 
--- @class ik.CCDIkSolver: ik.IkSolver
--- @overload fun():ik.CCDIkSolver
ik.CCDIkSolver = {}


--- 
--- @class ik.EllipseSwingLimit: ik.Joint
ik.EllipseSwingLimit = {}

--- 
--- @return vector.Vector ret0
function ik.EllipseSwingLimit:GetAxisA() end

--- 
--- @return vector.Vector ret0
function ik.EllipseSwingLimit:GetAxisB() end

--- 
--- @return number ret0
function ik.EllipseSwingLimit:GetMaxAngleX() end

--- 
--- @return vector.Vector ret0
function ik.EllipseSwingLimit:GetOriginalAxisB() end

--- 
--- @return number ret0
function ik.EllipseSwingLimit:GetMaxAngleY() end

--- 
--- @return vector.Vector ret0
function ik.EllipseSwingLimit:GetXAxis() end

--- 
--- @return vector.Vector ret0
function ik.EllipseSwingLimit:GetOriginalAxisA() end


--- 
--- @class ik.DragControl: ik.Control, ik.LinearMotorControl
ik.DragControl = {}


--- 
--- @class ik.FABRIkSolver: ik.IkSolver
--- @overload fun():ik.FABRIkSolver
ik.FABRIkSolver = {}


--- 
--- @class ik.LinearMotorControl
ik.LinearMotorControl = {}

--- 
--- @return vector.Vector ret0
function ik.LinearMotorControl:GetOffset() end

--- 
--- @return vector.Vector ret0
function ik.LinearMotorControl:GetTargetPosition() end

--- 
--- @param arg1 vector.Vector
function ik.LinearMotorControl:SetOffset(arg1) end

--- 
--- @param arg1 vector.Vector
function ik.LinearMotorControl:SetTargetPosition(arg1) end

--- 
--- @return string ret0
function ik.LinearMotorControl:__tostring() end


--- 
--- @class ik.IkBallSocketConstraint: ik.IkConstraint
ik.IkBallSocketConstraint = {}

--- 
--- @return number ret0
function ik.IkBallSocketConstraint:GetLimit() end

--- 
--- @param arg1 number
function ik.IkBallSocketConstraint:SetLimit(arg1) end


--- 
--- @class ik.IkConstraint
ik.IkConstraint = {}

--- 
--- @return int ret0
function ik.IkConstraint:GetJointIndex() end


--- 
--- @class ik.IkHingeConstraint: ik.IkConstraint
ik.IkHingeConstraint = {}

--- 
function ik.IkHingeConstraint:ClearLimits() end

--- 
--- @return math.Vector2 ret0
function ik.IkHingeConstraint:GetLimits() end

--- 
--- @param arg1 math.Vector2
function ik.IkHingeConstraint:SetLimits(arg1) end


--- 
--- @class ik.Joint
ik.Joint = {}

--- 
--- @return number ret0
function ik.Joint:GetRigidity() end

--- 
--- @return ik.Bone ret0
function ik.Joint:GetConnectionA() end

--- 
--- @return string ret0
function ik.Joint:__tostring() end

--- 
--- @return enum pragma::ik::JointType ret0
function ik.Joint:GetType() end

--- 
--- @return ik.Bone ret0
function ik.Joint:GetConnectionB() end

--- 
--- @param arg1 number
function ik.Joint:SetRigidity(arg1) end


--- @enum Type
ik.Joint = {
	TYPE_ANGULAR_JOINT = 2,
	TYPE_BALL_SOCKET_JOINT = 1,
	TYPE_INVALID = 255,
	TYPE_ELLIPSE_SWING_LIMIT = 6,
	TYPE_COUNT = 11,
	TYPE_DISTANCE_JOINT = 0,
	TYPE_LINEAR_AXIS_LIMIT = 7,
	TYPE_POINT_ON_LINE_JOINT = 3,
	TYPE_REVOLUTE_JOINT = 4,
	TYPE_SWING_LIMIT = 5,
	TYPE_SWIVEL_HINGE_JOINT = 10,
}

--- @enum TypeTwist
ik.Joint = {
	TYPE_TWIST_JOINT = 8,
	TYPE_TWIST_LIMIT = 9,
}

--- 
--- @class ik.LinearAxisLimit: ik.Joint
ik.LinearAxisLimit = {}

--- 
--- @return vector.Vector ret0
function ik.LinearAxisLimit:GetLineAnchor() end

--- 
--- @return vector.Vector ret0
function ik.LinearAxisLimit:GetAnchorB() end

--- 
--- @return vector.Vector ret0
function ik.LinearAxisLimit:GetLineDirection() end

--- 
--- @return number ret0
function ik.LinearAxisLimit:GetMaximumDistance() end

--- 
--- @return number ret0
function ik.LinearAxisLimit:GetMinimumDistance() end


--- 
--- @class ik.OrientedDragControl: ik.DragControl
ik.OrientedDragControl = {}


--- 
--- @class ik.PointOnLineJoint: ik.Joint
ik.PointOnLineJoint = {}

--- 
--- @return vector.Vector ret0
function ik.PointOnLineJoint:GetLineAnchor() end

--- 
--- @return vector.Vector ret0
function ik.PointOnLineJoint:GetAnchorB() end

--- 
--- @return vector.Vector ret0
function ik.PointOnLineJoint:GetLineDirection() end


--- 
--- @class ik.SwingLimit: ik.Joint
ik.SwingLimit = {}

--- 
--- @return vector.Vector ret0
function ik.SwingLimit:GetAxisA() end

--- 
--- @return vector.Vector ret0
function ik.SwingLimit:GetAxisB() end

--- 
--- @return number ret0
function ik.SwingLimit:GetMaxAngle() end


--- 
--- @class ik.RevoluteControl: ik.Control
ik.RevoluteControl = {}


--- 
--- @class ik.RevoluteJoint: ik.Joint
ik.RevoluteJoint = {}

--- 
--- @return vector.Vector ret0
function ik.RevoluteJoint:GetFreeAxis() end


--- 
--- @class ik.Solver
--- @overload fun():ik.Solver
--- @overload fun(arg1: int):ik.Solver
--- @overload fun(arg1: int, arg2: int):ik.Solver
ik.Solver = {}

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @return ik.AngularJoint ret0
function ik.Solver:AddAngularJoint(arg1, arg2) end

--- 
--- @param arg1 ik.Bone
--- @return ik.AngularPlaneControl ret0
function ik.Solver:AddAngularPlaneControl(arg1) end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @return ik.DistanceJoint ret0
function ik.Solver:AddDistanceJoint(arg1, arg2) end

--- 
--- @param arg1 int
function ik.Solver:SetVelocitySubIterationCount(arg1) end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @param arg3 vector.Vector
--- @return ik.BallSocketJoint ret0
function ik.Solver:AddBallSocketJoint(arg1, arg2, arg3) end

--- 
--- @param arg1 string
--- @param arg2 vector.Vector
--- @param arg3 math.Quaternion
--- @param arg4 number
--- @param arg5 number
--- @return ik.Bone ret0_1
--- @return int ret0_2
function ik.Solver:AddBone(arg1, arg2, arg3, arg4, arg5) end

--- 
--- @param arg1 ik.Bone
--- @return ik.DragControl ret0
function ik.Solver:AddDragControl(arg1) end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @param arg3 vector.Vector
--- @param arg4 vector.Vector
--- @param arg5 vector.Vector
--- @param arg6 number
--- @param arg7 number
--- @return ik.LinearAxisLimit ret0
function ik.Solver:AddLinearAxisLimit(arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- 
--- @return int ret0
function ik.Solver:GetControlCount() end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @param arg3 vector.Vector
--- @param arg4 vector.Vector
--- @param arg5 vector.Vector
--- @param arg6 vector.Vector
--- @param arg7 number
--- @param arg8 number
--- @return ik.EllipseSwingLimit ret0
function ik.Solver:AddEllipseSwingLimit(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @param arg3 vector.Vector
--- @param arg4 vector.Vector
--- @param arg5 vector.Vector
--- @return ik.PointOnLineJoint ret0
function ik.Solver:AddPointOnLineJoint(arg1, arg2, arg3, arg4, arg5) end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @param arg3 vector.Vector
--- @return ik.RevoluteJoint ret0
function ik.Solver:AddRevoluteJoint(arg1, arg2, arg3) end

--- 
--- @param arg1 int
function ik.Solver:SetControlIterationCount(arg1) end

--- 
--- @param arg1 ik.Bone
--- @return ik.StateControl ret0
function ik.Solver:AddStateControl(arg1) end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @param arg3 vector.Vector
--- @param arg4 vector.Vector
--- @param arg5 number
--- @return ik.SwingLimit ret0
function ik.Solver:AddSwingLimit(arg1, arg2, arg3, arg4, arg5) end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @param arg3 vector.Vector
--- @param arg4 vector.Vector
--- @return ik.SwivelHingeJoint ret0
function ik.Solver:AddSwivelHingeJoint(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @param arg3 vector.Vector
--- @param arg4 vector.Vector
--- @return ik.TwistJoint ret0
function ik.Solver:AddTwistJoint(arg1, arg2, arg3, arg4) end

--- 
--- @param arg1 ik.Bone
--- @param arg2 ik.Bone
--- @param arg3 vector.Vector
--- @param arg4 vector.Vector
--- @param arg5 number
--- @return ik.TwistLimit ret0
function ik.Solver:AddTwistLimit(arg1, arg2, arg3, arg4, arg5) end

--- 
function ik.Solver:DebugPrint() end

--- 
--- @param arg1 int
--- @return ik.Bone ret0
function ik.Solver:GetBone(arg1) end

--- 
--- @return int ret0
function ik.Solver:GetBoneCount() end

--- 
--- @param arg2 int
--- @return any ret0
function ik.Solver:GetControl(arg2) end

--- 
--- @return int ret0
function ik.Solver:GetControlIterationCount() end

--- 
--- @return int ret0
function ik.Solver:GetFixerIterationCount() end

--- 
--- @param arg2 int
--- @return ik.Joint ret0
function ik.Solver:GetJoint(arg2) end

--- 
--- @return int ret0
function ik.Solver:GetJointCount() end

--- 
--- @return number ret0
function ik.Solver:GetTimeStepDuration() end

--- 
--- @param arg1 number
function ik.Solver:SetTimeStepDuration(arg1) end

--- 
--- @return int ret0
function ik.Solver:GetVelocitySubIterationCount() end

--- 
--- @param arg1 ik.Control
function ik.Solver:RemoveControl(arg1) end

--- 
--- @return string ret0
function ik.Solver:__tostring() end

--- 
--- @param arg1 int
function ik.Solver:SetFixerIterationCount(arg1) end

--- 
function ik.Solver:Solve() end


--- 
--- @class ik.SwivelHingeJoint: ik.Joint
ik.SwivelHingeJoint = {}

--- 
--- @return vector.Vector ret0
function ik.SwivelHingeJoint:GetWorldHingeAxis() end

--- 
--- @return vector.Vector ret0
function ik.SwivelHingeJoint:GetWorldTwistAxis() end


--- 
--- @class ik.TwistJoint: ik.Joint
ik.TwistJoint = {}

--- 
--- @return vector.Vector ret0
function ik.TwistJoint:GetAxisA() end

--- 
--- @return vector.Vector ret0
function ik.TwistJoint:GetAxisB() end


--- 
--- @class ik.TwistLimit: ik.Joint
ik.TwistLimit = {}

--- 
--- @return vector.Vector ret0
function ik.TwistLimit:GetMeasurementAxisA() end

--- 
function ik.TwistLimit:ComputeMeasurementAxes() end

--- 
function ik.TwistLimit:ComputeMeasurementAxisB() end

--- 
--- @return vector.Vector ret0
function ik.TwistLimit:GetAxisA() end

--- 
--- @return vector.Vector ret0
function ik.TwistLimit:GetAxisB() end

--- 
--- @return number ret0
function ik.TwistLimit:GetMaxAngle() end

--- 
--- @return vector.Vector ret0
function ik.TwistLimit:GetMeasurementAxisB() end

--- 
--- @return vector.Vector ret0
function ik.TwistLimit:GetOriginalAxisA() end

--- 
--- @return vector.Vector ret0
function ik.TwistLimit:GetOriginalAxisB() end

--- 
--- @param arg1 vector.Vector
function ik.TwistLimit:SetMeasurementAxisA(arg1) end

--- 
--- @param arg1 vector.Vector
function ik.TwistLimit:SetMeasurementAxisB(arg1) end


