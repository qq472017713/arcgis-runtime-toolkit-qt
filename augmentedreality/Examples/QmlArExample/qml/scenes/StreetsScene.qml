/*******************************************************************************
 *  Copyright 2012-2019 Esri
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 ******************************************************************************/

import QtQuick 2.6
import Esri.ArcGISRuntime 100.10
import Esri.ArcGISArToolkit 1.0

// Creates a scene based on the Streets base map.
// Mode: Full-Scale AR

Item {
    property alias scene: scene
    property Camera originCamera: null
    property alias locationDataSource: locationDataSource
    property double translationFactor: 1.0

    SceneWithElevation {
        id:scene
        BasemapStreets {
        }
    }

    LocationDataSource {
        id: locationDataSource
    }
}