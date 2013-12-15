
import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    property string url

    Column {
        anchors.fill: parent

        DialogHeader {
            title: "Configure"
        }

        SectionHeader {
            text: "Site address"
        }

        TextField {
            id: urlField
            width: parent.width
            text: url
            inputMethodHints: Qt.ImhUrlCharactersOnly
            onClicked: selectAll()
        }
    }

    onDone: {
        if (result === DialogResult.Accepted)
            url = urlField.text;
    }
}
