<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, 7.5 of April 16, 2007 on March 6, 2011 at 7:49:12 am</time-stamp>
<!-- Package RobotMove* -->


<class>
<name>RobotApplication</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>world worldView text inspector workspace localVars </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotMove</category>
<attributes>
<package>RobotMove</package>
</attributes>
</class>

<comment>
<class-id>RobotApplication</class-id>
<body>RobotApplication es una aplicacion simple que permite visualizar movimientos en robots. Se agregan robot y se les indica moverse, cambiar de direction o de posicion.

Instance Variables:
	inspector	&lt;FutbolRobotApplication | InspectorHolder | InspectorShell | Navigator | RobotApplication | RobotController | RobotFireApplication | RobotInspector | RobotInspector&gt;	description of inspector
	localVars	&lt;Object&gt;	description of localVars
	text	&lt;Object&gt;	description of text
	workspace	&lt;Object&gt;	description of workspace
	world	&lt;RobotWorld&gt;	description of world
	worldView	&lt;Object&gt;	description of worldView

</body>
</comment>

<class>
<name>RobotInspector</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>robot name direction battery position tabs myselfText inspector browser explanationText </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotMove</category>
<attributes>
<package>RobotMove</package>
</attributes>
</class>

<comment>
<class-id>RobotInspector</class-id>
<body>RobotInspector es un dialogo donde se puede visualizar las caracteristicas del robot que lo tiene asignado.
Instance Variables:
	battery	&lt;ValueModel&gt;	description of battery
	browser	&lt;AbstractFileItem | AddRobot | Battery | ConfigEquipo | Equipo | Gun | Inspector | InspectorHolder | ModularSettingsPageModule | Movement | PartSnapshot | PDPWeakCollection | PundleParentMap | RobotController | RobotFireInspector | RobotsFutobolInspector | SettingReader | Shield | Shot | Token | UndoActionGroup | WorkspaceVariablePool | XMLSourceWalker | XMLSourceWalkerState&gt;	description of browser
	direction	&lt;ValueModel&gt;	description of direction
	explanationText	&lt;Text&gt;	description of explanationText
	inspector	&lt;CompositeRefactoryChangeInspector | Inspector | Inspector | InspectorShell&gt;	description of inspector
	myselfText	&lt;Object&gt;	description of myselfText
	name	&lt;ValueHolder&gt;	description of name
	position	&lt;ValueModel&gt;	description of position
	robot	&lt;Robot&gt;	description of robot
	tabs	&lt;SelectionInList&gt;	description of tabs

</body>
</comment>



<methods>
<class-id>RobotInspector class</class-id> <category>interface specs</category>

<body package="RobotMove" selector="myself">myself
	"UIPainter new openOnClass: self andSelector: #myself"

	&lt;resource: #canvas&gt;
	^#(#FullSpec 
		#window: 
		#(#WindowSpec 
			#label: 'Robot Inspector' 
			#min: #(#Point 398 405 ) 
			#max: #(#Point 398 405 ) 
			#bounds: #(#Rectangle 281 158 679 563 ) 
			#isEventDriven: true ) 
		#component: 
		#(#SpecCollection 
			#collection: #(
				#(#TextEditorSpec 
					#layout: #(#LayoutFrame 1 0 0 0.5 -1 1 -1 1 ) 
					#model: #myselfText 
					#menu: #myselfTextMenu ) 
				#(#TextEditorSpec 
					#layout: #(#LayoutFrame 1 0 7 0.2 -1 1 -1 0.5 ) 
					#flags: 4 
					#model: #explanationText 
					#alignment: #center 
					#style: #systemDefault 
					#isReadOnly: true ) ) ) )</body>

<body package="RobotMove" selector="robotBrowser">robotBrowser
	"UIPainter new openOnClass: self andSelector: #robotBrowser"

	&lt;resource: #canvas&gt;
	^#(#FullSpec 
		#window: 
		#(#WindowSpec 
			#label: 'Robot Inspector' 
			#min: #(#Point 398 405 ) 
			#max: #(#Point 398 405 ) 
			#bounds: #(#Rectangle 281 158 679 563 ) 
			#isEventDriven: true ) 
		#component: 
		#(#SpecCollection 
			#collection: #(
				#(#SubCanvasSpec 
					#layout: #(#LayoutFrame 0 0 0 0 0 1 0 1 ) 
					#flags: 0 
					#majorKey: #InstanceBehaviorInspector 
					#minorKey: #windowSpec 
					#clientKey: #browser ) ) ) )</body>

<body package="RobotMove" selector="presentation">presentation
	"UIPainter new openOnClass: self andSelector: #presentation"

	&lt;resource: #canvas&gt;
	^#(#FullSpec 
		#window: 
		#(#WindowSpec 
			#label: 'Robot Inspector' 
			#min: #(#Point 398 405 ) 
			#max: #(#Point 398 405 ) 
			#bounds: #(#Rectangle 470 139 868 544 ) 
			#isEventDriven: true ) 
		#component: 
		#(#SpecCollection 
			#collection: #(
				#(#InputFieldSpec 
					#layout: #(#Rectangle 192 33 349 58 ) 
					#flags: 0 
					#model: #position 
					#tabable: false 
					#isReadOnly: true ) 
				#(#InputFieldSpec 
					#layout: #(#Rectangle 192 57 349 82 ) 
					#flags: 0 
					#model: #direction 
					#tabable: false 
					#isReadOnly: true ) 
				#(#InputFieldSpec 
					#layout: #(#Rectangle 192 81 349 106 ) 
					#flags: 0 
					#model: #battery 
					#tabable: false 
					#isReadOnly: true ) 
				#(#LabelSpec 
					#layout: #(#Rectangle 30 30 156 139 ) 
					#label: #image 
					#hasCharacterOrientedLabel: false ) 
				#(#ActionButtonSpec 
					#layout: #(#LayoutFrame -56 1 -25 1 -2 1 -2 1 ) 
					#model: #refresh 
					#label: 'Refresh' 
					#defaultable: true ) ) ) )</body>

<body package="RobotMove" selector="inspector">inspector
	"UIPainter new openOnClass: self andSelector: #inspector"

	&lt;resource: #canvas&gt;
	^#(#FullSpec 
		#window: 
		#(#WindowSpec 
			#label: 'Robot Inspector' 
			#min: #(#Point 398 405 ) 
			#max: #(#Point 398 405 ) 
			#bounds: #(#Rectangle 281 158 679 563 ) 
			#isEventDriven: true ) 
		#component: 
		#(#SpecCollection 
			#collection: #(
				#(#SubCanvasSpec 
					#layout: #(#LayoutFrame 0 0 0 0 0 1 -30 1 ) 
					#flags: 0 
					#majorKey: #NoRenamingInspector 
					#minorKey: #windowSpec 
					#clientKey: #theInspector ) 
				#(#ActionButtonSpec 
					#layout: #(#LayoutFrame -56 1 -25 1 -2 1 -2 1 ) 
					#model: #refresh 
					#label: 'Refresh' 
					#defaultable: true ) ) ) )</body>

<body package="RobotMove" selector="windowSpec">windowSpec
	"UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#FullSpec 
		#window: 
		#(#WindowSpec 
			#label: 'Robot Inspector' 
			#min: #(#Point 398 405 ) 
			#max: #(#Point 398 405 ) 
			#bounds: #(#Rectangle 281 158 679 563 ) 
			#isEventDriven: true ) 
		#component: 
		#(#SpecCollection 
			#collection: #(
				#(#TabControlSpec 
					#layout: #(#LayoutFrame 1 0 8 0 -1 1 -30 1 ) 
					#name: #tabbing 
					#model: #tabs 
					#labels: #() ) 
				#(#ActionButtonSpec 
					#layout: #(#LayoutFrame -61 1 -26 1 -1 1 -1 1 ) 
					#model: #closeRequest 
					#label: 'Close' 
					#defaultable: true ) ) ) )</body>
</methods>

<methods>
<class-id>RobotInspector class</class-id> <category>resources</category>

<body package="RobotMove" selector="basicImage">basicImage
	"UIMaskEditor new openOnClass: self andSelector: #basicImage"

	&lt;resource: #image&gt;
	^(Image extent: 126@109 depth: 8 bitsPerPixel: 8 palette: (MappedPalette withColors: ((Array new: 205) at: 1 put: ColorValue black; at: 2 put: (ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 7662); at: 3 put: (ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7134); at: 4 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6341); at: 5 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 5548); at: 6 put: (ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 5812); at: 7 put: (ColorValue scaledRed: 7662 scaledGreen: 6869 scaledBlue: 5020); at: 8 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5284); at: 9 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 5020); at: 10 put: (ColorValue scaledRed: 7134 scaledGreen: 6341 scaledBlue: 4756); at: 11 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4227); at: 12 put: (ColorValue scaledRed: 6869 scaledGreen: 5020 scaledBlue: 5020); at: 13 put: (ColorValue scaledRed: 5812 scaledGreen: 5548 scaledBlue: 4227); at: 14 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 3699); at: 15 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 3963); at: 16 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 3434); at: 17 put: (ColorValue scaledRed: 5284 scaledGreen: 4491 scaledBlue: 3170); at: 18 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 2906); at: 19 put: (ColorValue scaledRed: 5548 scaledGreen: 3699 scaledBlue: 3699); at: 20 put: (ColorValue scaledRed: 4756 scaledGreen: 3434 scaledBlue: 3434); at: 21 put: (ColorValue scaledRed: 4756 scaledGreen: 4227 scaledBlue: 2642); at: 22 put: (ColorValue scaledRed: 5812 scaledGreen: 4227 scaledBlue: 2906); at: 23 put: (ColorValue scaledRed: 3963 scaledGreen: 3699 scaledBlue: 2642); at: 24 put: (ColorValue scaledRed: 5020 scaledGreen: 2642 scaledBlue: 2642); at: 25 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 2113); at: 26 put: (ColorValue scaledRed: 3963 scaledGreen: 3170 scaledBlue: 1849); at: 27 put: (ColorValue scaledRed: 4227 scaledGreen: 2906 scaledBlue: 1849); at: 28 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 2113); at: 29 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 1585); at: 30 put: (ColorValue scaledRed: 3434 scaledGreen: 1849 scaledBlue: 1056); at: 31 put: (ColorValue scaledRed: 2906 scaledGreen: 2378 scaledBlue: 1056); at: 32 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1321); at: 33 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1849); at: 34 put: (ColorValue scaledRed: 2906 scaledGreen: 1321 scaledBlue: 792); at: 35 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1321); at: 36 put: (ColorValue scaledRed: 1585 scaledGreen: 1321 scaledBlue: 792); at: 37 put: (ColorValue scaledRed: 2378 scaledGreen: 1056 scaledBlue: 264); at: 38 put: (ColorValue scaledRed: 2642 scaledGreen: 792 scaledBlue: 264); at: 39 put: (ColorValue scaledRed: 1849 scaledGreen: 264 scaledBlue: 264); at: 40 put: (ColorValue scaledRed: 2113 scaledGreen: 264 scaledBlue: 0); at: 41 put: (ColorValue scaledRed: 2378 scaledGreen: 0 scaledBlue: 0); at: 42 put: (ColorValue scaledRed: 792 scaledGreen: 792 scaledBlue: 792); at: 43 put: ColorValue white; at: 44 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7134); at: 45 put: (ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 7398); at: 46 put: (ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 6341); at: 47 put: (ColorValue scaledRed: 8191 scaledGreen: 6869 scaledBlue: 6869); at: 48 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 5812); at: 49 put: (ColorValue scaledRed: 7926 scaledGreen: 6341 scaledBlue: 6341); at: 50 put: (ColorValue scaledRed: 7662 scaledGreen: 5812 scaledBlue: 5812); at: 51 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5020); at: 52 put: (ColorValue scaledRed: 7134 scaledGreen: 6869 scaledBlue: 5284); at: 53 put: (ColorValue scaledRed: 7134 scaledGreen: 6341 scaledBlue: 4491); at: 54 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 4756); at: 55 put: (ColorValue scaledRed: 6869 scaledGreen: 5812 scaledBlue: 3963); at: 56 put: (ColorValue scaledRed: 6341 scaledGreen: 4491 scaledBlue: 4491); at: 57 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 3699); at: 58 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 3170); at: 59 put: (ColorValue scaledRed: 5548 scaledGreen: 5020 scaledBlue: 3434); at: 60 put: (ColorValue scaledRed: 4756 scaledGreen: 4491 scaledBlue: 3434); at: 61 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 3170); at: 62 put: (ColorValue scaledRed: 5284 scaledGreen: 4491 scaledBlue: 2906); at: 63 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 2113); at: 64 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1849); at: 65 put: (ColorValue scaledRed: 3170 scaledGreen: 2113 scaledBlue: 2113); at: 66 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1849); at: 67 put: (ColorValue scaledRed: 3434 scaledGreen: 2642 scaledBlue: 1321); at: 68 put: (ColorValue scaledRed: 3699 scaledGreen: 2378 scaledBlue: 1321); at: 69 put: (ColorValue scaledRed: 2378 scaledGreen: 2113 scaledBlue: 1585); at: 70 put: (ColorValue scaledRed: 3699 scaledGreen: 1849 scaledBlue: 1849); at: 71 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1056); at: 72 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1585); at: 73 put: (ColorValue scaledRed: 1849 scaledGreen: 792 scaledBlue: 792); at: 74 put: (ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 264); at: 75 put: (ColorValue scaledRed: 2906 scaledGreen: 264 scaledBlue: 264); at: 76 put: (ColorValue scaledRed: 1056 scaledGreen: 792 scaledBlue: 264); at: 77 put: (ColorValue scaledRed: 2113 scaledGreen: 0 scaledBlue: 0); at: 78 put: (ColorValue scaledRed: 528 scaledGreen: 264 scaledBlue: 0); at: 79 put: (ColorValue scaledRed: 264 scaledGreen: 264 scaledBlue: 264); at: 80 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 6869); at: 81 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 6341); at: 82 put: (ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 6077); at: 83 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 6869); at: 84 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 5548); at: 85 put: (ColorValue scaledRed: 7398 scaledGreen: 7134 scaledBlue: 5812); at: 86 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 6605); at: 87 put: (ColorValue scaledRed: 7398 scaledGreen: 6605 scaledBlue: 5020); at: 88 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 5548); at: 89 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4756); at: 90 put: (ColorValue scaledRed: 7134 scaledGreen: 5284 scaledBlue: 5284); at: 91 put: (ColorValue scaledRed: 6605 scaledGreen: 5812 scaledBlue: 3963); at: 92 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 4227); at: 93 put: (ColorValue scaledRed: 5812 scaledGreen: 5284 scaledBlue: 5284); at: 94 put: (ColorValue scaledRed: 7134 scaledGreen: 6077 scaledBlue: 4491); at: 95 put: (ColorValue scaledRed: 6341 scaledGreen: 5020 scaledBlue: 3699); at: 96 put: (ColorValue scaledRed: 5812 scaledGreen: 4491 scaledBlue: 3434); at: 97 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 2906); at: 98 put: (ColorValue scaledRed: 5548 scaledGreen: 5020 scaledBlue: 3170); at: 99 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3699); at: 100 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 2906); at: 101 put: (ColorValue scaledRed: 5812 scaledGreen: 3963 scaledBlue: 3963); at: 102 put: (ColorValue scaledRed: 4227 scaledGreen: 3963 scaledBlue: 2906); at: 103 put: (ColorValue scaledRed: 4756 scaledGreen: 3963 scaledBlue: 2378); at: 104 put: (ColorValue scaledRed: 4227 scaledGreen: 3434 scaledBlue: 2113); at: 105 put: (ColorValue scaledRed: 3963 scaledGreen: 3434 scaledBlue: 2378); at: 106 put: (ColorValue scaledRed: 4227 scaledGreen: 3699 scaledBlue: 1849); at: 107 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 2113); at: 108 put: (ColorValue scaledRed: 4756 scaledGreen: 3699 scaledBlue: 2642); at: 109 put: (ColorValue scaledRed: 4491 scaledGreen: 2642 scaledBlue: 2642); at: 110 put: (ColorValue scaledRed: 4227 scaledGreen: 2378 scaledBlue: 1849); at: 111 put: (ColorValue scaledRed: 3699 scaledGreen: 2378 scaledBlue: 2378); at: 112 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1585); at: 113 put: (ColorValue scaledRed: 3170 scaledGreen: 1585 scaledBlue: 1056); at: 114 put: (ColorValue scaledRed: 2378 scaledGreen: 2113 scaledBlue: 1321); at: 115 put: (ColorValue scaledRed: 3170 scaledGreen: 1321 scaledBlue: 1321); at: 116 put: (ColorValue scaledRed: 1849 scaledGreen: 1585 scaledBlue: 1056); at: 117 put: (ColorValue scaledRed: 2906 scaledGreen: 792 scaledBlue: 792); at: 118 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 1849); at: 119 put: (ColorValue scaledRed: 1321 scaledGreen: 1056 scaledBlue: 792); at: 120 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1585); at: 121 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1321); at: 122 put: (ColorValue scaledRed: 1056 scaledGreen: 1056 scaledBlue: 1056); at: 123 put: (ColorValue scaledRed: 1585 scaledGreen: 264 scaledBlue: 0); at: 124 put: (ColorValue scaledRed: 1849 scaledGreen: 0 scaledBlue: 0); at: 125 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7926); at: 126 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6869); at: 127 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 6605); at: 128 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 7398); at: 129 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 6077); at: 130 put: (ColorValue scaledRed: 7398 scaledGreen: 7134 scaledBlue: 5548); at: 131 put: (ColorValue scaledRed: 7926 scaledGreen: 6077 scaledBlue: 6077); at: 132 put: (ColorValue scaledRed: 6869 scaledGreen: 6605 scaledBlue: 5284); at: 133 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 5020); at: 134 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 4227); at: 135 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4756); at: 136 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4491); at: 137 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 3963); at: 138 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 4491); at: 139 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 4227); at: 140 put: (ColorValue scaledRed: 6077 scaledGreen: 5284 scaledBlue: 3434); at: 141 put: (ColorValue scaledRed: 5812 scaledGreen: 5284 scaledBlue: 3699); at: 142 put: (ColorValue scaledRed: 6077 scaledGreen: 5020 scaledBlue: 3699); at: 143 put: (ColorValue scaledRed: 5548 scaledGreen: 4756 scaledBlue: 3170); at: 144 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3434); at: 145 put: (ColorValue scaledRed: 5812 scaledGreen: 4491 scaledBlue: 4491); at: 146 put: (ColorValue scaledRed: 5020 scaledGreen: 4227 scaledBlue: 2906); at: 147 put: (ColorValue scaledRed: 5284 scaledGreen: 3434 scaledBlue: 3434); at: 148 put: (ColorValue scaledRed: 4491 scaledGreen: 3170 scaledBlue: 3170); at: 149 put: (ColorValue scaledRed: 6605 scaledGreen: 5284 scaledBlue: 4227); at: 150 put: (ColorValue scaledRed: 4227 scaledGreen: 3434 scaledBlue: 1849); at: 151 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 2113); at: 152 put: (ColorValue scaledRed: 3699 scaledGreen: 2906 scaledBlue: 1585); at: 153 put: (ColorValue scaledRed: 3963 scaledGreen: 2642 scaledBlue: 1585); at: 154 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 1585); at: 155 put: (ColorValue scaledRed: 3170 scaledGreen: 2378 scaledBlue: 1321); at: 156 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1321); at: 157 put: (ColorValue scaledRed: 2906 scaledGreen: 1849 scaledBlue: 792); at: 158 put: (ColorValue scaledRed: 2642 scaledGreen: 1585 scaledBlue: 1321); at: 159 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1849); at: 160 put: (ColorValue scaledRed: 1585 scaledGreen: 1585 scaledBlue: 1056); at: 161 put: (ColorValue scaledRed: 2378 scaledGreen: 1321 scaledBlue: 528); at: 162 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1321); at: 163 put: (ColorValue scaledRed: 1849 scaledGreen: 792 scaledBlue: 264); at: 164 put: (ColorValue scaledRed: 792 scaledGreen: 528 scaledBlue: 264); at: 165 put: (ColorValue scaledRed: 1585 scaledGreen: 0 scaledBlue: 0); at: 166 put: (ColorValue scaledRed: 264 scaledGreen: 0 scaledBlue: 0); at: 167 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7662); at: 168 put: (ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7398); at: 169 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6605); at: 170 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 5812); at: 171 put: (ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 6077); at: 172 put: (ColorValue scaledRed: 7926 scaledGreen: 6605 scaledBlue: 6605); at: 173 put: (ColorValue scaledRed: 7662 scaledGreen: 6869 scaledBlue: 5284); at: 174 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5548); at: 175 put: (ColorValue scaledRed: 7398 scaledGreen: 5548 scaledBlue: 5548); at: 176 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 4756); at: 177 put: (ColorValue scaledRed: 7398 scaledGreen: 6341 scaledBlue: 4756); at: 178 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4227); at: 179 put: (ColorValue scaledRed: 6341 scaledGreen: 6077 scaledBlue: 4756); at: 180 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4491); at: 181 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 3963); at: 182 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 5812); at: 183 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3170); at: 184 put: (ColorValue scaledRed: 5548 scaledGreen: 4756 scaledBlue: 2906); at: 185 put: (ColorValue scaledRed: 5020 scaledGreen: 4227 scaledBlue: 2642); at: 186 put: (ColorValue scaledRed: 5284 scaledGreen: 3963 scaledBlue: 2642); at: 187 put: (ColorValue scaledRed: 4491 scaledGreen: 3699 scaledBlue: 2378); at: 188 put: (ColorValue scaledRed: 4227 scaledGreen: 2906 scaledBlue: 2113); at: 189 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 1849); at: 190 put: (ColorValue scaledRed: 3699 scaledGreen: 2906 scaledBlue: 1321); at: 191 put: (ColorValue scaledRed: 3963 scaledGreen: 2378 scaledBlue: 1585); at: 192 put: (ColorValue scaledRed: 3170 scaledGreen: 1585 scaledBlue: 1849); at: 193 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1585); at: 194 put: (ColorValue scaledRed: 2906 scaledGreen: 2378 scaledBlue: 1321); at: 195 put: (ColorValue scaledRed: 2113 scaledGreen: 1849 scaledBlue: 1321); at: 196 put: (ColorValue scaledRed: 2642 scaledGreen: 1321 scaledBlue: 1321); at: 197 put: (ColorValue scaledRed: 3170 scaledGreen: 1321 scaledBlue: 792); at: 198 put: (ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 792); at: 199 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1585); at: 200 put: (ColorValue scaledRed: 1056 scaledGreen: 1056 scaledBlue: 528); at: 201 put: (ColorValue scaledRed: 2113 scaledGreen: 264 scaledBlue: 264); at: 202 put: (ColorValue scaledRed: 2378 scaledGreen: 264 scaledBlue: 0); at: 203 put: (ColorValue scaledRed: 2642 scaledGreen: 0 scaledBlue: 0); at: 204 put: (ColorValue scaledRed: 528 scaledGreen: 528 scaledBlue: 264); at: 205 put: (ColorValue scaledRed: 1321 scaledGreen: 0 scaledBlue: 0); yourself)) usingBits: (ByteArray fromPackedString: '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%@JT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)PAM],B_)ZV%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)ZV#0&amp;!%N3-%0$-M@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV%)T4#0AX&lt;X6NN#+ZOY[2_SZV%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%S\/BZARQX1F7XC&amp;KN[^N-)DV\ZN%)PB%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@SRMAYS1#OQF7XC$9"8.K"8- XX:OOK13(:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV%S\H&gt;YS1#D[] NS&amp;K"8,M"8.K"8.KNVFN#30V0JN%)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV#H6)%OC0=#&amp;D9"8.K"8.KCP4MCP64CP4M"8.KXX:O#393(:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZV#QA TX6N6-3&amp;K"8.K"8.KCX"HCP64"@6H"H"HCP6K"3%!#+XV0D.%)ZT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)ZM6%#,&lt;-!E!XC&amp;K"8.K"04MCX"4"1F:EH:KCP6H"H!ZV#YZCX.KNX:OOF"_(:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)T-DZC,&lt;X89!NX.K"8.KCX.K-@4MXK!''%1:ZFVX=C8,M"E)ZM#X6M( M"0=!#6HVP\^%)PB%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%27Y*YS26-(8O"8.K"04MCP4MCX.KO[*UP)0$^*J &amp;)\Y.FFKC[QZM#X6,[D6V 6KNS*OOF"_2:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV%],HVN6N6#(8ON@4M"H M-KPMCX.7Y)VW&amp;*@$(''+L^*R"()2Z%;(=XH,MV#Z1!XT4![EZ"8,ON(9%PWYM)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JUMH6)%OKZ6XP&lt;8C[RH"H"HC[PM"3&amp;8.)UB''J@$(''+L3L3L3L2"("P$&amp;)!''Y(:KCU(6,SP4MCR1M%(8C3*OOF!3SZV%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)T56QFT&lt;OH:NC8,M-H!ZV%*HC[PMNQF:FY"Z(BR"^''*$3L3L3L3L3L3L(*J"()2Z%6^8NX.HM(T4MJ&lt;4MCR1"C ON(&lt;&lt;Z''YM)ZT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D6_%&amp;T&lt;-(8ON@6HV#YZV%*H-@6KX[":FY*\ID&amp;"^''*$)JR$)JSL3L3L3L3L3G):("R ''K6UY+^K-CX4MJ&gt;/+:&gt;/!SZ4C3(:OA[BSP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AM%#,;-#(OCX!ZM#X6M#ZHCX,9OVXY/Y2 ID&amp;"^*R$)JR$)JR$)JR$)JSL3L3L3L1:^*J"IJBZ&amp;F^8NX-Z,SR/L XFL*&lt;4,S"L#FI%2:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)RM%X(XN"E*1,SX6M%*HCX.7Y&amp;&amp;X&amp;)0$IJI:^*R$)JR$)JR$)JR$)JR$)JSL3L3L3L2$^''*"(*H$''DHYY!FK"KD4+0Z,+@Z,U  3BFH#)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AM0C22 ELI!XVE,SZ4"3$=.)V=''J@$(*I:)JR$)JR$)JR$^7-;^7.$)JR$)JR$3L3L)JR$)JQ:^*J"IJBZ&amp;IV8NX,6MCHFA@PETD&gt;*CAYM@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)\\VX*4CTP^G,U(MNS5&amp;%Y^Z''BQI(''):)JR$)JR$)JR$)G-;^7-;^:R$)JR$)JR$)JR$)JR$)JR$)G):(*H$''DHYY#49V(T2+@L+@''4HX)&gt;%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%QC2IKW9QA0(NC36:%Y^\''BP%(''*$)JR$)JR$)JQ;)JQ;^7-;^7.$)JR$)JR$)G,&amp;^7-;^:R$)JR$3JQ:^*J"II0^FYTTNP6D@2.''@**L%$4@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)T5%X#M&gt;_*$I+0!&amp;&amp;DJ IJJ"I*SL)JR$)JR$^7-;^7.$)G.$)G.$)JR$)JR$^7-;^7-;^7-;^7.$)JR$)JSL3G):(*H$''DHYV0&amp;*J:^''_[H;]*T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%0&amp;TL G8C [LE*QB IJJ"^*R$)JR$)JR$)JQ;SG-;^:R$)JR$)JR$)JR$)JQ;^7-;SD1;^7,''^:R$)JR$)L3L3L3L^''*"II\G+8Q=@*\BUH1A)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JL&gt;-#LC_%F/MX@HW4%:^*R$)JR$)JR$)JQ;^7-;^7-;)JQ;)JR$)JR$)JR$^40''SD1LSD1L^41;^7-;)JR$)L3L3L3L^''*"F#",MX@+):]=,#.#)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\6TL G8CAXZ- E!''(*R$)JR$)JR$)JR$)G-;^7-;^7-;)G.$^:R$)JR$)G-;I40(JB (SD1;SG-;^7-;)JR$3L3L3L3L)G(]D@\IL76'')2,3X''F%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZTXN0"(_ LG,8B-W14''^:R$)JR$)JR$)JR$^7-;^41LSG-;^7-;)JR$)JQ;^7-LSB (JB!L^7-;^7-;^7-;)JR$3L3L3JR$I$%+" \HKPJ'')5BIYZN%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)PB%)ZV%@@B%132L D=&gt;*ST3@86;IT0''^:R$)JR$)JR$)JQ;^41LSD1LSG-;^7-;)JR$)JQ;^40''SD1LSB];^7-;^7-;^:R$)JR$)JR$)G-;I7@=+CV-J:^''J8M"0*V%)ZV%)ZT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZUMST7K12OG],^&lt;OHXC_ LG,8B-Z7CII2]L1W.$)JR$)G.$)G-;SD1LSB]L^:QLI7.$)JR$)JQ;^41LSD1LSG-;^7-;^7-;)JR$)JR$I,M;SD1LHTN3A0"(@*^''T@1(R4-K14.#2&lt;-MSZV%)PB%@@@@@@@@@@@@@@@@@@@@22MD%!X;X&amp;I"#6TVZARLUD== CVD H5C]B (JL!2\,"$)JR$)JR$)G-;^2]LI7.$)G-;^:R$)JR$)JR$)JR$)G-;^41;^7-;^7.$)JR$^&lt;U,D&lt;#HSD0''HV^)!8AO):\+BH26-(&lt;L,+JI"S,VF&lt;I62:T@@@@@@@@@@@@@@@@@)RL&gt;YS-"CKHH 8RFC6LTEHXCS7:AMXF-Y7CI2" (]DUE/&lt;"$)JR$)JR$)G-;^7-;)JR$)G.$)JR$)JR$)JR$)JR$)JQ;SD1;^7-;^:R$)JSE[AI$QR]LSB\%&amp; &amp;/!J B)0J*#H"HV8ET*%RC,+JI#C-(]*V%@@@@@@@@@@@@)ZWBE#26N%.C*"4CTUNHC;Z6*$=O@8PHTH5C]B#JJB!E[V9.Q\V$)JR$)JR$)G.$)JR$)JR$)JR$)JR$)JR$)JR$)JR$)G-LSD1;^7.$)JR$\!I$$IBRIR]L2T''DOZ23*".'')76F"CHG@4&lt;+@"-=TJ6F#C(&lt;H:T@@@@@@@@@@@B%11X&lt;OS!V J!OS78C P:HDU,CS78E!8EPY17IJL((]F1,[F1.[,V$)JR$)JR$^7-;^:R$)JR$)JR$)JR$)JR$)JR$)JR$^41LSG-;^:R$)GJPM3\7M3^?SB]LI2F&gt;,@$3_Z^''J5RHL ^@J0J''):]=*(RHC3(&gt;SZT@@@@@@@@@@D5AYQP=N(YT_R,+S0N/"C"NL79O@5ZG E!CHR (JB!E[F1,[F1,[LN$)JR$^7-;I41;^7-;^7-;^:R$)JR$)G-;^7-;^7-;^7-;^7-;)BY.M0,KVU%YVQH''I41LRWA_A3UP@*\B_[N/!EQ=)71&lt;_@I=U@*KN#0#)P@@@@@@@@B%(;2QX82DKT&lt;+@ IO* :H#%-PS78E!0\E.WCIJB (]A^S$9NS$9NS[K&lt;&amp;)G-;I7,''SD1LSD1LSD1;^:R$)G-;SD1LSG-LSD1L^7-;^7/H[@-Y+*:.+#F.+''KHSD0''HTN,MZ4+@*\++[MSAW6''_G1&lt;)76*!E(O-$F%@@@@@@@@@JV_E&amp;N6#E,3*B,B@$=T"H :L75O_ ^3*U"X1B (2"!E$)JRD9JRD9JS$4T&amp;SD1LSB]LSD1LSD1LSD1;)JQ;^7-LSB (SD1LSD1L^7-;2IMYLSD1LXJB (JBYL (SD0%HX)VBJ B)0IPV5ZD*"-&lt;_G1&lt;@*)["0&gt;6FJL@@@@@@@@@S\HXEID:,5R(J0H+KXX8XP9PS4=Q!8R)OQ4%JL((]IJRD!HRD!HR$)JRD&amp;7HSD1LI40''SD1LJB!LSG-;^7-;SD0(JB!LSD1LSD1LSGQ$ (H0LJ.+*:.+K*../2\(JL$!Y5ZGUB.'')2.-B%Z-J:]&lt;_G2''J:!VCX9(]*T@@@@@@@AM\S&gt;QXZ&gt;@_$&lt;+J76-V066BG9O_%N3 UZX\B (R,(ZYFQ$YFQ$YAI$YAI$$&amp;3E^41LSD0''I41LSD1LSG-L^7-LSB]LSB\''SB]LSD14M8JB*28.K"9?_21?_28SI2\(SGRZV0&amp;D_Z\B@"5[ XAO@*Y&lt;_J]=+[L8C313)P@@@@@@@JL&gt;EFM!#KMT_$&lt;+S0VGC82*S4&lt;-!CV@W14%JL+J]FP7M3\7M9BP$IBPYFQ$YIOC^:R$)JR$^7-;SD1;^2]L^41L^7-;)JQ;SB\''/5$0K"9?_20,@PDA)*Z&amp;KJ/E^2]L2JA''A(^*@*^''J8R3 X@+)71&lt;)76CC &lt;O%WEM@@@@@@@@(&lt;DY.K :MR5OS4&gt;*!H"6!*!O_%R3 P^U\L$(2,)-M3\7B0,KM3\7M3\7M9BPYIKC^7.$)JQ;^40''I41;2B];I2]L^7.$)JQ;^;=YK"9?_20A)''1&lt;J"(*J"*&amp;@V:$^2\''(GB1BSL+@*\B*%.DL:"''_G2''@*!SV &gt;:G44@@@@@@@CG[6"6NEZ@_$=OKSN3C0&gt;*S4=&gt;!H^)#TM4JB (R)HKB0,KB0,KB0,KB0,7M3\7$II2^7-;)G-;SD1;^7/H2T1LSG-;^7-;^7-. "8._22&amp;_B(*J"(*J"(*J"*&amp;-T!;SG,''H[%V,5@B):]=!*=QS:]&lt;_G0BT@VE"895(0@@@@@@@I&lt;V$VD8BXDCS4&lt;-AX\Q,:!O_(B3U(E''G\%LJB!EM0,KVU%YVU%YVU%YVP,KB3\7M1KH^:R$)JR$)G-;SL%JSG-;)JR$)JR$1U$._22&amp;_B(*J"(*J"(*J"(*J")?[*Q;^2\%P;FG+T&gt;'')0ITV8AO@*]&lt;)0ITV3$9EA"#@@@@@@@@\12:$[ O,8AOS7:@C6F-S4&lt;C+P(E"DODJD0(JFQYVU&amp;.+*:.+*:.+*:.VU$KB0,7[L!;^:R$^7-;^7-LR$)L^7.$)JR$)JR$$G&lt;,)"(*J"(*J"(*J"(*J"(*J''1\RBY;^4%0W:&gt;3TJ]&lt;)76F!%Q=@ J''@*"-NC&amp;:1,^%@@@@@@CBG1&amp;8-8"DKZ -UCU#V:!OS8@5!J%''G\$(JB!2VZ81LSFB (JB (H1LSF.+%%YB3_C^7-;^7-;^7-;^2!J]B!L^7-;^7-;^:R]_:X*J"(*J"(*J"(*J"(*J"(*J''=@)G-L^2FXWX^-J:^''@%Q[ Z +@*\BS0L2V+](H:T@@@@@)\I5E@&lt;J+HB@*#LHC883S4&lt;C [LEVDODJB (JIH1 #@0LC@0LC@0LC@0 (H1+*9Y$,!;^7-;SD1LSG-;2T)42T1LSD1LSD1L^4"5)"(*J"(*J"(*J"(*J"(*J"(*))CL^7,''IY2M,CUO):^''*E,HS0HB@".(AUYZN[+B)P@@@@AMPVU#N("/ X@-KXQ#V24BS8@5!0U+P4$(JB!2VS@0 #B+K"8.K":+*:,0LHJBLZ92^41LSB (JB (SD3IR''SJJB (SD1LSD1L)AX,J"(*_B(*J"(*J")&lt;J"(*J"(*T,L&amp;I40''HQ*0B*(B):\+L5,-J0HBJ:)[NVA&amp;&amp;WF%@@@@@L,_1!R8OS 5 G8CV;X3S4=&gt;T0(2BY#D2R (SIL0LJ,.K"8.K''=?_28.K":+LCBBB2];^41LJB (2"!LSB_IR" (JB!LSD1LSB];0;U&lt;J"(*J"(*J"(*J"(*J"(*J"(AD2YLI2\%\KQX 76'')0H-V0!=J0H+*CLMNVZW\ZT@@@@@S\IFY+ =N@(GTZ5##B5OS0ND!0P=GRT(JD3HLS@.K''=?_7&lt;,KB1?_7=?K"8.LCA,^7-;^40(JB (SB_H1K--]L ''I7-;^7-LI2^$D E&lt;J"(*J"(*J"(*J"(*J"(*J''25''R]LSD$!Y;A[* J'')2.CC(A=@"-OTSIZXYW@)P@@@@B#G3&gt;QN%.DU(R/#FLHS2.(AP)VA;8]2R (SF0.K"9?KB0,)*XA) D,KB1?_28.V\N$)G-;I2\''I2\''^&amp;,UNU&gt;9[R];^7-;^2]L^:QHKJY&lt;J"(*J"(*J"(*J"(*J"(*J FSI$1LI2VZ-KNCJ:^''@%@NA78+J4=Q+KFKY"B%@@@@@L_AY[ZLV:=VU#V6#J(+S0ND,0POGWP(JB#HB29?_20A)*Z&amp;J"(*_G2&amp;) D,_28R^*R$)G(&amp;($$!HZJ\#[RHCU8P(JIHI*R$)JR$)L1\)"(*J"(*J"(*J"(*J"(*J")&lt;_KWL^40''RRE+,KMP@*^''J8Y[@2-OUKNH"1F:/D4@@@@@1&lt;F:X88OV8PEB&amp;LH*D=O KN/U)U02T0(I680_7&lt;,)*Y&lt;J"(*J")&lt;J")&lt;) D,*94&amp;RLUI(I2\''I2 ''FNHNH.K-H4?(*IHRD!HI"X&amp;I$ARJ''0*J"(*J"(*J"(*J"(*J"(*))6$^2\''(I)[V:5O@*\B* :DS7:-C#$9ZTI/SP@@@@A6Q!9&amp;.K :V5ZN#(EOS78GB(FMP2ELSB#H$B8,KJY&lt;_G1&lt;J")&lt;_G1&lt;)*Z&amp;@R1\)BX&amp;1T&amp;"RT$$IBR %U,M";R4")):3L3L3L0&amp;I"Z$RE^&amp;_G1&lt;J"(*J"(*J"(*J''0*J"*&amp;WBX''I2]I(KZG!"4+)0J(! 8C_%DG"H-&amp;%&lt;EM@@@@@GYFG+(=-# 5C&amp;X8U@LCASV/AV-0I40(I7J+_22&amp;)''0,T%IRUUUUUU]WU50SD96$)JR$)JR$^''):^*J"#X*J-H(&lt;3L3L3L3L3JR$)BZ$PALSWE]WU;UUUUURT%HA)''2&amp;) EUPB\''SB^ ]0&amp;3AT&lt;B@* HN(PC@2&lt;2M(.:Q44@@@@@H&lt;E($P&gt;HBU-)H+*F Z&amp;A+8P-#Q5LSD1LQYBP$ANS$1]@[$B]''Y7C^&lt;3L3JR$)JR$^:R$)JR$)L2$3L3C.5&lt;P%&lt;WL3L3L3L2$)G-;^7.$)JSL3L3L1Y6]04A@[&amp;2S$1L7$IA.I41L^2PP*Z&lt;ES2-OUC))N(@CTZ21"6X\(0@@@@B_0[*6C8"GMQQ8%81VA@R/!8BC.2\(JD1;I"X&amp;)JP&amp;)JR$^7-;)JQ;)JQ;^7-;^7-;^:R$)JR$)JR$)L1:(LWL3L3L3L2$)JQ;^7-L^7-;^7-;)JR$)JR$)G-;^2_HI&lt;WHR\!LJD3I''HNA!EE&gt;S0N3.!&amp;L@5R3CX.7Z[1K@@@@@I?AO6N6C8 IV9]8$X^,ACJG+U@PHR (JD1;^7-;^7-;^41LSD1LSD1;^7-;^7-;^7-;)JR$)JQ;)JR$)D"?/4#L3L3L)JR$^7-;^7-LSG-;^7-;^7-;^7-;^41LI2 ''I2\''2R (JBU'' HRA@79&gt; C(Y.#M&gt;UE,9XF&amp;=GL\@@@@@H4X^Y+"QN%.DEA8YC#J,+@$H@5 ]2\+JJD1L^7-;^7-;^7-;^7-;^7-;^7-;^:R$^7.$)G-;^7-;)JR$1TA@1\3L3L2$)G-;^7-;^7-;^7-;^41;^7-;^7-;^7-LSD1LSD0(JD3IHX(E+:$C_ LGY).6KW9QA0*KY)-GR0@@@@@#Q!::X;XN,0^LH''!#+:2,+8\ETK-4R$+JJD1;SG-;^7-;^7-;^7-L^7-;^7-;^:Q;^7-;^7.$^:R$)JSE[$CE3L2$)JR$^41L^7-;^7-;^7-;^7-;^7-;^7-;^7-LSD1LSD0(SB\ZA5ZDTW9&gt; E.[%XY&gt;_ L/L#ZK.,[G@@@@@G[AO9D:C+N3! 8?G+(J+J1VMHR(#WIJ2,((SG-;^7-;^7-;^7-;^41;^7-;^7-;^7-;^7.$)JR$)JR$)LU@/4"$)JR$)JQ;^41;^7-;^7-;^7-;^7-;^7-;^7-;^7-;SD1LSD0''(AB)BUMQ_ NAOY-#KT=&gt;@2&lt;2M(-&amp;1''X@@@@@''&lt;E(X0&lt;8V;LHBKY8^@&lt;I+CJ/MX@3.2WJ2"!L^7-;^7-;^7-;^7-;^7-;^7-;^7-;SD1;^7.$)JR$)JR$1TB?)L2$)JR$)G-L^7-;^7-;^7-;^7.$^7-;^7-;^7-LSG-L^41LSB\]!HF/*PLCTP*U%P +J4&lt;E!8,9-9WFH:T@@JU3Q#&lt;TOX8NMPT-L3&lt;^.KEVL*&gt;3+U@P]B#JJD1;^7-;^7-;^7-;^7-;^7-;^7-;^7-LSD1;^:R$)JR$)JP&amp;/96$)JR$)JQ;^7-L^7-;^7-;^7-;^:R$^7-;^7-;^7-;^7-LSD1LIV^)+0]QK0MSXY,T*",BS8BGNS%&amp;/\Y6)P@@)ROA^APTX805 J -EA:[NK@2U(\5*E"&gt;2,((JD1LSB];I41;^7-;^7-;^7-;^40''SB\''I41;)JR$^:R$)JR?0:R$)G-;^41LSB\''^40''^7-;^7-;^7-;^7-LSD0''SD1L^7-LSB_D"%NFT2&lt;/TZ=)&amp;80-J2-O@:$I-C4Y1$.%@@B%H&lt;EBEC6NC(ZC 0"OH''!#!3IV+5.**&amp;]42,((SD1LSD1L^7-;^7-;^7-;^7-;^41LSD1LSG-;^7-;^7.$)K?C)JQ;^40''2B\''SD1;SD1;^7-;^7-;^7-;^41LSD1LSG-;^40''IQ*-A:&lt;DK2&lt;ENI-)L: +J4&lt;C*SIZNYV^1:T@@@B_0\XT# &lt;NV;J2"X1(G&amp;&amp;H+5Z/,3N(#W@(2"!LSD1LSG-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^:R$0&lt;"$^7-;^41LSG-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;I43DW:$5U"&lt;/K5Z8&amp;0&gt;(J0HBS8BDV(.7FY8#@@@@)Y?AP!Q## :3+Z(-* 18P#(4U*&lt;I,25T.&lt;$(JB!LSD1L^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^:SCI*Q;^7-;^7-;^7-;^41;^7-;^7-;^7-;^7-;^7-;^7-L^40''I4LHT8]SK2&lt;DV)U)!D&lt;B@ H+ KNKNV&amp;=GGX@@@@@''&lt;F!EK =C(P-_$=&gt;UI%FEE./+0%[+UA_H\+JJB!LJD1;^7.$^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7.$)L"$^7-;^41LSD1LSG-LSG-;^7-;^7.$)G-;^7-;^7-;^7-LSB]IZ8BD+0P/K3J7&amp;;"C*B,B@",CA;FKY)]GR0@@@@@#0Q::$X9[B@"F,($L.''"WC8^/MKD5*@!-R$+JJB (SG-;^:R$^7.$^7-;^:Q;^7-;^7-;^7-;^7-;^:R$)JQ;I2\(JB (JB!LSD1L^7-;^7-;^:R$^7-;^7-;^7-;SD1LI91X*[L2AB&lt;DM&amp;&amp;[V:6(J0HBJ0N)BP67]99K@@@@@I?AG)U#N 9[,+JI"P0&lt;&amp;W"QV:&lt;4!U.@TF-4R$+JJB ''SG-;^7-;^:R$^7-;^7-;SD1LSB\''I2]LSD1;)JR$^7-LJB#J2,+JJB!LSB];^7-;^7-;)JQ;^7-LSD1LSD1LSD1I.0TGBZ0DK5NK&amp;1R)_ J'')0IO @$MNV&amp;WGJL@@@@@H1&lt;^O; =C(P-@0N(@3NQG!&amp;4!Z&gt;EB(R("''AJR,((SD1;^7-;^7-;)JQ;^:R$^7-;SD1LSG-;^41LSG.$)JQ;^40(JB#JJB (SD1;^7-;^7-;^7-;)G-;SD1LSD1LSD1LSBFM*P&amp;/AJ$D+6Z[N(EPJ0HBJ78E,X,=&amp;1%GSP@@@@CGG197$S6L!*6*UCNC,;Y8P+Z1MCR1,5B*[RWJ2"!L^7-;^7-;^7-;)JR$)JR$)G-LSD1L^7-;^2];)JR$)JR$^2]LSD1LSD1L^7.$)JR$)G-;^7-;^7-LSB ''I41LSD0''/(QS,SHDAZ2HF[(NBEQOJ2-O_%EVV &gt;UO2AM@@@@@JO@G''!)X0&lt;N,8Z2CH2OX6 ^Y+REMH][+UA_1B (JD1;^7-;^7-;^7.$)JR$)JR$^41LSG.$)JR$^:R$)JSL)JR$)G-;^7-;^7-;)JR$)JR$^7-;^7-;^41LSB\''SD0''SBV9 J&lt;4+@PD+1F[XP]Q*B,BJ4&lt;CA8"KOW\?Z$4@@@@@(&lt;CAG!&amp;QN%.A EF@ @][X7 "C;FE!U,HT@"&gt;JB (SD0''SG-;^41;^:R$)JR$)JQ;^7-;)JR$)JR$)JSL3L3L3L2$)JSL3L2$)JR$)JR$)JR$^7-;^7-;SD1;^7-LSD0''HP"@B*&lt;DA@QZZYVKMXF@_W5O*HB/CVE)]6!A)P@@@@AM0F&lt;^FQRNC#UVL8R3C(&lt;TP!9#"HVEB%.*TK$%2,((SD1LSG-;^7-;)JR$3L3L)JR$)JSL3L3L3L3L3L3L3L3L3L3L3L3L3L2$)JR$)JR$)JQ;^7-;^2\''SB\''I40(SBTZ @^EL PDL+^[Y(,8,:4-T@N)T0%ZC6&amp;=FDR%@@@@@JUD[4YF^ARN#H![,80:-)FUG!$O!8V1"HN("Q5JR,((SD1L^7-;^:R$3L3L3L3L3L3L3L3L3L3L3L3L3L3L3L3L)L3L3L3L3JR$)JR$)JR$)JQ;^7-;I2\''I2]LSB#IHX6@MSPFAJ2EZY,QCP)VAXB@*UN/C[])%3&lt;&gt;QJT@@@@@)TP (TX"$S(8,;L5V3(&lt;EA$^P+Y[,XVH,0MP/$)J2"!LSD1;^:R$)JSL3L3L3L3L3L3L3L3L3L2$3L3L3L3L3L2$)L3L3L3L)JR$)JR$)JSL)JR$^7-;^7-;SD0(JB^&gt; 8F1+:0DL(.[&amp;34QNP:3+:&lt;4!5(OY$JWO3:_@@@@@@B%H4E/G!8^G''^Q-(&gt;6EFV:ZLX^. :1,[FH+W5_H\+JJD1LSD1;)JR$3L3L3L2$)JR$)JR$)JR$)JR$3L3L3L3L3JR$)JR$)JR$)JR$)JR$)L3L)JQ;^41;^7-LJB (IQB@!KD2+J04O[6[.C66C08NNH-!.IV[%9\XO$,@@@@@@JWGPRA/(Q9FH''\YZC?FQ7!8(ZD"C5*1B("F*HN&gt;R$+JJD1LSD2$)L3L3L3L3JR$)G-;^7-;)JR$)JR$3L3L3L2$)JR$)JQ;^:R$)JR$)JSL3L3L)JQ;SG-;SD0(JL%0VH@JMCJ,L+Q)%2JY]9%(FQ$Y];5BH)]7FA!A20@@@@@@@D7BF2@\Q7"!G!:!(Q;AQ$Y8^A:QNKE[V%.**+$%R,+JJB (I7.$3L3L3L2$)JR$^41LSD1LSG-;^:SL3L3L3JR$^7-;SD1;^7-;)JR$)L3L3L3L)G-;^41;SB (I[.@A5*/L X4DY\Y1''!GQ12^&amp;\[F&amp;Y$?FC&lt;?O,J%@@@@@@B%)WYA%+2&lt;Z+2&lt;''):&lt;/K0\Z"AGG!$O"KEZC(R("!5JR,+JJB ''^:SL3L3L3JR$)JQ;SD1LSD1L^7-;)L3L3L3L)G-;SD1LSB]LSD1;^7.$)L3L3L2$^7-;^2]LSL$!"(BG!Z&lt;FL%*:]3=80\GA0\EGGI:^]S8X''&amp;+@10@@@@@@@@B%SY?@0LC@G&lt;C@0A&lt;_G1&lt;_G4^!^FNHB("HV:"*[T)J2,((JD1;)L3L3L3L)JR$)G-;^7-;^7-;^:R$3L3L3L2$)G-;^7-LSG-LSG-;^:R$3L3L3L2$^7-;^41L2[:- P(4L Z/"9-7''$YF\WE1\TX_G1&lt;_0A=AQGZ%@@@@@@@@@@B%SWZ_0$S@0LC@0LC@0L@_Q$\^ZP&gt;HV( 8+Z"M1D+JJD1L^:R$3L3L3L3L3JR$)JR$)JR$)JR$)L3L3L3L3JR$)JR$)JR$^7-;^7-;)JSL3L3L3JR$^7-LSB\%W:&amp;/B#P2L+DTH!#AG4QDQDQDQDQDQLKB\2N#)P@@@@@@@@@@@@@@@JWK(2''G]"L#''7OB0''M1GA9BXP8J"H"F*J5C2R (SD1;)JSL3L3L3L3L3JR$)JR$)L3L3L3L3L3L3L3L)JR$3JSL3JR$)JR$)JR$)L3L3L2$)JQ;^7,''I15X*P*1+3J/CQ$?FGGB\2M6]"M61&lt;\)(&lt;-M@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)PB%SRMAQ18TNH!ZC%.*TA@%I41LSD1;)JR$3L3L3L3L)JR$)JR$)JR$)L3L3L3L3L3L)JR$)JR$)JR$)JR$)JR$3L3L)JR$^7-;^7,$Z:%V"HV/,HT=%3&gt;&lt;0*N%@@B%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(4P G#&lt;O"H"4NHR@"!+DRR\''2R];^7.$)JR$)JR$)JR$^7.$)JQ;)JR$3L3L3L2$)JR$^7-;^7-;^7-;^:R$)JR$^7-;^2\''HY"M*[D6MJ&gt;/"F&amp;WFDE6)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%H;1/G&amp;L8-H 8"J&gt;0,U9+P2GII41LSG-;^:R$)JR$)JR$)JQ;)G.$)JSL3L3L3JR$^7-;^7-;^7-;SD1L^7.$)G,''I2\%G[.M" &amp;/"KD4+3Q!&amp;7\&gt;QD4@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B#QD\^F@&gt;4"C"K"8"E,KB4EV7D2T1;SB]L^7.$)JR$)JR$)JR$)JR$3L3L3L3L3JR$)JR$^:Q;^7-LSD1;^7-;I4$!/+!^WSRE,X M,SP4M&amp;ZWFDD#)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JT#P\D"- 88XVE "8,MM+B0WU&lt;Z\BT''I2]LSG.$)JR$)JR$)JR$)L3L3L2$3JR$)JR$)JQ;^7-LSD0(SD1LI4$]F!VTWSR1V 6K"3&amp;K,XVK]7\&gt;0,,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D7B[18T#)D=D[^7XF@9"5(4A+B4E[8!RR]LSG-;^7-;SD1L^7.$)JSL3JSL)JQ;)JR$^41LSB (JB!L2RF&gt;Z59]MKD6CX.KNS$9#!D=NIFWFDEM)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@GYA0T\?H)TTOQF7-6@9NX.H!PXF,QTZ\D$''I2\''SD0''SD1L^7.$)L3L3L2$I"Y;^7-LSB\(JB!L2RE-E[Q]MKFH"8,9NS%!-8:8Z[4YFY%(H:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@S\@ [7"!G$I7.)D=DQF7XS$9"3Z0A Z4.[8!I2\''I2\''I41;)JSL3L3L3JR$^7-LSD1LSD3II[9+W+D4ME*K"3$9XFB7OS5&amp;]4IBP)''FO$GK@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%0!-*GD]8^A:!&amp;[(TX1DQ-;] NX-ZMJ2,,QU-HT$''SD1;^7.$)JSL3L2$)JQ;^7,''SB_I1K:9-E44,U*K"3$9-;^7D[!)]4IBP)&amp;YO1 &gt;\:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B#PYZ&lt;Z+0\Q7"!G'' Y.+ QO[^7-3&amp;KC[D2+KA^Z14%I2];^7.$)JR$)G-;SD1LI2\%GV]_,[@4M(.KNS% -;^7OVZUH$IB1)$?]WU5%,B#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV#''&lt;@[Z&amp;*^GD]G(Q98%6&amp;8X34Q-6E NX.H,J2,,QB&gt;HR\''I2];^7-;^2\''I&lt;$!/+&amp;4MK@4"H,9NVB7-;^7.F%7P$H"1)$XO7U5/LB_(0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%(2O@P[15]T\\(ZE8^DHYEID=DQF7XC&amp;K"CR,+KBM.7AII2]L^41LI4%0F!V1,J&gt;1CS$9XFB7DQD=.IV=^DJY1)%5FGV^HDE3(:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@SROB0F&lt; Z):^GD]8(Q98];(TOS4=D[^7XH.1L R,%AU-HR\''I2F&gt;.YR0A#RH"3$9-;^7DS68.'']BP"KF&amp;S&lt;XFGV&lt;Q6?B\:L@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@SRMDQGEA/K2^'',YGQ7 ^^BJU.C4=OQDQ-3&amp;KV%XD+KBMY4LZW560A+F4"3% -;\QDQF8%RIBP"KF''#&lt;XFGV&lt;[&lt;H_0GOK@JT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)WYD0GE10V&gt;&lt;''):^GD]8(Q8^];*QOS4QDQE NP4I+J&amp;,,[B,MCZKXFB7D[\QO[!&amp;]7!8H,ZYO1 XFI9G0WD_P\B_SP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZM3PTD_\TY//I95''!0\^G"!G)%)EID=DQF7-3$8,P^,M@6KXFB7-1DQO[!)%7!8H,Z^]Q X]Y9/Q$X_[4ED]$4@@@@@@@@@@@ANS @@248@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@L._0DEA[4YF0RB^/GV^GG!8(Q98FVZQX34Q-;] "8,9-;^7-1D=.FXY^G!BH,Y5FA!5''!3AG4Y/[2AA0$.%@@@@@@@@@@@@@B$)S*M9^T8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D6_F4EAPV=1Q!=//I:^'',Y8^JF!^I%).C4=OQF7-;^7DS4=.K*WP'' "&amp;Y&amp;YFA!5]T]1G1=/GK0[F4R#)P@@@@@@@@@@@@@@JR$)JW%9JP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D7GQA,[%$E/G4Y1[;2^]Y:&lt;GD^!(W "FQP=OS4QDS4=.IT"^BKF1)%5FA!5''&amp;=10&amp;=//K2V%$P#20@@@@@@@@@@@@@@@@@)^W%9^W$)S @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AMH4P[Z"B&lt;[6=1Q,EA/GU5/A0\^LD^^I&amp;:.FNQZW]B^BKF&amp;WU5FGV^GDYFQ$F&lt;Z)ZV%,B_(0@@@@@@@@@@@@@@@@@@@GY9JR%9^R$)@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@27L[F9ZV/DE/0TY1[;15]Y:^Q7"!(W "&amp;Y%8^L[F&amp;WTXFA"^[1=FQ$\\/F)*Z)[B(:T@@@@@@@@@@@@@@@@@@@@@JR%NS''$)S"%N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZM3F9ZV%)X PV&lt;_G1=G''''V^''!1G^JE8P,ZY&amp;S&lt;XFI8\0TYFQ11*/F)*%!-D(:T@@@@@@@@@@@@@@@@@@@@@@@A9^R$)^ZL@S"%N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZWG\&lt;@[%)ZV/BCAQ$[AQ9:^]Y8\Q&lt;Z^FA X]WT\G1?AQ;2&lt;Z&amp;*V%!/B]$4@@@@@@@@@@@@@@@@@@@@@@@@@@B$)S,-9(0@@(2$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%SZN_QDD[%)ZVPV?B0,EG''''V^FA!5'')9GG1=/HK2VZ)ZV0DQ62:T@)P@@@@@@@@@@@@@@@@@@@@@@@@@@JR$)JR%N@@@@S @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JUM(2OBPQ,[PTEA\Q&lt;_PV(&gt;Z+0_G1=APYZVF1-D\&lt;]M)ZV%)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@S AN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D6#12M30$QDQDR_0!/@QDS@QLJ_''9&lt;#(46%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)ZV%)T6%(:N#]''[G(&lt;-M)PB%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@b'))</body>

<body package="RobotMove" selector="mask">mask
	"UIMaskEditor new openOnClass: self andSelector: #mask"

	&lt;resource: #image&gt;
	^(Image extent: 126@109 depth: 1 bitsPerPixel: 1 palette: CoveragePalette monoMaskPalette usingBits: (ByteArray fromPackedString: '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@A8@@@@@@@@@@@@@@@@@@@C? @@@@@@@@@@@@@@@@@@G??@@@@@@@@@@@@@@@@@@G??&gt;@@@@@@@@@@@@@@@@@O???8@@@@@@@@@@@@@@@@_????0@@@@@@@@@@@@@@@_?????@@@@@@@@@@@@@@@_?????&gt;@@@@@@@@@@@@@@???????8@@@@@@@@@@@@@????????0@@@@@@@@@@@A?????????@@@@@@@@@@@A?????????&gt;@@@@@@@@@@C??????????8@@@@@@@@@C???????????0@@@@@@@@C????????????@@@@@@@@A????????????0@@@@@@@@????????????&gt;@@@@@@@@O????????????0@@@@@@@G????????????&lt;@@@@@@@A?????????????@@@@@@@@?????????????8@@@@@@@O????????????&gt;@@@@@@@G?????????????0@@@@@@A?????????????&lt;@@@@@@@?????????????? @@@@@@O?????????????8@@@@A??????????????????@@@??????????????????&lt;@A??????????????????? @???????????????????&lt;@O???????????????????@G???????????????????8A???????????????????&gt;@_???????????????????0G???????????????????&lt;A????????????????????@_???????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0G???????????????????&lt;A????????????????????@O???????????????????0C???????????????????&lt;@???????????????????&gt;@G???????????????????@@G?????????????????? @@@G??????????????@@@@@@A?????????????? @@@@@@O?????????????8@@@@@@C?????????????&gt;@@@@@@@_?????????????@@@@@@@G?????????????0@@@@@@@?????????????8@@@@@@@G????????????&gt;@@@@@@@A?????????????@@@@@@@@O????????????0@@@@@@@A????????????8@@@@@@@@G???????????8@@@@@@@@@_??????????8@@@@@@@@@A??????????8@@@@@@@@@@G?????????8@@@@@@@@@@@O????????8@@@@@@@@@@@@????????0@@@@@@@@@@@@A???????0@@@@@@@@@@@@@G?????? @@@@@@@@@@@@@@O????? @@@@@@@@@@@@@@@?????@@@@@@@@@@@@@@@@A????@@@@@@@@@@@@@@@@@G??&gt;@@@@@@@@@@@@@@@@@@O?&gt;@@@@@@@@@@@@@@@@@@@?&gt;@@@@@@@@@@@@@@@@@@@A&lt;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@a'))</body>

<body package="RobotMove" selector="image">image

		&lt;resource: #image&gt;
		^OpaqueImage figure: self basicImage shape: self mask.</body>
</methods>

<methods>
<class-id>RobotInspector class</class-id> <category>instance creation</category>

<body package="RobotMove" selector="robot:">robot: aRobot

		^self new initialize; robot: aRobot; open.</body>

<body package="RobotMove" selector="new:">new: aController
	^super new initialize robot: aController model.</body>
</methods>


<methods>
<class-id>RobotInspector</class-id> <category>changing</category>

<body package="RobotMove" selector="tabsChanged">tabsChanged
	"Every time a tab is changed, a new sub canvas gets installed."

		| index |

		index := self tabs selectionIndex.
		(self builder componentAt: #tabbing) widget client: self spec: (self specArray at: index)</body>
</methods>

<methods>
<class-id>RobotInspector</class-id> <category>initialize</category>

<body package="RobotMove" selector="initialize">initialize

		super initialize.
		self myselfText: self defaultText asText asValue.
		self inspector: NoRenamingInspector new.
		self browser: (InstanceBehaviorInspector on: nil).
		self explanationText: 'Mientras que los objetos se refieren a mi con el nombre de ''robotech'' yo me refiero a mi mismos como self' asText.
		self explanationText emphasizeFrom: (self explanationText size - 4) to: self explanationText size with: #bold.
		self direction: '' asValue.
		self battery: '' asValue.
		self position: '' asValue.</body>
</methods>

<methods>
<class-id>RobotInspector</class-id> <category>menus</category>

<body package="RobotMove" selector="myselfTextMenu">myselfTextMenu

		^[Menu
				labelList: ParagraphEditor editGroupLabels, #(('do it' 'print it' 'inspect'))
				values: ParagraphEditor editGroupSelectors, #(doIt printIt inspectIt)].</body>

<body package="RobotMove" selector="doItContext">doItContext

		^nil</body>

<body package="RobotMove" selector="doItReceiver">doItReceiver

		^self robot.</body>
</methods>

<methods>
<class-id>RobotInspector</class-id> <category>aspects</category>

<body package="RobotMove" selector="inspector">inspector

		^inspector.</body>

<body package="RobotMove" selector="theInspector">theInspector

		^inspector.</body>

<body package="RobotMove" selector="tabs">tabs

		tabs isNil
			ifTrue: 
				[(tabs := SelectionInList with: self labelArray) selectionIndex: 1.
				tabs selectionIndexHolder onChangeSend: #tabsChanged to: self].
		^tabs</body>

<body package="RobotMove" selector="explanationText">explanationText

		^explanationText.</body>

<body package="RobotMove" selector="battery">battery
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^battery isNil
		ifTrue:
			[battery := String new asValue]
		ifFalse:
			[battery]</body>

<body package="RobotMove" selector="name">name
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^name isNil
		ifTrue:
			[name := String new asValue]
		ifFalse:
			[name]</body>

<body package="RobotMove" selector="position">position
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^position isNil
		ifTrue:
			[position := String new asValue]
		ifFalse:
			[position]</body>

<body package="RobotMove" selector="direction">direction
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^direction isNil
		ifTrue:
			[direction := String new asValue]
		ifFalse:
			[direction]</body>

<body package="RobotMove" selector="browser">browser

		^browser.</body>

<body package="RobotMove" selector="myselfText">myselfText
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined."

	^myselfText</body>
</methods>

<methods>
<class-id>RobotInspector</class-id> <category>accessing</category>

<body package="RobotMove" selector="tabs:">tabs: aTabs 

		tabs:=aTabs.</body>

<body package="RobotMove" selector="robot:">robot: aRobot 

		robot:= aRobot.
		self updateValueHolders.</body>

<body package="RobotMove" selector="robot">robot

		^robot.</body>
</methods>

<methods>
<class-id>RobotInspector</class-id> <category>actions</category>

<body package="RobotMove" selector="refresh">refresh

		self updateValueHolders.</body>
</methods>

<methods>
<class-id>RobotInspector</class-id> <category>private</category>

<body package="RobotMove" selector="updateValueHolders">updateValueHolders

		| bat |

		bat:=self robot battery.
		self direction value: ('Dirección : ' , self robot direction printString , '°').
		self battery value:  ('Batería : ' , (bat charge printString) , '  (' , (bat charge * 100 / bat capacity) rounded printString , '%)').
		self position value: ('Posición : ' , self robot position printString).
		self inspector inspect: self robot.
		self browser initialize: self robot.</body>
</methods>

<methods>
<class-id>RobotInspector</class-id> <category>interface opening</category>

<body package="RobotMove" selector="postOpenWith:">postOpenWith: aBuilder 

		super postOpenWith: aBuilder.
		self tabsChanged</body>
</methods>

<methods>
<class-id>RobotInspector</class-id> <category>private - accessing</category>

<body package="RobotMove" selector="direction:">direction: aDirection 

		direction:=aDirection.</body>

<body package="RobotMove" selector="browser:">browser: aBrowser 

		browser:=aBrowser.</body>

<body package="RobotMove" selector="explanationText:">explanationText: anExplanationText 

		explanationText:=anExplanationText.</body>

<body package="RobotMove" selector="name:">name: aName 

		name:=aName.</body>

<body package="RobotMove" selector="myselfText:">myselfText: aText

		myselfText:=aText.</body>

<body package="RobotMove" selector="labelArray">labelArray

		^Array
			with: (self robot world getRobotName: self robot)
"			with: 'self'"
			with: 'Inside an inspector'
			with: 'Definition'</body>

<body package="RobotMove" selector="battery:">battery: aBattery 

		battery:=aBattery.</body>

<body package="RobotMove" selector="inspector:">inspector: anInspector 

		inspector:=anInspector.</body>

<body package="RobotMove" selector="defaultText">defaultText

^'"Me envío a mi mismo el mensaje #direction:, con parámetro 180"
self direction: 180

"Avanzo 30 pasos"
self move: 30

"Mensajes en cascada: dejo marcado mi recorrido y avanzo 20 pasos"
self brushDown; move: 30
'</body>

<body package="RobotMove" selector="position:">position: aPosition 

		position:=aPosition.</body>

<body package="RobotMove" selector="specArray">specArray
	"Private - The list of associated sub canvaes. See also #labelArray."

	^#(#presentation #inspector #robotBrowser).</body>
</methods>


<methods>
<class-id>RobotApplication class</class-id> <category>resources</category>

<body package="RobotMove" selector="robotIcon">robotIcon
	"Tools.UIMaskEditor new openOnClass: self andSelector: #robotIcon"

	&lt;resource: #image&gt;
	^CachedImage on: (Image extent: 31@32 depth: 9 bitsPerPixel: 16 palette: (Graphics.MappedPalette withColors: ((Core.Array new: 307) at: 1 put: Graphics.ColorValue black; at: 2 put: (Graphics.ColorValue scaledRed: 7134 scaledGreen: 7134 scaledBlue: 6605); at: 3 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 8191 scaledBlue: 4756); at: 4 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 4491); at: 5 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 3699 scaledBlue: 3963); at: 6 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 3699 scaledBlue: 3699); at: 7 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 2906 scaledBlue: 3699); at: 8 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 3434 scaledBlue: 3963); at: 9 put: (Graphics.ColorValue scaledRed: 3963 scaledGreen: 792 scaledBlue: 1321); at: 10 put: (Graphics.ColorValue scaledRed: 3699 scaledGreen: 1056 scaledBlue: 1321); at: 11 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 0 scaledBlue: 0); at: 12 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 528 scaledBlue: 0); at: 13 put: (Graphics.ColorValue scaledRed: 4756 scaledGreen: 1056 scaledBlue: 264); at: 14 put: (Graphics.ColorValue scaledRed: 4756 scaledGreen: 792 scaledBlue: 528); at: 15 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 2378 scaledBlue: 3170); at: 16 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 2906 scaledBlue: 3170); at: 17 put: (Graphics.ColorValue scaledRed: 3434 scaledGreen: 3963 scaledBlue: 4756); at: 18 put: (Graphics.ColorValue scaledRed: 2906 scaledGreen: 792 scaledBlue: 1056); at: 19 put: (Graphics.ColorValue scaledRed: 3434 scaledGreen: 528 scaledBlue: 792); at: 20 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 1056 scaledBlue: 1321); at: 21 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 792 scaledBlue: 792); at: 22 put: (Graphics.ColorValue scaledRed: 2642 scaledGreen: 1056 scaledBlue: 1056); at: 23 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 1321 scaledBlue: 1056); at: 24 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 7134 scaledBlue: 4227); at: 25 put: (Graphics.ColorValue scaledRed: 7134 scaledGreen: 7134 scaledBlue: 3963); at: 26 put: (Graphics.ColorValue scaledRed: 4491 scaledGreen: 3434 scaledBlue: 2906); at: 27 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 2113 scaledBlue: 2642); at: 28 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 2378 scaledBlue: 2642); at: 29 put: (Graphics.ColorValue scaledRed: 2642 scaledGreen: 528 scaledBlue: 264); at: 30 put: (Graphics.ColorValue scaledRed: 3434 scaledGreen: 0 scaledBlue: 0); at: 31 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7926); at: 32 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 8191); at: 33 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 8191 scaledBlue: 8191); at: 34 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 0 scaledBlue: 1585); at: 35 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 264 scaledBlue: 1056); at: 36 put: (Graphics.ColorValue scaledRed: 2113 scaledGreen: 0 scaledBlue: 0); at: 37 put: (Graphics.ColorValue scaledRed: 1849 scaledGreen: 0 scaledBlue: 264); at: 38 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 528 scaledBlue: 1585); at: 39 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 792 scaledBlue: 1056); at: 40 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 7926 scaledBlue: 7662); at: 41 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 7926); at: 42 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 5020 scaledBlue: 5020); at: 43 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 3170 scaledBlue: 4227); at: 44 put: (Graphics.ColorValue scaledRed: 5020 scaledGreen: 5020 scaledBlue: 5548); at: 45 put: (Graphics.ColorValue scaledRed: 5020 scaledGreen: 5548 scaledBlue: 5020); at: 46 put: (Graphics.ColorValue scaledRed: 2113 scaledGreen: 2642 scaledBlue: 3434); at: 47 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 0 scaledBlue: 1321); at: 48 put: (Graphics.ColorValue scaledRed: 7134 scaledGreen: 0 scaledBlue: 1056); at: 49 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 0 scaledBlue: 792); at: 50 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 0 scaledBlue: 528); at: 51 put: (Graphics.ColorValue scaledRed: 3963 scaledGreen: 2113 scaledBlue: 2113); at: 52 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 0 scaledBlue: 0); at: 53 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 528 scaledBlue: 0); at: 54 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 264 scaledBlue: 264); at: 55 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 0 scaledBlue: 264); at: 56 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 0 scaledBlue: 792); at: 57 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 264 scaledBlue: 528); at: 58 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 528 scaledBlue: 264); at: 59 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 0 scaledBlue: 528); at: 60 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 5812); at: 61 put: (Graphics.ColorValue scaledRed: 7134 scaledGreen: 7134 scaledBlue: 7398); at: 62 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 2906 scaledBlue: 3699); at: 63 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 3699 scaledBlue: 3963); at: 64 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 0 scaledBlue: 1056); at: 65 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 0 scaledBlue: 528); at: 66 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 1056 scaledBlue: 0); at: 67 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 4756); at: 68 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 4491 scaledBlue: 5284); at: 69 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 2378 scaledBlue: 3699); at: 70 put: (Graphics.ColorValue scaledRed: 3434 scaledGreen: 1056 scaledBlue: 1056); at: 71 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 1056 scaledBlue: 1321); at: 72 put: (Graphics.ColorValue scaledRed: 2906 scaledGreen: 1321 scaledBlue: 1321); at: 73 put: (Graphics.ColorValue scaledRed: 2642 scaledGreen: 1585 scaledBlue: 1321); at: 74 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 7398 scaledBlue: 4227); at: 75 put: (Graphics.ColorValue scaledRed: 5284 scaledGreen: 3170 scaledBlue: 3170); at: 76 put: (Graphics.ColorValue scaledRed: 4756 scaledGreen: 3699 scaledBlue: 3170); at: 77 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 2642 scaledBlue: 3434); at: 78 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 2378 scaledBlue: 2906); at: 79 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 3170 scaledBlue: 2642); at: 80 put: (Graphics.ColorValue scaledRed: 3963 scaledGreen: 264 scaledBlue: 0); at: 81 put: (Graphics.ColorValue scaledRed: 3699 scaledGreen: 528 scaledBlue: 0); at: 82 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 6605 scaledBlue: 4227); at: 83 put: (Graphics.ColorValue scaledRed: 4491 scaledGreen: 2642 scaledBlue: 3170); at: 84 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 1321 scaledBlue: 2378); at: 85 put: (Graphics.ColorValue scaledRed: 2642 scaledGreen: 3434 scaledBlue: 4227); at: 86 put: (Graphics.ColorValue scaledRed: 1056 scaledGreen: 1056 scaledBlue: 792); at: 87 put: (Graphics.ColorValue scaledRed: 1849 scaledGreen: 528 scaledBlue: 528); at: 88 put: (Graphics.ColorValue scaledRed: 2906 scaledGreen: 0 scaledBlue: 0); at: 89 put: (Graphics.ColorValue scaledRed: 2642 scaledGreen: 0 scaledBlue: 264); at: 90 put: (Graphics.ColorValue scaledRed: 1585 scaledGreen: 528 scaledBlue: 792); at: 91 put: (Graphics.ColorValue scaledRed: 1321 scaledGreen: 0 scaledBlue: 1585); at: 92 put: (Graphics.ColorValue scaledRed: 1585 scaledGreen: 0 scaledBlue: 1321); at: 93 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 8191 scaledBlue: 7926); at: 94 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 8191 scaledBlue: 8191); at: 95 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 7926); at: 96 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 8191 scaledBlue: 7662); at: 97 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7662); at: 98 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 7926 scaledBlue: 8191); at: 99 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7398 scaledBlue: 8191); at: 100 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 1056 scaledBlue: 2113); at: 101 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 0 scaledBlue: 1056); at: 102 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 0 scaledBlue: 1321); at: 103 put: (Graphics.ColorValue scaledRed: 7134 scaledGreen: 264 scaledBlue: 1585); at: 104 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 792 scaledBlue: 1585); at: 105 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 528 scaledBlue: 1056); at: 106 put: (Graphics.ColorValue scaledRed: 1585 scaledGreen: 0 scaledBlue: 0); at: 107 put: (Graphics.ColorValue scaledRed: 1321 scaledGreen: 264 scaledBlue: 0); at: 108 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 264 scaledBlue: 528); at: 109 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 792 scaledBlue: 528); at: 110 put: (Graphics.ColorValue scaledRed: 1321 scaledGreen: 0 scaledBlue: 264); at: 111 put: (Graphics.ColorValue scaledRed: 1056 scaledGreen: 0 scaledBlue: 528); at: 112 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 264 scaledBlue: 792); at: 113 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 0 scaledBlue: 1321); at: 114 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 0 scaledBlue: 792); at: 115 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 792 scaledBlue: 0); at: 116 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 7662 scaledBlue: 7398); at: 117 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 0 scaledBlue: 1056); at: 118 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 6077); at: 119 put: (Graphics.ColorValue scaledRed: 1056 scaledGreen: 528 scaledBlue: 0); at: 120 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 4227 scaledBlue: 3963); at: 121 put: (Graphics.ColorValue scaledRed: 5020 scaledGreen: 5284 scaledBlue: 4756); at: 122 put: (Graphics.ColorValue scaledRed: 4227 scaledGreen: 4756 scaledBlue: 6077); at: 123 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 6077 scaledBlue: 2642); at: 124 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 792 scaledBlue: 1321); at: 125 put: (Graphics.ColorValue scaledRed: 5284 scaledGreen: 1056 scaledBlue: 1321); at: 126 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 0 scaledBlue: 792); at: 127 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 528 scaledBlue: 1321); at: 128 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 0 scaledBlue: 1056); at: 129 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 1056 scaledBlue: 0); at: 130 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 1321 scaledBlue: 0); at: 131 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 264 scaledBlue: 0); at: 132 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 0 scaledBlue: 0); at: 133 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 0 scaledBlue: 264); at: 134 put: (Graphics.ColorValue scaledRed: 7134 scaledGreen: 6869 scaledBlue: 7134); at: 135 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 8191 scaledBlue: 5284); at: 136 put: (Graphics.ColorValue scaledRed: 3434 scaledGreen: 1321 scaledBlue: 1585); at: 137 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 0 scaledBlue: 0); at: 138 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 528 scaledBlue: 0); at: 139 put: (Graphics.ColorValue scaledRed: 3963 scaledGreen: 1321 scaledBlue: 1056); at: 140 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 3170 scaledBlue: 3699); at: 141 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 2642 scaledBlue: 3699); at: 142 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 2378 scaledBlue: 3170); at: 143 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 2906 scaledBlue: 3434); at: 144 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 792 scaledBlue: 1056); at: 145 put: (Graphics.ColorValue scaledRed: 3699 scaledGreen: 792 scaledBlue: 528); at: 146 put: (Graphics.ColorValue scaledRed: 4491 scaledGreen: 528 scaledBlue: 0); at: 147 put: (Graphics.ColorValue scaledRed: 4756 scaledGreen: 3434 scaledBlue: 4227); at: 148 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 5812 scaledBlue: 6605); at: 149 put: (Graphics.ColorValue scaledRed: 5284 scaledGreen: 2642 scaledBlue: 3170); at: 150 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 1849 scaledBlue: 2378); at: 151 put: (Graphics.ColorValue scaledRed: 3434 scaledGreen: 264 scaledBlue: 0); at: 152 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 528 scaledBlue: 1056); at: 153 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 3434 scaledBlue: 3963); at: 154 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 2378 scaledBlue: 1849); at: 155 put: (Graphics.ColorValue scaledRed: 1849 scaledGreen: 264 scaledBlue: 264); at: 156 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 0 scaledBlue: 0); at: 157 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 528 scaledBlue: 1321); at: 158 put: (Graphics.ColorValue scaledRed: 1321 scaledGreen: 264 scaledBlue: 792); at: 159 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 7662); at: 160 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7398 scaledBlue: 7662); at: 161 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 8191 scaledBlue: 7398); at: 162 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 7662 scaledBlue: 7926); at: 163 put: (Graphics.ColorValue scaledRed: 5284 scaledGreen: 5548 scaledBlue: 5020); at: 164 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 0 scaledBlue: 1056); at: 165 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 2642 scaledBlue: 3434); at: 166 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 0 scaledBlue: 264); at: 167 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 264 scaledBlue: 264); at: 168 put: (Graphics.ColorValue scaledRed: 1056 scaledGreen: 0 scaledBlue: 0); at: 169 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 264 scaledBlue: 0); at: 170 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 0 scaledBlue: 792); at: 171 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 264 scaledBlue: 792); at: 172 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 0 scaledBlue: 1056); at: 173 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 792 scaledBlue: 264); at: 174 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 0 scaledBlue: 528); at: 175 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 528 scaledBlue: 264); at: 176 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 528 scaledBlue: 528); at: 177 put: (Graphics.ColorValue scaledRed: 7134 scaledGreen: 7398 scaledBlue: 7398); at: 178 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 528 scaledBlue: 0); at: 179 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 8191 scaledBlue: 5812); at: 180 put: (Graphics.ColorValue scaledRed: 4491 scaledGreen: 4491 scaledBlue: 5548); at: 181 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 3699 scaledBlue: 4227); at: 182 put: (Graphics.ColorValue scaledRed: 3963 scaledGreen: 5020 scaledBlue: 5548); at: 183 put: (Graphics.ColorValue scaledRed: 3699 scaledGreen: 5020 scaledBlue: 5812); at: 184 put: (Graphics.ColorValue scaledRed: 4756 scaledGreen: 5020 scaledBlue: 4756); at: 185 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 5548); at: 186 put: (Graphics.ColorValue scaledRed: 4756 scaledGreen: 1321 scaledBlue: 1056); at: 187 put: (Graphics.ColorValue scaledRed: 4227 scaledGreen: 1585 scaledBlue: 1321); at: 188 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 0 scaledBlue: 1321); at: 189 put: (Graphics.ColorValue scaledRed: 6869 scaledGreen: 264 scaledBlue: 0); at: 190 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 792 scaledBlue: 0); at: 191 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 2378 scaledBlue: 3170); at: 192 put: (Graphics.ColorValue scaledRed: 4491 scaledGreen: 528 scaledBlue: 792); at: 193 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 1321 scaledBlue: 1321); at: 194 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 2906 scaledBlue: 3434); at: 195 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 3170 scaledBlue: 3170); at: 196 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 3963 scaledBlue: 4756); at: 197 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 1849 scaledBlue: 2642); at: 198 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 2378 scaledBlue: 3434); at: 199 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 792 scaledBlue: 528); at: 200 put: (Graphics.ColorValue scaledRed: 3963 scaledGreen: 528 scaledBlue: 0); at: 201 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 1056 scaledBlue: 1056); at: 202 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 5812 scaledBlue: 6605); at: 203 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 3434 scaledBlue: 3963); at: 204 put: (Graphics.ColorValue scaledRed: 2113 scaledGreen: 528 scaledBlue: 528); at: 205 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 0 scaledBlue: 0); at: 206 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7926); at: 207 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 8191 scaledBlue: 8191); at: 208 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7662); at: 209 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 8191); at: 210 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 8191 scaledBlue: 7926); at: 211 put: (Graphics.ColorValue scaledRed: 5020 scaledGreen: 5284 scaledBlue: 6341); at: 212 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 8191); at: 213 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 6605 scaledBlue: 3699); at: 214 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 6605 scaledBlue: 3434); at: 215 put: (Graphics.ColorValue scaledRed: 2113 scaledGreen: 3170 scaledBlue: 3963); at: 216 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 264 scaledBlue: 1585); at: 217 put: (Graphics.ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 3699); at: 218 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 792 scaledBlue: 792); at: 219 put: (Graphics.ColorValue scaledRed: 1585 scaledGreen: 0 scaledBlue: 264); at: 220 put: (Graphics.ColorValue scaledRed: 1849 scaledGreen: 0 scaledBlue: 0); at: 221 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 264 scaledBlue: 1585); at: 222 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 792 scaledBlue: 528); at: 223 put: (Graphics.ColorValue scaledRed: 1321 scaledGreen: 0 scaledBlue: 528); at: 224 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 0 scaledBlue: 1056); at: 225 put: (Graphics.ColorValue scaledRed: 1056 scaledGreen: 264 scaledBlue: 528); at: 226 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 1056 scaledBlue: 0); at: 227 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 7926 scaledBlue: 7398); at: 228 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 7926 scaledBlue: 7134); at: 229 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 7662 scaledBlue: 7398); at: 230 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 7398); at: 231 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 7398 scaledBlue: 7926); at: 232 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 4756 scaledBlue: 4491); at: 233 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 3963 scaledBlue: 4756); at: 234 put: (Graphics.ColorValue scaledRed: 4756 scaledGreen: 5020 scaledBlue: 5548); at: 235 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 7926); at: 236 put: (Graphics.ColorValue scaledRed: 1849 scaledGreen: 2642 scaledBlue: 3434); at: 237 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 528 scaledBlue: 0); at: 238 put: (Graphics.ColorValue scaledRed: 1585 scaledGreen: 2642 scaledBlue: 3699); at: 239 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 0 scaledBlue: 528); at: 240 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 0 scaledBlue: 264); at: 241 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 6077 scaledBlue: 2906); at: 242 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 0 scaledBlue: 0); at: 243 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 264 scaledBlue: 0); at: 244 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 264 scaledBlue: 264); at: 245 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 0 scaledBlue: 264); at: 246 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 0 scaledBlue: 528); at: 247 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 528 scaledBlue: 0); at: 248 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 6341 scaledBlue: 2642); at: 249 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 7662); at: 250 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 8191 scaledBlue: 5284); at: 251 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 5020); at: 252 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 1056 scaledBlue: 0); at: 253 put: (Graphics.ColorValue scaledRed: 5284 scaledGreen: 1321 scaledBlue: 0); at: 254 put: (Graphics.ColorValue scaledRed: 4227 scaledGreen: 1321 scaledBlue: 1056); at: 255 put: (Graphics.ColorValue scaledRed: 4227 scaledGreen: 792 scaledBlue: 1585); at: 256 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 0 scaledBlue: 264); at: 257 put: (Graphics.ColorValue scaledRed: 6605 scaledGreen: 0 scaledBlue: 0); at: 258 put: (Graphics.ColorValue scaledRed: 5812 scaledGreen: 3170 scaledBlue: 3699); at: 259 put: (Graphics.ColorValue scaledRed: 3699 scaledGreen: 528 scaledBlue: 1056); at: 260 put: (Graphics.ColorValue scaledRed: 2906 scaledGreen: 1321 scaledBlue: 1056); at: 261 put: (Graphics.ColorValue scaledRed: 2906 scaledGreen: 1056 scaledBlue: 1321); at: 262 put: (Graphics.ColorValue scaledRed: 5020 scaledGreen: 264 scaledBlue: 0); at: 263 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 7134 scaledBlue: 4227); at: 264 put: (Graphics.ColorValue scaledRed: 5548 scaledGreen: 2642 scaledBlue: 3170); at: 265 put: (Graphics.ColorValue scaledRed: 3170 scaledGreen: 3699 scaledBlue: 4491); at: 266 put: (Graphics.ColorValue scaledRed: 3434 scaledGreen: 528 scaledBlue: 0); at: 267 put: (Graphics.ColorValue scaledRed: 2642 scaledGreen: 528 scaledBlue: 792); at: 268 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 792); at: 269 put: (Graphics.ColorValue scaledRed: 5284 scaledGreen: 1849 scaledBlue: 2906); at: 270 put: (Graphics.ColorValue scaledRed: 2642 scaledGreen: 3434 scaledBlue: 3963); at: 271 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 792 scaledBlue: 1585); at: 272 put: (Graphics.ColorValue scaledRed: 2642 scaledGreen: 0 scaledBlue: 0); at: 273 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 0 scaledBlue: 264); at: 274 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 7926 scaledBlue: 7926); at: 275 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 7662); at: 276 put: (Graphics.ColorValue scaledRed: 7134 scaledGreen: 8191 scaledBlue: 8191); at: 277 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 7926); at: 278 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 7662); at: 279 put: (Graphics.ColorValue scaledRed: 7398 scaledGreen: 7926 scaledBlue: 8191); at: 280 put: (Graphics.ColorValue scaledRed: 5020 scaledGreen: 5284 scaledBlue: 5812); at: 281 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 8191 scaledBlue: 7398); at: 282 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7398); at: 283 put: (Graphics.ColorValue scaledRed: 4491 scaledGreen: 2113 scaledBlue: 2113); at: 284 put: (Graphics.ColorValue scaledRed: 6077 scaledGreen: 1056 scaledBlue: 1585); at: 285 put: (Graphics.ColorValue scaledRed: 5284 scaledGreen: 1321 scaledBlue: 2113); at: 286 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 0 scaledBlue: 792); at: 287 put: (Graphics.ColorValue scaledRed: 1056 scaledGreen: 0 scaledBlue: 264); at: 288 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 264 scaledBlue: 1056); at: 289 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 0 scaledBlue: 1321); at: 290 put: (Graphics.ColorValue scaledRed: 528 scaledGreen: 528 scaledBlue: 264); at: 291 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 528 scaledBlue: 792); at: 292 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 528 scaledBlue: 528); at: 293 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 0 scaledBlue: 1056); at: 294 put: (Graphics.ColorValue scaledRed: 264 scaledGreen: 792 scaledBlue: 264); at: 295 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 264 scaledBlue: 264); at: 296 put: (Graphics.ColorValue scaledRed: 0 scaledGreen: 792 scaledBlue: 528); at: 297 put: (Graphics.ColorValue scaledRed: 1321 scaledGreen: 0 scaledBlue: 0); at: 298 put: (Graphics.ColorValue scaledRed: 792 scaledGreen: 528 scaledBlue: 0); at: 299 put: (Graphics.ColorValue scaledRed: 1056 scaledGreen: 264 scaledBlue: 0); at: 300 put: (Graphics.ColorValue scaledRed: 7662 scaledGreen: 7926 scaledBlue: 6605); at: 301 put: (Graphics.ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 5812); at: 302 put: (Graphics.ColorValue scaledRed: 4756 scaledGreen: 5020 scaledBlue: 5020); at: 303 put: (Graphics.ColorValue scaledRed: 7926 scaledGreen: 8191 scaledBlue: 6077); at: 304 put: (Graphics.ColorValue scaledRed: 3963 scaledGreen: 1585 scaledBlue: 1849); at: 305 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 2642 scaledBlue: 2378); at: 306 put: (Graphics.ColorValue scaledRed: 6341 scaledGreen: 1056 scaledBlue: 0); at: 307 put: (Graphics.ColorValue scaledRed: 2378 scaledGreen: 2906 scaledBlue: 2113); yourself)) usingBits: (ByteArray fromPackedString: '@L&lt;@8 A\@L8@3 A]@QL@H@@ @I8AI C1@CL@)P@3@OD@&lt;PB&amp;@@@@@@@@@@@AI0CN@L8@H@@ @B@@G @^@A8@@@C#@CP@  @''@HH@@@@ @B@@H@BC@CL@L0D(@J\@)0CZ@R @)0C1@HL@&lt;PC1@CT@@@@ @B@@H@@ @B@@H@@^@@@AJP@@@@@@H@@@@@@@MP@_@I&lt;@U D(@H,@0PBT@N @#@@N@A(@C0B4@P\A@P@3@JT@H@@ @B@@H@@ @B@@H@@@@HL@ 0@ @QD@H@BD@@@@H@CM@J\AJ@@E@R&lt;@ZPC[@O8@^0D[@L0@&amp;0D\@@ @60@3@B@@H@@ @B@@H@CN@B@@@@@@@OHAD @ @B@@@@C3@B@@G B(@OD@FP@3@N\@L0C[@G0@3@AW@I,@&amp;0DB@R @&lt;P@ @B@@H@@ @L8@3 @ @@@@@@@@@CT@H@BD@M$@@@A3@B@@ 0@3@D,@L0@3@F(AJ@B9@E\@H0A7@I,@V@@3@CL@H@@ @B@@H@CN@L8@H@@@@OD@M C4@Q4@=PD]@OP@G0A^@J\@ZPAJ@R @60C[@F$@$@C[@R @)0A)@L@@&lt;P@@@B@@H@@ @B@@H@CN@B@@@@C4@HP@*PC5@C\@=P@"@M@@G0B''@R @0 AE@M,@ZP@I@K(@1 A)@CLA@0DK@HL@ 0@ @B@@H@@ @B@@H@@ @@@@N@@8@KT@5 CC@C\@M0@_@M@AG B''@@P@DP@#@H\@#0@R@@$@DPAG@DXAA@C1@HL@H@@ @A&lt;@'' @ @B@@9@@@@F @* B6@DL@;PB+@Q&lt;@H@@ @OD@L0@3@I(@ZPB''@J\@ZPD(@CL@L0D(@J\@VP@@@B@@H@@ @A8@4PB @A8@@@D_@C\@4 B+@R@@7@@7@ML@H@@_@L4@L0BC@HL@*@BC@CL@L0B&amp;@HL@&lt;P@3@A&lt;@H@@ @B@@9P@^@E&lt;@G CO@@@@=PB\@C\@*0B+@J,@M0@ @ML@H@@ @@@AHP@A@JH@^@@)@B$@-0D0@F,@ 0DQ@B@@H@@ @L4@H@CQ@MD@G @@@OT@M0A(@C\@D@@-@OTAH @@@M4@@@@@@@@@  BB@@@@@@@@@J0@= @5@@@@[@@@@OL@@@@@@@@@@@@9@B@@@@BD@HP@=PC)@L(@=PB)@OP@''P@3@CL@)0B''@J\@L0B''@R @&lt;PBC@HL@&lt;PD^@@@@!@@@@HP@+PBD@HP@!@BD@@@@H@D#@HP@!@@:@CX@7 A)@P0@A @=@IT@/ CD@B(@T0BM@A,@O @G@H8@S@AR@IH@+PC4@C(@$0DM@C AC @@@B@@@@@@@OP@M D^@BP@1PA#@C&lt;@K A=@BD@(0@/@M\@_ DO@I,@H0@#@M,@[P@6@Q4@=PD$@C\@U@A(@C\@@@@ @B@@M BC@F8@)0DP@DP@.0A?@FT@Y@@0@N8@L@A&amp;@E\@60A)@F$@)0C1@F&lt;@=P@7@J,@^P@%@J,@*0@7@@@@H@@ @QP@Z0C1@J\@60AM@F\@?0D@@N&lt;@;0@1@I\@P@B?@Q(@L @S@CX@!@B$@P @Z@@7@I @:0@7@C\AG0@@@B@@J@@ @B@@ 0@3@A0@&amp;PDE@H@@"@B&lt;@N0@"@@J@@,@U0A)@F$@[ AZ@RP@\@@7@HPAI0D%@RT@  @@@B@@@@@ @B@@(P@ @HL@&lt;PB''@D8@C@C;@@,@"PD1@HD@PPC&lt;@O4@H0A)@F4@V0A1@M&lt;@+PBC@@@@@@@@@OH@30DU@@@@H@A3@B@ADPDQ@HL@&lt;PA)@H(@GP@M@ID@GPAO@L\@T@BV@P$@?P@T@APAB @U@L,@2@AH@AXAJ C1@F@@X@@@@A8@4P@ @B@@H@@5@HL@L0B''@F$@H0C[@BL@H0D(@R @60D(@R AJ@D(@F$@)0B''@CL@L0@3@OD@&lt;PA @L&lt;@@@@^@A8@\0B0@B@@H@@@@HL@&lt;PD(@J\@)0@3@CL@8@BC@OD@ 0BC@OH@ 0A2@@@@@@@5@HP@M0C5@B@@H@@ @@@@30@^@B@@H@@ @FD@H@@ @B@AEP@_@A&lt;@M BD@NX@J0D-@B0AL @@@HHAJ0CO@QH@H@A!@B@@H@A]@B@@H@@@@L&lt;@G DQ@B@@H@@ @B@@H@@ @B@@H@@ @@@@!@C5@OT@M0B+@C\@]@C5@A&lt;@G0CP@A&lt;@: @ @B@@H@@ @B@@@@@^@A8@3P@ @B@@(P@ @B@@H@@ @B@@H@@@@BXAE DW@L$@,0CX@J,@*PA"@M@@G0@_@E8@G0@ @B@@H@@ @@@@G @ @B@@H@@ @B@@H@BE@RD@@@@@@@@@+ @@@@@@!@BD@J&lt;@@@@@@@@@,PB1@HL@@@@ @B@@H@@ @B@@H@@@@B@@H@@ @B@AE@@ @I8@UP@@@CP@M@BB@HH@@@C2@CP@  @@@@@@  C!@HH@@@@@@HL@@@B^@B@@H@@ @Q @@@@ @B@@H@@ @A&lt;@H@DY@@@@M@B2@HX@&gt;P@W@@H@.@C2@HL@*@A5@DH@@0C:@O(AK@C1@CL@4@@_@B@@H@@ @@@@H@CS@B@@H@@ @B@@30A2@HHAK @W@MP@F@AI@O@@] C1@R(@N0DF@G(@=0CU@ED@ 0C1@A&lt;@4@CP@B@@H@@@@B@@H@@ @B@@H@C8@I8@@@@@@OH@@@BC@HL@*@C1@OD@Z0@@@@@@&lt; @4@HH@/P@@@@@@@@@&lt;@ML@H@@ @B@@@@A\@B@@H@@ @B@@H@@ @@@@@@@@@@@@ 0BC@ODAG C1@OT@=PD#@@@@@@C6@HH@  BB@@@@H@CN@B@@3 @ @@@b'))</body>
</methods>

<methods>
<class-id>RobotApplication class</class-id> <category>interface specs</category>

<body package="RobotMove" selector="windowSpec">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 'Robot World' 
			#min: #(#{Core.Point} 40 20 ) 
			#bounds: #(#{Graphics.Rectangle} 280 298 1024 768 ) 
			#isEventDriven: true ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.TextEditorSpec} 
					#layout: #(#{Graphics.LayoutFrame} 1 0 -200 1 -300 1 -1 1 ) 
					#name: #transcript 
					#model: #text 
					#tabRequiresControl: true ) 
				#(#{UI.ArbitraryComponentSpec} 
					#layout: #(#{Graphics.LayoutFrame} 1 0 5 0 -1 1 -202 1 ) 
					#flags: 11 
					#component: #worldView ) 
				#(#{UI.SubCanvasSpec} 
					#layout: #(#{Graphics.LayoutFrame} -295 1 -200 1 0 1 0 1 ) 
					#name: #InspectorSubcanvas 
					#flags: 0 
					#clientKey: #inspector ) ) ) )</body>
</methods>


<methods>
<class-id>RobotApplication</class-id> <category>update</category>

<body package="RobotMove" selector="refreshInspector">refreshInspector

		self localVars: NameSpace new.
		"self localVars at: 'world'  put: self world."
		self world namedRobots keysAndValuesDo: [:key :value | self localVars at: key put: value].
		self inspector inspector initialize: self localVars.
</body>
</methods>

<methods>
<class-id>RobotApplication</class-id> <category>events</category>

<body package="RobotMove" selector="noticeOfWindowClose:">noticeOfWindowClose: aWindow 
	
		self world retractInterestIn: #robotAdded for: self.
		self world retractInterestIn: #robotRemoved for: self.
		^super noticeOfWindowClose: aWindow</body>
</methods>

<methods>
<class-id>RobotApplication</class-id> <category>initialize</category>

<body package="RobotMove" selector="initialize">initialize
	super initialize.
	self world: RobotWorld new.
	self world defaultProperties: RobotInspector.
	self text: self defaultText asValue.
	self inspector: self world defaultInpector.
	self worldView: self world defaultView.
	self world addRobot: (Robot position:(0@(-80))) named: 'robotmove'</body>
</methods>

<methods>
<class-id>RobotApplication</class-id> <category>accessing</category>

<body package="RobotMove" selector="world">world

		^world.</body>

<body package="RobotMove" selector="world:">world: aWorld 

		world isNil ifFalse:
						[	
						world retractInterestIn: #robotAdded for: self.
						world retractInterestIn: #robotRemoved for: self.
						].
		world:=aWorld.
		aWorld expressInterestIn: #robotAdded for: self sendBack: #refreshInspector.
		aWorld expressInterestIn: #robotRemoved for: self sendBack: #refreshInspector.
</body>

<body package="RobotMove" selector="worldView">worldView

		^worldView.</body>
</methods>

<methods>
<class-id>RobotApplication</class-id> <category>aspects</category>

<body package="RobotMove" selector="text">text

		^text</body>

<body package="RobotMove" selector="inspector">inspector

		^inspector.</body>
</methods>

<methods>
<class-id>RobotApplication</class-id> <category>interface opening</category>

<body package="RobotMove" selector="postBuildWith:">postBuildWith: aBuilder
		"Post-building stuff. Set the transcript's controller and set it transparent."

		| widget win |

		widget := (aBuilder componentAt: #transcript) widget.
		widget controller: RobotWorldTextEditorController new.
		widget controller world: self world.
		widget controller initializeMenuForCode.
		widget controller keyboardProcessor: builder keyboardProcessor.
		widget controller autoAccept: false.
		widget controller supportCodeEditingFeels: true.
		widget controller flushFeels.
		widget widgetState colors notNil ifTrue:[widget widgetState colors setBackgroundColor: nil].
		widget widgetState hasBackgroundColor: false.
		(win := aBuilder window) notNil ifTrue: [win label: 'Robot World'].</body>

<body package="RobotMove" selector="postOpenWith:">postOpenWith: aBuilder

	super postOpenWith: aBuilder.
	(self builder componentAt: #InspectorSubcanvas) widget
							client: self inspector
							spec: #windowSpec
							builder: builder newSubBuilder.
	self refreshInspector.
</body>
</methods>

<methods>
<class-id>RobotApplication</class-id> <category>private - accessing</category>

<body package="RobotMove" selector="defaultText">defaultText

^'"La forma de indicarle a un objeto que hacer, es mediante el envío de mensajes. En este caso le envíamos al objeto robotech el mensaje #direction: con parámetro 30"

robotmove direction: 30.

"Le indico a robotech que avance 50 pasos en la dirección actual"

robotmove move: 50.

"Podemos enviarle a un objeto una serie de mensajes en cascada utilizando ; "

robotmove brushDown; direction: 0; move: 30; direction: 90; move: 30; direction: 180; move: 30; direction: 270; move: 30.'</body>

<body package="RobotMove" selector="localVars">localVars
	^localVars</body>

<body package="RobotMove" selector="text:">text: aText 

		text:=aText.</body>

<body package="RobotMove" selector="worldView:">worldView: aWorldView 

		worldView:=aWorldView.</body>

<body package="RobotMove" selector="localVars:">localVars: anObject
	localVars := anObject</body>

<body package="RobotMove" selector="inspector:">inspector: anInspector 

		inspector:=anInspector.</body>
</methods>



</st-source>
