#
# The ARTist Project (https://artist.cispa.saarland)
#
# Copyright (C) 2017 CISPA (https://cispa.saarland), Saarland University
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# @author "Oliver Schranz <oliver.schranz@cispa.saarland>"
# @author "Sebastian Weisgerber <weisgerber@cispa.saarland>"
#

# @TODO:
# - Create own .so for artist
# - Create own .so for each optimization pass

# Append Artist sourcefiles to LIBART_COMPILER_SRC_FILES variable
LIBART_COMPILER_SRC_FILES += \
    optimizing/artist/artist.cc \
    optimizing/artist/artist_log.cc \
    optimizing/artist/artist_method_visitor.cc \
    optimizing/artist/artist_utils.cc \
    optimizing/artist/blacklist.cc \
    optimizing/artist/env/artist_environment.cc \
    optimizing/artist/env/java_env.cc \
    optimizing/artist/env/codelib.cc \
    optimizing/artist/env/codelib_environment.cc \
    optimizing/artist/injection/injection.cc \
    optimizing/artist/injection/injection_visitor.cc \
    optimizing/artist/injection/parameter.cc \
    optimizing/artist/injection/permissions.cc \
    optimizing/artist/injection/target.cc \
    optimizing/artist/injection/visitor_keys.cc \
    optimizing/artist/method_info.cc \
    optimizing/artist/method_info_factory.cc \
    optimizing/artist/param_finder.cc \
    optimizing/artist/modules/analyzer/logtimization.cc \
    optimizing/artist/modules/generic/universal_artist.cc \
    optimizing/artist/modules/method-tracing/trace_artist.cc \
    optimizing/artist/verbose_printer.cc
