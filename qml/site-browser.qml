
import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow {
    initialPage: Component { FirstPage { } }
    cover: null // for now, display the ApplicationWindow as the cover
/* TODO implement a cover that displays the WebView as well as the actions
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
*/
}
