/**
 * The ARTist Project (https://artist.cispa.saarland)
 *
 * Copyright (C) 2017 CISPA (https://cispa.saarland), Saarland University
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * @author "Oliver Schranz <oliver.schranz@cispa.saarland>"
 * @author "Sebastian Weisgerber <weisgerber@cispa.saarland>"
 *
 */

#ifndef ART_INTERNAL_UTILS_PARAM_FINDER_H_
#define ART_INTERNAL_UTILS_PARAM_FINDER_H_

#include <vector>
#include "optimizing/nodes.h"

using std::vector;

namespace art {

  class ParamFinder : public HGraphVisitor {
  public:
    explicit ParamFinder(HGraph* graph);

    void VisitParameterValue(HParameterValue *instruction) OVERRIDE;
    const vector<HParameterValue*> GetFoundParameters();

  private:
    vector<HParameterValue*> parameters;
  };
}  // namespace art
#endif  // ART_INTERNAL_UTILS_PARAM_FINDER_H_
