Rectangle {
	id: buttonProto;
	property string text: "";
	color: "#f5f5f5";
	height: buttonInnerText.paintedHeight + 20;
	width: buttonInnerText.paintedWidth + 20;
	radius: 15;
	focus: true;
	border.color: "red";
    border.width: activeFocus ? 4 : 0;

	MainText {
		id: buttonInnerText;
		anchors.centerIn: parent;
		color: "#000";
		text: buttonProto.text;
	}

	Behavior on color { ColorAnimation { duration: .3s; } }
}
