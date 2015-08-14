import QtQuick 2.3
import QtQuick.Window 2.2
import QtMultimedia 5.0

Window {
    visible: true
    width: 480
    height: 360

    MouseArea {
        anchors.fill: parent
        z: 1
        onClicked: {
            camera.exposure.exposureCompensation -= 0.3
        }
    }

    Camera {
        id: camera
        exposure.exposureCompensation: +1.7
    }

    VideoOutput {
        id: video
        anchors.fill: parent
        source: camera
        fillMode: VideoOutput.PreserveAspectCrop
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        font.family: "微軟正黑體"
        font.bold: true
        font.pointSize: 36
        color: "yellow"
        text: "震驚！午後暴雨淹沒臺大總圖"
    }
}
