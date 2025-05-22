--- @meta
--- 
--- @class openvr
openvr = {}

--- 
--- @param sys class vr::IVRSystem
--- @return table ret0
function openvr.get_controller_states(sys) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_display_gc_prescale(instance) end

--- 
--- @param arg0 class openvr::Instance
function openvr.clear_last_submitted_frame(arg0) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_current_universe_id(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.block_server_shutdown(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 bool
function openvr.force_interleaved_reprojection_on(arg0, arg1) end

--- 
function openvr.close() end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.can_unify_coordinate_system_with_hmd(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_display_gc_image(instance) end

--- 
--- @param buttonId enum vr::EVRButtonId
--- @return string ret0
function openvr.button_id_to_string(buttonId) end

--- 
--- @param arg0 class openvr::Instance
--- @return bool ret0
function openvr.can_render_scene(arg0) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_audio_firmware_version(instance) end

--- 
--- @param arg0 class openvr::Instance
function openvr.compositor_go_to_back(arg0) end

--- 
--- @param arg0 class openvr::Instance
function openvr.clear_skybox_override(arg0) end

--- 
--- @param arg0 class openvr::Instance
function openvr.compositor_bring_to_front(arg0) end

--- 
--- @param arg0 class openvr::Instance
function openvr.compositor_dump_images(arg0) end

--- 
--- @param err enum vr::EVRCompositorError
--- @return string ret0
function openvr.compositor_error_to_string(err) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_display_mc_image_right(instance) end

--- 
--- @param sys class vr::IVRSystem
--- @param eye enum vr::EVREye
--- @param fu number
--- @param fv number
--- @return class std::variant<bool,class std::tuple<bool,struct glm::vec<2,float,0>,struct glm::vec<2,float,0>,struct glm::vec<2,float,0> > > ret0
function openvr.compute_distortion(sys, eye, fu, fv) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_display_gc_scale(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_render_model_name(instance) end

--- 
--- @param sys class vr::IVRSystem
--- @return number ret0
function openvr.compute_seconds_to_photons(sys) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_lens_center_right_u(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.firmware_manual_update(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.contains_proximity_sensor(instance) end

--- 
--- @param controllerAxisType enum vr::EVRControllerAxisType
--- @return string ret0
function openvr.controller_axis_type_to_string(controllerAxisType) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.device_can_power_off(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.device_is_charging(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_firmware_programming_target(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.device_is_wireless(instance) end

--- 
--- @return bool ret0
function openvr.is_hmd_present() end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.device_provides_battery_status(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_display_mc_type(instance) end

--- 
--- @param arg0 class openvr::Instance
function openvr.force_reconnect_process(arg0) end

--- 
--- @param evType enum vr::EVREventType
--- @return string ret0
function openvr.event_type_to_string(evType) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 number
--- @param arg2 bool
function openvr.fade_grid(arg0, arg1, arg2) end

--- 
--- @param origin enum vr::ETrackingUniverseOrigin
function openvr.reset_zero_pose(origin) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 util.Color
--- @param arg2 number
--- @param arg3 bool
--- @overload fun(arg0: class openvr::Instance, arg1: util.Color, arg2: number, arg3: bool): 
function openvr.fade_to_color(arg0, arg1, arg2, arg3) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_display_hardware_version(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.firmware_update_available(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_all_wireless_dongle_descriptions(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_axis1_type(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_attached_device_id(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_axis0_type(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_axis2_type(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @return bool ret0
function openvr.is_fullscreen(arg0) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_axis3_type(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_axis4_type(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_camera_compatibility_mode(instance) end

--- 
--- @param sys class vr::IVRSystem
--- @return math.Mat3x4 ret0
function openvr.get_seated_zero_pose_to_standing_absolute_tracking_pose(sys) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_camera_firmware_description(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_camera_firmware_version(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @return struct vr::Compositor_CumulativeStats ret0
function openvr.get_cumulative_stats(arg0) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,struct glm::mat<3,4,float,0> > > ret0
function openvr.get_camera_to_head_transform(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_connected_wireless_dongle(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_display_firmware_version(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 int
--- @return enum vr::ETrackedControllerRole ret0
function openvr.get_controller_role(arg0, arg1) end

--- 
--- @param arg0 class openvr::Instance
function openvr.hide_mirror_window(arg0) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_display_mc_scale(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_display_gc_type(instance) end

--- 
--- @param sys class vr::IVRSystem
--- @param devIndex int
--- @return openvr.ControllerState ret0
function openvr.get_controller_state(sys, devIndex) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_display_gc_offset(instance) end

--- 
--- @param err enum vr::ETrackedPropertyError
--- @return string ret0
function openvr.property_error_to_string(err) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_device_battery_percentage(instance) end

--- 
--- @param sys class vr::IVRSystem
--- @param origin enum vr::ETrackingUniverseOrigin
--- @param devIndex int
--- @return openvr.ControllerState ret0_1
--- @return openvr.TrackedDevicePose ret0_2
function openvr.get_controller_state_with_pose(sys, origin, devIndex) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_device_class(instance) end

--- 
--- @param sys class vr::IVRSystem
--- @param origin enum vr::ETrackingUniverseOrigin
--- @param predictedSecondsToPhotonsFromNow number
--- @return table ret0
function openvr.get_device_to_absolute_tracking_pose(sys, origin, predictedSecondsToPhotonsFromNow) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_display_bootloader_version(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_display_fpga_version(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_display_frequency(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_tracking_range_maximum_meters(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_display_gc_black_clamp(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_display_mc_image_left(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @return bool ret0
function openvr.is_mirror_window_visible(arg0) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_display_mc_offset(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_dongle_version(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_lens_center_right_v(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_edid_product_id(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,int> > ret0
function openvr.get_edid_vendor_id(instance) end

--- 
--- @param eyeId enum vr::EVREye
--- @return openvr.Eye ret0
function openvr.get_eye(eyeId) end

--- 
--- @param sys class vr::IVRSystem
--- @param eEye enum vr::EVREye
--- @param cam ents.CameraComponent
--- @return math.Mat4 ret0
function openvr.get_eye_to_head_transform(sys, eEye, cam) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_field_of_view_bottom_degrees(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 int
--- @return string ret0
function openvr.get_tracked_device_serial_number(arg0, arg1) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_field_of_view_left_degrees(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_field_of_view_right_degrees(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_field_of_view_top_degrees(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_firmware_manual_update_url(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_firmware_version(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_fpga_version(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @return number ret0
function openvr.get_frame_time_remaining(arg0) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_hardware_revision(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_hardware_revision_number(instance) end

--- 
--- @return math.Transform ret0
function openvr.get_hmd_pose() end

--- 
--- @param arg0 class openvr::Instance
--- @return math.Mat4 ret0
function openvr.get_hmd_pose_matrix(arg0) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 int
--- @return math.Transform ret0
function openvr.get_inverse_device_zero_pose(arg0, arg1) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_lens_center_left_u(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,struct glm::vec<2,float,0> > > ret0
function openvr.get_lens_center_left_uv(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_lens_center_left_v(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,struct glm::vec<2,float,0> > > ret0
function openvr.get_lens_center_right_uv(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_manufacturer_name(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_model_label(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_model_number(instance) end

--- 
--- @param instance class openvr::Instance
--- @param deviceIdx int
--- @return math.Transform ret0_1
--- @return vector.Vector ret0_2
function openvr.get_pose(instance, deviceIdx) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_vrc_version(instance) end

--- 
--- @param instance class openvr::Instance
--- @param deviceIdx int
--- @return math.Mat4 ret0_1
--- @return vector.Vector ret0_2
function openvr.get_pose_transform(instance, deviceIdx) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_previous_universe_id(instance) end

--- 
--- @param sys class vr::IVRSystem
--- @param eye enum vr::EVREye
--- @param nearZ number
--- @param farZ number
--- @return math.Mat4 ret0
function openvr.get_projection_matrix(sys, eye, nearZ, farZ) end

--- 
--- @param sys class vr::IVRSystem
--- @param eye enum vr::EVREye
--- @return number ret0_1
--- @return number ret0_2
--- @return number ret0_3
--- @return number ret0_4
function openvr.get_projection_raw(sys, eye) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_radio_version(instance) end

--- 
--- @param instance class openvr::Instance
--- @param deviceIdx int
--- @return math.Transform ret0_1
--- @return vector.Vector ret0_2
function openvr.get_raw_pose(instance, deviceIdx) end

--- 
--- @param sys class vr::IVRSystem
--- @return int ret0_1
--- @return int ret0_2
function openvr.get_recommended_render_target_size(sys) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_seconds_from_vsync_to_photons(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_serial_number(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,struct glm::mat<3,4,float,0> > > ret0
function openvr.get_status_display_transform(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,unsigned __int64> > ret0
function openvr.get_supported_buttons(instance) end

--- 
--- @param sys class vr::IVRSystem
--- @return bool ret0_1
--- @return number ret0_2
--- @return int ret0_3
function openvr.get_time_since_last_vsync(sys) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 int
--- @return enum vr::EDeviceActivityLevel ret0
function openvr.get_tracked_device_activity_level(arg0, arg1) end

--- 
--- @param arg0 class vr::IVRSystem
--- @param arg1 int
--- @return enum vr::ETrackedDeviceClass ret0
function openvr.get_tracked_device_class(arg0, arg1) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 int
--- @return string ret0
function openvr.get_tracked_device_model_number(arg0, arg1) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 int
--- @return string ret0
function openvr.get_tracked_device_render_model_name(arg0, arg1) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 int
--- @return string ret0
function openvr.get_tracked_device_tracking_system_name(arg0, arg1) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 int
--- @return string ret0
function openvr.get_tracked_device_type(arg0, arg1) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_tracking_firmware_version(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_tracking_range_minimum_meters(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @return enum vr::ETrackingUniverseOrigin ret0
function openvr.get_tracking_space(arg0) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > > > ret0
function openvr.get_tracking_system_name(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_user_head_to_eye_depth_meters(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,float> > ret0
function openvr.get_user_ipd_meters(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.has_camera(instance) end

--- 
--- @param err enum vr::EVRInitError
--- @return string ret0
function openvr.init_error_to_string(err) end

--- 
--- @return enum vr::EVRInitError ret0
function openvr.initialize() end

--- 
--- @param arg0 class openvr::Instance
--- @return bool ret0
function openvr.is_hmd_view_enabled(arg0) end

--- 
--- @return bool ret0
function openvr.is_initialized() end

--- 
--- @param instance class openvr::Instance
--- @return bool ret0
function openvr.is_instance_valid(instance) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.is_on_desktop(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @return bool ret0
function openvr.is_rendering_suspended(arg0) end

--- 
--- @param arg0 class vr::IVRSystem
--- @param arg1 int
--- @return bool ret0
function openvr.is_tracked_device_connected(arg0, arg1) end

--- 
--- @param instance class openvr::Instance
--- @return map ret0
function openvr.poll_events(instance) end

--- 
function openvr.preinitialize() end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.reports_time_since_vsync(instance) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 int
--- @param arg2 math.Transform
function openvr.set_device_zero_pose(arg0, arg1, arg2) end

--- 
--- @param instance class openvr::Instance
--- @param eyeIndex enum vr::EVREye
--- @param img prosper.Image
function openvr.set_eye_image(instance, eyeIndex, img) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 bool
function openvr.set_hmd_view_enabled(arg0, arg1) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 prosper.Image
--- @return enum vr::EVRCompositorError ret0
--- @overload fun(arg0: class openvr::Instance, arg1: prosper.Image, arg2: prosper.Image): enum vr::EVRCompositorError
--- @overload fun(arg0: class openvr::Instance, arg1: prosper.Image, arg2: prosper.Image, arg3: prosper.Image, arg4: prosper.Image, arg5: prosper.Image, arg6: prosper.Image): enum vr::EVRCompositorError
function openvr.set_skybox_override(arg0, arg1) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 enum vr::ETrackingUniverseOrigin
function openvr.set_tracking_space(arg0, arg1) end

--- 
--- @param arg0 class openvr::Instance
--- @return bool ret0
function openvr.should_app_render_with_low_resources(arg0) end

--- 
--- @param arg0 class openvr::Instance
function openvr.show_mirror_window(arg0) end

--- 
--- @param instance class openvr::Instance
--- @param eyeId enum vr::EVREye
--- @return enum vr::EVRCompositorError ret0
function openvr.submit_eye(instance, eyeId) end

--- 
--- @param arg0 class openvr::Instance
--- @param arg1 bool
function openvr.suspend_rendering(arg0, arg1) end

--- 
--- @param sys class vr::IVRSystem
--- @param devIndex int
--- @param axisId int
--- @param duration number
function openvr.trigger_haptic_pulse(sys, devIndex, axisId, duration) end

--- 
--- @param arg0 class openvr::Instance
function openvr.update_poses(arg0) end

--- 
--- @param instance class openvr::Instance
--- @return class std::variant<enum vr::ETrackedPropertyError,struct std::pair<enum vr::ETrackedPropertyError,bool> > ret0
function openvr.will_drift_in_yaw(instance) end


--- 
--- @class openvr.TrackedDevicePose
--- @field poseIsValid  
--- @field angularVelocity  
--- @field velocity  
--- @field deviceToAbsoluteTracking  
--- @field deviceIsConnected  
--- @field trackingResult  
openvr.TrackedDevicePose = {}


--- 
--- @class openvr.Eye
openvr.Eye = {}

--- 
--- @param cam ents.CameraComponent
function openvr.Eye:GetViewMatrix(cam) end

--- 
--- @param nearZ number
--- @param farZ number
function openvr.Eye:GetProjectionMatrix(nearZ, farZ) end


--- 
--- @class openvr.ControllerState
--- @field axis0  
--- @field packetNum  
--- @field axis1  
--- @field axis2  
--- @field buttonTouched  
--- @field axis3  
--- @field axis4  
--- @field buttonPressed  
openvr.ControllerState = {}


