
import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        id: label
        anchors.centerIn: parent
        text: "Site Browser"
    }

    CoverActionList {
        id: coverAction
/* TODO wire this to the web view:
        CoverAction {
            iconSource: "image://theme/icon-cover-refresh"
        }
*/

/* TODO show web view in the cover unless this is activated:
        CoverAction {
            iconSource: "image://theme/icon-cover-pause"
        }
*/
    }
}
