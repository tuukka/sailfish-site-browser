
import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
// TODO store this value between invocations:
    property string siteUrl: "http://dev.hsl.fi/navigator-proto/"
    onSiteUrlChanged: {
        console.log("page.siteUrl changed to " + siteUrl)
    }
    SilicaWebView {
        id: webView
        anchors.fill: parent
        url: siteUrl
        onUrlChanged: {
            console.log("webView.url changed to " + url);
        }

        PullDownMenu {
            MenuItem {
                text: "Configure"
                onClicked: {
                    var dialog = pageStack.push(Qt.resolvedUrl("SecondPage.qml"),
                                                {"url": siteUrl});
                    dialog.accepted.connect(function() {
                        siteUrl = dialog.url;
                    });
                }
            }

            MenuItem {
                text: "Reload"
                onClicked: {
                    if (webView.url === siteUrl) {
                        webView.reload();
                    } else {
                        webView.url = siteUrl;
                        // XXX this would revert the url change: webView.reload();
                    }
                }
            }
        }
    }
}
