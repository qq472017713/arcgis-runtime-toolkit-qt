// Copyright 2019 ESRI
//
// All rights reserved under the copyright laws of the United States
// and applicable international laws, treaties, and conventions.
//
// You may freely redistribute and use this sample code, with or
// without modification, provided you include the original copyright
// notice and use restrictions.
//
// See the Sample code usage restrictions document for further information.

import QtQuick 2.6
import Esri.ArcGISRuntime 100.6

Item {
    property alias scene: scene
    property alias camera: camera
    property double translationFactor: 1000

    Scene {
        id:scene
        BasemapImageryWithLabels {}
        Surface {
            navigationConstraint: Enums.NavigationConstraintNone
            backgroundGrid: BackgroundGrid {
                visible: false
            }
            ArcGISTiledElevationSource {
                url: "http://elevation3d.arcgis.com/arcgis/rest/services/WorldElevation3D/Terrain3D/ImageServer"
            }
        }
        ArcGISSceneLayer {
            url: "https://tiles.arcgis.com/tiles/P3ePLMYs2RVChkJx/arcgis/rest/services/Buildings_Berlin/SceneServer"
        }
    }

    Camera {
        id: camera
        Point {
            x: -4.49492
            y: 48.3808
            z: 48.2511
            spatialReference: SpatialReference.createWgs84()
        }
        heading: 344.488
        pitch: 74.1212
        roll: 0.0
    }
}
