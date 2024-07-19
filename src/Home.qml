Activity {
	anchors.fill: parent;
	clip: true;
    Row {
        spacing: 10;


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
					progress.text = Number(progress.text) + 1
				}
                onClicked: { this.setFocus() }
            };

            Image {
                z: 10;
                //id:bgbgbgimg;
                //anchors.fill: parent;
                source: "res/grass.jpg";
		        //source: "res/player/pause.png";
                fillMode: Image.PreserveAspectCrop;
            }
        }
    }

    init(item): {
		button.setFocus()
	}
}
