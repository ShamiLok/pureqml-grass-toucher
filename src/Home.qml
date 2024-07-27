Activity {
	anchors.fill: parent;
	clip: true;

    id: home;
    property int count: 0;
    // signal countChanged(int newCount);
    // signal countChanged;

    Item {
        height: mainWindow.height;
        width: mainWindow.width;
        id: menuWrapper;
        clip: true;
        Text {
            id: progress;
            z: 100;
            font.pixelSize: 80;
            text: 0;
            color: "white";
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.bottom: button.top;
        }

        TextButton {
            focus: true;
            id: button;
            text: "Потрогать траву";
            z: 100;
            anchors.centerIn: parent;
            onSelectPressed: {
                home.count += 1
                progress.text = home.count
                // home.countChanged
                // progress.text = Number(progress.text) + 1
            }
            onClicked: { this.setFocus() }
        };

        Image {
            z: 10;
            source: "res/grass.jpg";
            fillMode: Image.PreserveAspectCrop;
        }
    }

    // countChanged: {
    //     console.log(home.count)
    // }

    init(item): {
		button.setFocus()
	}
}
