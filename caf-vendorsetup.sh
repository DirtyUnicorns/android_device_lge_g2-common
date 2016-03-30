#
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng
export USE_CCACHE=1
add_lunch_combo du_d800-userdebug
add_lunch_combo du_d801-userdebug
add_lunch_combo du_d802-userdebug
add_lunch_combo du_d802-userdebug
add_lunch_combo du_d803-userdebug
add_lunch_combo du_f320-userdebug
add_lunch_combo du_l01f-userdebug
add_lunch_combo du_ls980-userdebug
add_lunch_combo du_vs980-userdebug
