ActivityManager {
	id: mainWindow;
	width: parent.width;
	height: parent.height;

	//@using { src.Home }
	LazyActivity { name: "home"; component: "src.Home"; }

	onCompleted: { this.push("home") }
}