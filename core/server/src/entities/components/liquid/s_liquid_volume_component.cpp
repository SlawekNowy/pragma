/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2021 Silverlan */

#include "stdafx_server.h"
#include "pragma/entities/components/liquid/s_liquid_volume_component.hpp"
#include <pragma/lua/converters/game_type_converters_t.hpp>

using namespace pragma;

void SLiquidVolumeComponent::Initialize() { BaseLiquidVolumeComponent::Initialize(); }

void SLiquidVolumeComponent::InitializeLuaObject(lua_State *l) { return BaseLiquidVolumeComponent::InitializeLuaObject<std::remove_reference_t<decltype(*this)>>(l); }

void SLiquidVolumeComponent::SendData(NetPacket &packet, networking::ClientRecipientFilter &rp) {}
