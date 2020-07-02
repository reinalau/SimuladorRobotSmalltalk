<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, 7.5 of April 16, 2007 on March 6, 2011 at 7:48:48 am</time-stamp>
<!-- Package RobotFire* -->


<class>
<name>GunBomb</name>
<environment>Smalltalk</environment>
<super>Gun</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>RobotFire</package>
</attributes>
</class>

<comment>
<class-id>GunBomb</class-id>
<body>	Subclase de Gun, es un arma disponible para el robot, que tira una bomba a 50 para adelante, que cubre un cuadrado impactando a cualquier robot que este en el.

</body>
</comment>

<class>
<name>RobotFireInspector</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chargeBateria armas image gun colores color escudos capacityBateria imagenes shield view movimiento movimientos movements robot tabs direction position battery </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotFire</category>
<attributes>
<package>RobotFire</package>
</attributes>
</class>

<comment>
<class-id>RobotFireInspector</class-id>
<body>	ERobotInspector redefine el inspector del robot para quitar la funcionalidad que deshechamos, y agregar la nueva funcionalidad.
	Permite definir los aspectos de los robot, tales como armas, movimientos y escudos.
</body>
</comment>

<class>
<name>AddRobot</name>
<environment>Smalltalk</environment>
<super>UI.SimpleDialog</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>nombre direccion direcciones posY posX world </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotFire</category>
<attributes>
<package>RobotFire</package>
</attributes>
</class>

<comment>
<class-id>AddRobot</class-id>
<body>	Esta clase tiene la finalidad de setear las propiedades de un nuevo Robot. Permite cargar el nombre del robot y la posicion. Agrega un robot a RobotWorld en su diccionario de robots.</body>
</comment>

<class>
<name>UniqueMovimiento</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>move direction </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>RobotFire</package>
</attributes>
</class>

<comment>
<class-id>UniqueMovimiento</class-id>
<body>	UniqueMovimiento es una clase para implementar movimientos individuales en un motor de locomocion circular.

		direction&lt;Int&gt;	direccion del robot para el movimiento
		move&lt;Int&gt;	cantidad de pasos a mover el robot

</body>
</comment>

<class>
<name>GunSuperLaser</name>
<environment>Smalltalk</environment>
<super>Gun</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>RobotFire</package>
</attributes>
</class>

<comment>
<class-id>GunSuperLaser</class-id>
<body>	GunSuperLaser tiene un alcance y una descarga superior a GunLaser.</body>
</comment>

<class>
<name>ShieldEsquivador</name>
<environment>Smalltalk</environment>
<super>Shield</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>RobotFire</package>
</attributes>
</class>

<comment>
<class-id>ShieldEsquivador</class-id>
<body>	ShieldEsquivador al recibir un disparo, mueve el robot por su algoritmo de Movimiento. Escapando del disparo.

</body>
</comment>

<class>
<name>RobotFireApplication</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>text inspector localVars worldView framework world </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>UIApplications-New</category>
<attributes>
<package>RobotFire</package>
</attributes>
</class>

<comment>
<class-id>RobotFireApplication</class-id>
<body>RobotFireApplication es un simulador de lucha de robots. Esta desarrollado con base en el Framework. La aplicacion permite agregar robots y asignarle ciertas caracteristicas para que luchen entre si.  

Instance Variables:
	framework	&lt;Object&gt;	description of framework
	inspector	&lt;FutbolRobotApplication | InspectorHolder | InspectorShell | Navigator | RobotApplication | RobotController | RobotFireApplication | RobotInspector | RobotInspector&gt;	description of inspector
	localVars	&lt;Object&gt;	description of localVars
	text	&lt;Object&gt;	description of text
	world	&lt;RobotWorld&gt;	description of world
	worldView	&lt;Object&gt;	description of worldView

</body>
</comment>

<class>
<name>ShieldMedium</name>
<environment>Smalltalk</environment>
<super>Shield</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>RobotFire</package>
</attributes>
</class>

<comment>
<class-id>ShieldMedium</class-id>
<body>	Subclase de escudo que descarga al robot que recibe el disparo la mitad de la descarga del arma.

</body>
</comment>

<class>
<name>MovementCircular</name>
<environment>Smalltalk</environment>
<super>Movement</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>movements index code </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>RobotFire</package>
</attributes>
</class>

<comment>
<class-id>MovementCircular</class-id>
<body>	MovementCircular es un tipo de motor de movimiento para poder mover el robot en una direccion y un determinado numero de pasos, independiente de cada ciclo de movimiento.
	Esto se logra definiendo una lista de pares (direccion,pasos) para cada ciclo de movimiento. Cuando se llega al final de la lista, se vuelve a comenzar.
	Para definir la lista de movimientos en la venta de propiedades del robot:
		- Definir pares separados por caracteres tabs, presionando la tecla "tab".
		- Cada par es un par de nuemeros separados por el caracter space, presionando la tecla "space".
		- El primer numero del par es la direccion (0..359) del robot, mientras que el segundo es la cantidad de pasos a mover en esa direccion.
	Ejemplo:
		Hace un movimiento en forma de cuadrado de llado 100"
		'0 100	90 100	180 100	270 100'

	Para definir estos movimientos individuales, el motor tiene una loista que debe completarse con instancias de la Clase UniqueMovimiento, que se instancia de la siguiente manera:
		unPaso:= UniqueMovimiento newMove: 10 inDirection: 90.
	Esto crea un movimiento unico que posiciona el robot en la direccion 90, y mueve el mismo 10 pasos. Ahora asignando estos movimientos al motor de locomocion, se crea una lista de la siguiente manera:
		| motorMovement aRobot unPaso |
		aRobot:= Robot new.
		motorMovement:= (MovementCircular robot: aRobot).
		motorMovement addMovimiento: (UniqueMovimiento newMove: 25 inDirection: 0); addMovimiento: (UniqueMovimiento newMove: 50 inDirection: 90); addMovimiento: (UniqueMovimiento newMove: 25 inDirection: 180); addMovimiento: unPaso.
		aRobot movement: motorMovement.

	index&lt;Int&gt;	indice de la lista de movimientos proximo a ejecutar
	movements&lt;Collection of UniqueMovimiento&gt;	Lista de movimientos unicos individuales por cada ciclo que ejecute el motor de locomocion

</body>
</comment>










<methods>
<class-id>MovementCircular</class-id> <category>private</category>

<body package="RobotFire" selector="code:">code: aCode
	code:= aCode</body>

<body package="RobotFire" selector="index:">index: aNumber
	index:= aNumber</body>

<body package="RobotFire" selector="indexOfMovimiento">indexOfMovimiento
	^index</body>

<body package="RobotFire" selector="listOfMovimientos:">listOfMovimientos: aList
	movements:= aList</body>
</methods>

<methods>
<class-id>MovementCircular</class-id> <category>testing</category>

<body package="RobotFire" selector="isMovementCircular">isMovementCircular
	^true</body>
</methods>

<methods>
<class-id>MovementCircular</class-id> <category>initialize-release</category>

<body package="RobotFire" selector="initialize:">initialize: aRobot
	super initialize: aRobot.
	self listOfMovimientos: List new.
	self code: ''.
	self index: 1.</body>
</methods>

<methods>
<class-id>MovementCircular</class-id> <category>actions</category>

<body package="RobotFire" selector="doMove">doMove
	| uniqueMove |
	(self listOfMovimientos size == 0) ifFalse: [
		uniqueMove:= self listOfMovimientos at: self index.
		self robot direction: uniqueMove direction.
		self robot move: uniqueMove move.

		(self index = self listOfMovimientos size) 
			ifTrue: [ self index: 1 ]
			ifFalse: [ self index: self index + 1 ]
	]</body>
</methods>

<methods>
<class-id>MovementCircular</class-id> <category>accesing</category>

<body package="RobotFire" selector="index">index
	^index</body>

<body package="RobotFire" selector="listOfMovimientos">listOfMovimientos
	^movements</body>

<body package="RobotFire" selector="addMovimiento:">addMovimiento: aUniqueMovement
	self listOfMovimientos add: aUniqueMovement</body>

<body package="RobotFire" selector="code">code
	^code</body>

<body package="RobotFire" selector="assignMovements:">assignMovements: aString
	| collection mov |
	self code: aString.
	self listOfMovimientos: List new.
	collection:= aString tokensBasedOn: Character tab.
	(collection size &gt; 1) ifTrue: [
		collection do: [ :um |
			mov:= um tokensBasedOn: Character space.
			self addMovimiento: (UniqueMovimiento newMove: (mov at: 2) inDirection: (mov at: 1))
		]
	]</body>
</methods>


<methods>
<class-id>RobotFireInspector class</class-id> <category>interface specs</category>

<body package="RobotFire" selector="properties">properties
	"Tools.UIPainter new openOnClass: self andSelector: #properties"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 'Propiedades' 
			#min: #(#{Core.Point} 400 342 ) 
			#max: #(#{Core.Point} 400 342 ) 
			#bounds: #(#{Graphics.Rectangle} 640 512 1040 854 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 6 3 ) 
					#name: #Label1 
					#label: 'Carga batería:' ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 84 7 163 28 ) 
					#name: #InputField1 
					#model: #chargeBateria 
					#type: #number ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 168 4 ) 
					#name: #Label2 
					#label: 'Carpacidad batería:' ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 270 7 349 28 ) 
					#name: #InputField2 
					#model: #capacityBateria 
					#type: #number ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 10 28 ) 
					#name: #Label3 
					#label: 'Color camino:' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 47 83 ) 
					#name: #Label4 
					#label: 'Arma:' ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 84 32 216 54 ) 
					#name: #ComboBox1 
					#model: #color 
					#type: #object 
					#comboList: #colores ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 84 59 216 82 ) 
					#name: #ComboBox2 
					#model: #image 
					#type: #symbol 
					#comboList: #imagenes ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 6 57 ) 
					#name: #Label5 
					#label: 'Imagen robot:' ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 84 87 216 109 ) 
					#name: #ComboBox3 
					#model: #gun 
					#type: #object 
					#comboList: #armas ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 37 111 ) 
					#name: #Label6 
					#label: 'Escudo:' ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 84 115 216 138 ) 
					#name: #ComboBox4 
					#model: #shield 
					#type: #object 
					#comboList: #escudos ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.Rectangle} 249 314 350 337 ) 
					#name: #ActionButton1 
					#model: #saveCambios 
					#label: 'Aceptar cambios' 
					#defaultable: true ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 84 144 216 167 ) 
					#name: #ComboBox5 
					#model: #movimiento 
					#type: #object 
					#comboList: #movimientos ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 18 141 ) 
					#name: #Label7 
					#label: 'Movimiento:' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 9 170 ) 
					#name: #Label8 
					#label: 'Bloque/Lista de movimientos:' ) 
				#(#{UI.TextEditorSpec} 
					#layout: #(#{Graphics.Rectangle} 10 190 350 305 ) 
					#name: #TextEditor1 
					#model: #movements 
					#tabRequiresControl: true ) ) ) )</body>

<body package="RobotFire" selector="presentation">presentation
	"Tools.UIPainter new openOnClass: self andSelector: #presentation"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 'Robot Inspector' 
			#min: #(#{Core.Point} 398 405 ) 
			#max: #(#{Core.Point} 398 405 ) 
			#bounds: #(#{Graphics.Rectangle} 640 512 1038 917 ) 
			#isEventDriven: true ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 192 33 349 58 ) 
					#flags: 0 
					#model: #position 
					#tabable: false 
					#isReadOnly: true ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 192 57 349 82 ) 
					#flags: 0 
					#model: #direction 
					#tabable: false 
					#isReadOnly: true ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 192 81 349 106 ) 
					#flags: 0 
					#model: #battery 
					#tabable: false 
					#isReadOnly: true ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Graphics.Rectangle} 30 30 156 139 ) 
					#label: #image 
					#hasCharacterOrientedLabel: false ) ) ) )</body>

<body package="RobotFire" selector="windowSpec">windowSpec
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
<class-id>RobotFireInspector class</class-id> <category>resources</category>

<body package="RobotFire" selector="basicImage">basicImage
	"UIMaskEditor new openOnClass: self andSelector: #basicImage"

	&lt;resource: #image&gt;
	^(Image extent: 126@109 depth: 8 bitsPerPixel: 8 palette: (MappedPalette withColors: ((Array new: 205) at: 1 put: ColorValue black; at: 2 put: (ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 7662); at: 3 put: (ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7134); at: 4 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6341); at: 5 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 5548); at: 6 put: (ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 5812); at: 7 put: (ColorValue scaledRed: 7662 scaledGreen: 6869 scaledBlue: 5020); at: 8 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5284); at: 9 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 5020); at: 10 put: (ColorValue scaledRed: 7134 scaledGreen: 6341 scaledBlue: 4756); at: 11 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4227); at: 12 put: (ColorValue scaledRed: 6869 scaledGreen: 5020 scaledBlue: 5020); at: 13 put: (ColorValue scaledRed: 5812 scaledGreen: 5548 scaledBlue: 4227); at: 14 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 3699); at: 15 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 3963); at: 16 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 3434); at: 17 put: (ColorValue scaledRed: 5284 scaledGreen: 4491 scaledBlue: 3170); at: 18 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 2906); at: 19 put: (ColorValue scaledRed: 5548 scaledGreen: 3699 scaledBlue: 3699); at: 20 put: (ColorValue scaledRed: 4756 scaledGreen: 3434 scaledBlue: 3434); at: 21 put: (ColorValue scaledRed: 4756 scaledGreen: 4227 scaledBlue: 2642); at: 22 put: (ColorValue scaledRed: 5812 scaledGreen: 4227 scaledBlue: 2906); at: 23 put: (ColorValue scaledRed: 3963 scaledGreen: 3699 scaledBlue: 2642); at: 24 put: (ColorValue scaledRed: 5020 scaledGreen: 2642 scaledBlue: 2642); at: 25 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 2113); at: 26 put: (ColorValue scaledRed: 3963 scaledGreen: 3170 scaledBlue: 1849); at: 27 put: (ColorValue scaledRed: 4227 scaledGreen: 2906 scaledBlue: 1849); at: 28 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 2113); at: 29 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 1585); at: 30 put: (ColorValue scaledRed: 3434 scaledGreen: 1849 scaledBlue: 1056); at: 31 put: (ColorValue scaledRed: 2906 scaledGreen: 2378 scaledBlue: 1056); at: 32 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1321); at: 33 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1849); at: 34 put: (ColorValue scaledRed: 2906 scaledGreen: 1321 scaledBlue: 792); at: 35 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1321); at: 36 put: (ColorValue scaledRed: 1585 scaledGreen: 1321 scaledBlue: 792); at: 37 put: (ColorValue scaledRed: 2378 scaledGreen: 1056 scaledBlue: 264); at: 38 put: (ColorValue scaledRed: 2642 scaledGreen: 792 scaledBlue: 264); at: 39 put: (ColorValue scaledRed: 1849 scaledGreen: 264 scaledBlue: 264); at: 40 put: (ColorValue scaledRed: 2113 scaledGreen: 264 scaledBlue: 0); at: 41 put: (ColorValue scaledRed: 2378 scaledGreen: 0 scaledBlue: 0); at: 42 put: (ColorValue scaledRed: 792 scaledGreen: 792 scaledBlue: 792); at: 43 put: ColorValue white; at: 44 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7134); at: 45 put: (ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 7398); at: 46 put: (ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 6341); at: 47 put: (ColorValue scaledRed: 8191 scaledGreen: 6869 scaledBlue: 6869); at: 48 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 5812); at: 49 put: (ColorValue scaledRed: 7926 scaledGreen: 6341 scaledBlue: 6341); at: 50 put: (ColorValue scaledRed: 7662 scaledGreen: 5812 scaledBlue: 5812); at: 51 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5020); at: 52 put: (ColorValue scaledRed: 7134 scaledGreen: 6869 scaledBlue: 5284); at: 53 put: (ColorValue scaledRed: 7134 scaledGreen: 6341 scaledBlue: 4491); at: 54 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 4756); at: 55 put: (ColorValue scaledRed: 6869 scaledGreen: 5812 scaledBlue: 3963); at: 56 put: (ColorValue scaledRed: 6341 scaledGreen: 4491 scaledBlue: 4491); at: 57 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 3699); at: 58 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 3170); at: 59 put: (ColorValue scaledRed: 5548 scaledGreen: 5020 scaledBlue: 3434); at: 60 put: (ColorValue scaledRed: 4756 scaledGreen: 4491 scaledBlue: 3434); at: 61 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 3170); at: 62 put: (ColorValue scaledRed: 5284 scaledGreen: 4491 scaledBlue: 2906); at: 63 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 2113); at: 64 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1849); at: 65 put: (ColorValue scaledRed: 3170 scaledGreen: 2113 scaledBlue: 2113); at: 66 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1849); at: 67 put: (ColorValue scaledRed: 3434 scaledGreen: 2642 scaledBlue: 1321); at: 68 put: (ColorValue scaledRed: 3699 scaledGreen: 2378 scaledBlue: 1321); at: 69 put: (ColorValue scaledRed: 2378 scaledGreen: 2113 scaledBlue: 1585); at: 70 put: (ColorValue scaledRed: 3699 scaledGreen: 1849 scaledBlue: 1849); at: 71 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1056); at: 72 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1585); at: 73 put: (ColorValue scaledRed: 1849 scaledGreen: 792 scaledBlue: 792); at: 74 put: (ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 264); at: 75 put: (ColorValue scaledRed: 2906 scaledGreen: 264 scaledBlue: 264); at: 76 put: (ColorValue scaledRed: 1056 scaledGreen: 792 scaledBlue: 264); at: 77 put: (ColorValue scaledRed: 2113 scaledGreen: 0 scaledBlue: 0); at: 78 put: (ColorValue scaledRed: 528 scaledGreen: 264 scaledBlue: 0); at: 79 put: (ColorValue scaledRed: 264 scaledGreen: 264 scaledBlue: 264); at: 80 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 6869); at: 81 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 6341); at: 82 put: (ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 6077); at: 83 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 6869); at: 84 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 5548); at: 85 put: (ColorValue scaledRed: 7398 scaledGreen: 7134 scaledBlue: 5812); at: 86 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 6605); at: 87 put: (ColorValue scaledRed: 7398 scaledGreen: 6605 scaledBlue: 5020); at: 88 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 5548); at: 89 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4756); at: 90 put: (ColorValue scaledRed: 7134 scaledGreen: 5284 scaledBlue: 5284); at: 91 put: (ColorValue scaledRed: 6605 scaledGreen: 5812 scaledBlue: 3963); at: 92 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 4227); at: 93 put: (ColorValue scaledRed: 5812 scaledGreen: 5284 scaledBlue: 5284); at: 94 put: (ColorValue scaledRed: 7134 scaledGreen: 6077 scaledBlue: 4491); at: 95 put: (ColorValue scaledRed: 6341 scaledGreen: 5020 scaledBlue: 3699); at: 96 put: (ColorValue scaledRed: 5812 scaledGreen: 4491 scaledBlue: 3434); at: 97 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 2906); at: 98 put: (ColorValue scaledRed: 5548 scaledGreen: 5020 scaledBlue: 3170); at: 99 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3699); at: 100 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 2906); at: 101 put: (ColorValue scaledRed: 5812 scaledGreen: 3963 scaledBlue: 3963); at: 102 put: (ColorValue scaledRed: 4227 scaledGreen: 3963 scaledBlue: 2906); at: 103 put: (ColorValue scaledRed: 4756 scaledGreen: 3963 scaledBlue: 2378); at: 104 put: (ColorValue scaledRed: 4227 scaledGreen: 3434 scaledBlue: 2113); at: 105 put: (ColorValue scaledRed: 3963 scaledGreen: 3434 scaledBlue: 2378); at: 106 put: (ColorValue scaledRed: 4227 scaledGreen: 3699 scaledBlue: 1849); at: 107 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 2113); at: 108 put: (ColorValue scaledRed: 4756 scaledGreen: 3699 scaledBlue: 2642); at: 109 put: (ColorValue scaledRed: 4491 scaledGreen: 2642 scaledBlue: 2642); at: 110 put: (ColorValue scaledRed: 4227 scaledGreen: 2378 scaledBlue: 1849); at: 111 put: (ColorValue scaledRed: 3699 scaledGreen: 2378 scaledBlue: 2378); at: 112 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1585); at: 113 put: (ColorValue scaledRed: 3170 scaledGreen: 1585 scaledBlue: 1056); at: 114 put: (ColorValue scaledRed: 2378 scaledGreen: 2113 scaledBlue: 1321); at: 115 put: (ColorValue scaledRed: 3170 scaledGreen: 1321 scaledBlue: 1321); at: 116 put: (ColorValue scaledRed: 1849 scaledGreen: 1585 scaledBlue: 1056); at: 117 put: (ColorValue scaledRed: 2906 scaledGreen: 792 scaledBlue: 792); at: 118 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 1849); at: 119 put: (ColorValue scaledRed: 1321 scaledGreen: 1056 scaledBlue: 792); at: 120 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1585); at: 121 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1321); at: 122 put: (ColorValue scaledRed: 1056 scaledGreen: 1056 scaledBlue: 1056); at: 123 put: (ColorValue scaledRed: 1585 scaledGreen: 264 scaledBlue: 0); at: 124 put: (ColorValue scaledRed: 1849 scaledGreen: 0 scaledBlue: 0); at: 125 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7926); at: 126 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6869); at: 127 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 6605); at: 128 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 7398); at: 129 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 6077); at: 130 put: (ColorValue scaledRed: 7398 scaledGreen: 7134 scaledBlue: 5548); at: 131 put: (ColorValue scaledRed: 7926 scaledGreen: 6077 scaledBlue: 6077); at: 132 put: (ColorValue scaledRed: 6869 scaledGreen: 6605 scaledBlue: 5284); at: 133 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 5020); at: 134 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 4227); at: 135 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4756); at: 136 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4491); at: 137 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 3963); at: 138 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 4491); at: 139 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 4227); at: 140 put: (ColorValue scaledRed: 6077 scaledGreen: 5284 scaledBlue: 3434); at: 141 put: (ColorValue scaledRed: 5812 scaledGreen: 5284 scaledBlue: 3699); at: 142 put: (ColorValue scaledRed: 6077 scaledGreen: 5020 scaledBlue: 3699); at: 143 put: (ColorValue scaledRed: 5548 scaledGreen: 4756 scaledBlue: 3170); at: 144 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3434); at: 145 put: (ColorValue scaledRed: 5812 scaledGreen: 4491 scaledBlue: 4491); at: 146 put: (ColorValue scaledRed: 5020 scaledGreen: 4227 scaledBlue: 2906); at: 147 put: (ColorValue scaledRed: 5284 scaledGreen: 3434 scaledBlue: 3434); at: 148 put: (ColorValue scaledRed: 4491 scaledGreen: 3170 scaledBlue: 3170); at: 149 put: (ColorValue scaledRed: 6605 scaledGreen: 5284 scaledBlue: 4227); at: 150 put: (ColorValue scaledRed: 4227 scaledGreen: 3434 scaledBlue: 1849); at: 151 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 2113); at: 152 put: (ColorValue scaledRed: 3699 scaledGreen: 2906 scaledBlue: 1585); at: 153 put: (ColorValue scaledRed: 3963 scaledGreen: 2642 scaledBlue: 1585); at: 154 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 1585); at: 155 put: (ColorValue scaledRed: 3170 scaledGreen: 2378 scaledBlue: 1321); at: 156 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1321); at: 157 put: (ColorValue scaledRed: 2906 scaledGreen: 1849 scaledBlue: 792); at: 158 put: (ColorValue scaledRed: 2642 scaledGreen: 1585 scaledBlue: 1321); at: 159 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1849); at: 160 put: (ColorValue scaledRed: 1585 scaledGreen: 1585 scaledBlue: 1056); at: 161 put: (ColorValue scaledRed: 2378 scaledGreen: 1321 scaledBlue: 528); at: 162 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1321); at: 163 put: (ColorValue scaledRed: 1849 scaledGreen: 792 scaledBlue: 264); at: 164 put: (ColorValue scaledRed: 792 scaledGreen: 528 scaledBlue: 264); at: 165 put: (ColorValue scaledRed: 1585 scaledGreen: 0 scaledBlue: 0); at: 166 put: (ColorValue scaledRed: 264 scaledGreen: 0 scaledBlue: 0); at: 167 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7662); at: 168 put: (ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7398); at: 169 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6605); at: 170 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 5812); at: 171 put: (ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 6077); at: 172 put: (ColorValue scaledRed: 7926 scaledGreen: 6605 scaledBlue: 6605); at: 173 put: (ColorValue scaledRed: 7662 scaledGreen: 6869 scaledBlue: 5284); at: 174 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5548); at: 175 put: (ColorValue scaledRed: 7398 scaledGreen: 5548 scaledBlue: 5548); at: 176 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 4756); at: 177 put: (ColorValue scaledRed: 7398 scaledGreen: 6341 scaledBlue: 4756); at: 178 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4227); at: 179 put: (ColorValue scaledRed: 6341 scaledGreen: 6077 scaledBlue: 4756); at: 180 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4491); at: 181 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 3963); at: 182 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 5812); at: 183 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3170); at: 184 put: (ColorValue scaledRed: 5548 scaledGreen: 4756 scaledBlue: 2906); at: 185 put: (ColorValue scaledRed: 5020 scaledGreen: 4227 scaledBlue: 2642); at: 186 put: (ColorValue scaledRed: 5284 scaledGreen: 3963 scaledBlue: 2642); at: 187 put: (ColorValue scaledRed: 4491 scaledGreen: 3699 scaledBlue: 2378); at: 188 put: (ColorValue scaledRed: 4227 scaledGreen: 2906 scaledBlue: 2113); at: 189 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 1849); at: 190 put: (ColorValue scaledRed: 3699 scaledGreen: 2906 scaledBlue: 1321); at: 191 put: (ColorValue scaledRed: 3963 scaledGreen: 2378 scaledBlue: 1585); at: 192 put: (ColorValue scaledRed: 3170 scaledGreen: 1585 scaledBlue: 1849); at: 193 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1585); at: 194 put: (ColorValue scaledRed: 2906 scaledGreen: 2378 scaledBlue: 1321); at: 195 put: (ColorValue scaledRed: 2113 scaledGreen: 1849 scaledBlue: 1321); at: 196 put: (ColorValue scaledRed: 2642 scaledGreen: 1321 scaledBlue: 1321); at: 197 put: (ColorValue scaledRed: 3170 scaledGreen: 1321 scaledBlue: 792); at: 198 put: (ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 792); at: 199 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1585); at: 200 put: (ColorValue scaledRed: 1056 scaledGreen: 1056 scaledBlue: 528); at: 201 put: (ColorValue scaledRed: 2113 scaledGreen: 264 scaledBlue: 264); at: 202 put: (ColorValue scaledRed: 2378 scaledGreen: 264 scaledBlue: 0); at: 203 put: (ColorValue scaledRed: 2642 scaledGreen: 0 scaledBlue: 0); at: 204 put: (ColorValue scaledRed: 528 scaledGreen: 528 scaledBlue: 264); at: 205 put: (ColorValue scaledRed: 1321 scaledGreen: 0 scaledBlue: 0); yourself)) usingBits: (ByteArray fromPackedString: '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%@JT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)PAM],B_)ZV%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)ZV#0&amp;!%N3-%0$-M@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV%)T4#0AX&lt;X6NN#+ZOY[2_SZV%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%S\/BZARQX1F7XC&amp;KN[^N-)DV\ZN%)PB%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@SRMAYS1#OQF7XC$9"8.K"8- XX:OOK13(:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV%S\H&gt;YS1#D[] NS&amp;K"8,M"8.K"8.KNVFN#30V0JN%)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV#H6)%OC0=#&amp;D9"8.K"8.KCP4MCP64CP4M"8.KXX:O#393(:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZV#QA TX6N6-3&amp;K"8.K"8.KCX"HCP64"@6H"H"HCP6K"3%!#+XV0D.%)ZT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)ZM6%#,&lt;-!E!XC&amp;K"8.K"04MCX"4"1F:EH:KCP6H"H!ZV#YZCX.KNX:OOF"_(:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)T-DZC,&lt;X89!NX.K"8.KCX.K-@4MXK!''%1:ZFVX=C8,M"E)ZM#X6M( M"0=!#6HVP\^%)PB%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%27Y*YS26-(8O"8.K"04MCP4MCX.KO[*UP)0$^*J &amp;)\Y.FFKC[QZM#X6,[D6V 6KNS*OOF"_2:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV%],HVN6N6#(8ON@4M"H M-KPMCX.7Y)VW&amp;*@$(''+L^*R"()2Z%;(=XH,MV#Z1!XT4![EZ"8,ON(9%PWYM)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JUMH6)%OKZ6XP&lt;8C[RH"H"HC[PM"3&amp;8.)UB''J@$(''+L3L3L3L2"("P$&amp;)!''Y(:KCU(6,SP4MCR1M%(8C3*OOF!3SZV%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)T56QFT&lt;OH:NC8,M-H!ZV%*HC[PMNQF:FY"Z(BR"^''*$3L3L3L3L3L3L(*J"()2Z%6^8NX.HM(T4MJ&lt;4MCR1"C ON(&lt;&lt;Z''YM)ZT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D6_%&amp;T&lt;-(8ON@6HV#YZV%*H-@6KX[":FY*\ID&amp;"^''*$)JR$)JSL3L3L3L3L3G):("R ''K6UY+^K-CX4MJ&gt;/+:&gt;/!SZ4C3(:OA[BSP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AM%#,;-#(OCX!ZM#X6M#ZHCX,9OVXY/Y2 ID&amp;"^*R$)JR$)JR$)JR$)JSL3L3L3L1:^*J"IJBZ&amp;F^8NX-Z,SR/L XFL*&lt;4,S"L#FI%2:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)RM%X(XN"E*1,SX6M%*HCX.7Y&amp;&amp;X&amp;)0$IJI:^*R$)JR$)JR$)JR$)JR$)JSL3L3L3L2$^''*"(*H$''DHYY!FK"KD4+0Z,+@Z,U  3BFH#)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AM0C22 ELI!XVE,SZ4"3$=.)V=''J@$(*I:)JR$)JR$)JR$^7-;^7.$)JR$)JR$3L3L)JR$)JQ:^*J"IJBZ&amp;IV8NX,6MCHFA@PETD&gt;*CAYM@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)\\VX*4CTP^G,U(MNS5&amp;%Y^Z''BQI(''):)JR$)JR$)JR$)G-;^7-;^:R$)JR$)JR$)JR$)JR$)JR$)G):(*H$''DHYY#49V(T2+@L+@''4HX)&gt;%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%QC2IKW9QA0(NC36:%Y^\''BP%(''*$)JR$)JR$)JQ;)JQ;^7-;^7.$)JR$)JR$)G,&amp;^7-;^:R$)JR$3JQ:^*J"II0^FYTTNP6D@2.''@**L%$4@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)T5%X#M&gt;_*$I+0!&amp;&amp;DJ IJJ"I*SL)JR$)JR$^7-;^7.$)G.$)G.$)JR$)JR$^7-;^7-;^7-;^7.$)JR$)JSL3G):(*H$''DHYV0&amp;*J:^''_[H;]*T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%0&amp;TL G8C [LE*QB IJJ"^*R$)JR$)JR$)JQ;SG-;^:R$)JR$)JR$)JR$)JQ;^7-;SD1;^7,''^:R$)JR$)L3L3L3L^''*"II\G+8Q=@*\BUH1A)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JL&gt;-#LC_%F/MX@HW4%:^*R$)JR$)JR$)JQ;^7-;^7-;)JQ;)JR$)JR$)JR$^40''SD1LSD1L^41;^7-;)JR$)L3L3L3L^''*"F#",MX@+):]=,#.#)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\6TL G8CAXZ- E!''(*R$)JR$)JR$)JR$)G-;^7-;^7-;)G.$^:R$)JR$)G-;I40(JB (SD1;SG-;^7-;)JR$3L3L3L3L)G(]D@\IL76'')2,3X''F%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZTXN0"(_ LG,8B-W14''^:R$)JR$)JR$)JR$^7-;^41LSG-;^7-;)JR$)JQ;^7-LSB (JB!L^7-;^7-;^7-;)JR$3L3L3JR$I$%+" \HKPJ'')5BIYZN%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)PB%)ZV%@@B%132L D=&gt;*ST3@86;IT0''^:R$)JR$)JR$)JQ;^41LSD1LSG-;^7-;)JR$)JQ;^40''SD1LSB];^7-;^7-;^:R$)JR$)JR$)G-;I7@=+CV-J:^''J8M"0*V%)ZV%)ZT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZUMST7K12OG],^&lt;OHXC_ LG,8B-Z7CII2]L1W.$)JR$)G.$)G-;SD1LSB]L^:QLI7.$)JR$)JQ;^41LSD1LSG-;^7-;^7-;)JR$)JR$I,M;SD1LHTN3A0"(@*^''T@1(R4-K14.#2&lt;-MSZV%)PB%@@@@@@@@@@@@@@@@@@@@22MD%!X;X&amp;I"#6TVZARLUD== CVD H5C]B (JL!2\,"$)JR$)JR$)G-;^2]LI7.$)G-;^:R$)JR$)JR$)JR$)G-;^41;^7-;^7.$)JR$^&lt;U,D&lt;#HSD0''HV^)!8AO):\+BH26-(&lt;L,+JI"S,VF&lt;I62:T@@@@@@@@@@@@@@@@@)RL&gt;YS-"CKHH 8RFC6LTEHXCS7:AMXF-Y7CI2" (]DUE/&lt;"$)JR$)JR$)G-;^7-;)JR$)G.$)JR$)JR$)JR$)JR$)JQ;SD1;^7-;^:R$)JSE[AI$QR]LSB\%&amp; &amp;/!J B)0J*#H"HV8ET*%RC,+JI#C-(]*V%@@@@@@@@@@@@)ZWBE#26N%.C*"4CTUNHC;Z6*$=O@8PHTH5C]B#JJB!E[V9.Q\V$)JR$)JR$)G.$)JR$)JR$)JR$)JR$)JR$)JR$)JR$)G-LSD1;^7.$)JR$\!I$$IBRIR]L2T''DOZ23*".'')76F"CHG@4&lt;+@"-=TJ6F#C(&lt;H:T@@@@@@@@@@@B%11X&lt;OS!V J!OS78C P:HDU,CS78E!8EPY17IJL((]F1,[F1.[,V$)JR$)JR$^7-;^:R$)JR$)JR$)JR$)JR$)JR$)JR$^41LSG-;^:R$)GJPM3\7M3^?SB]LI2F&gt;,@$3_Z^''J5RHL ^@J0J''):]=*(RHC3(&gt;SZT@@@@@@@@@@D5AYQP=N(YT_R,+S0N/"C"NL79O@5ZG E!CHR (JB!E[F1,[F1,[LN$)JR$^7-;I41;^7-;^7-;^:R$)JR$)G-;^7-;^7-;^7-;^7-;)BY.M0,KVU%YVQH''I41LRWA_A3UP@*\B_[N/!EQ=)71&lt;_@I=U@*KN#0#)P@@@@@@@@B%(;2QX82DKT&lt;+@ IO* :H#%-PS78E!0\E.WCIJB (]A^S$9NS$9NS[K&lt;&amp;)G-;I7,''SD1LSD1LSD1;^:R$)G-;SD1LSG-LSD1L^7-;^7/H[@-Y+*:.+#F.+''KHSD0''HTN,MZ4+@*\++[MSAW6''_G1&lt;)76*!E(O-$F%@@@@@@@@@JV_E&amp;N6#E,3*B,B@$=T"H :L75O_ ^3*U"X1B (2"!E$)JRD9JRD9JS$4T&amp;SD1LSB]LSD1LSD1LSD1;)JQ;^7-LSB (SD1LSD1L^7-;2IMYLSD1LXJB (JBYL (SD0%HX)VBJ B)0IPV5ZD*"-&lt;_G1&lt;@*)["0&gt;6FJL@@@@@@@@@S\HXEID:,5R(J0H+KXX8XP9PS4=Q!8R)OQ4%JL((]IJRD!HRD!HR$)JRD&amp;7HSD1LI40''SD1LJB!LSG-;^7-;SD0(JB!LSD1LSD1LSGQ$ (H0LJ.+*:.+K*../2\(JL$!Y5ZGUB.'')2.-B%Z-J:]&lt;_G2''J:!VCX9(]*T@@@@@@@AM\S&gt;QXZ&gt;@_$&lt;+J76-V066BG9O_%N3 UZX\B (R,(ZYFQ$YFQ$YAI$YAI$$&amp;3E^41LSD0''I41LSD1LSG-L^7-LSB]LSB\''SB]LSD14M8JB*28.K"9?_21?_28SI2\(SGRZV0&amp;D_Z\B@"5[ XAO@*Y&lt;_J]=+[L8C313)P@@@@@@@JL&gt;EFM!#KMT_$&lt;+S0VGC82*S4&lt;-!CV@W14%JL+J]FP7M3\7M9BP$IBPYFQ$YIOC^:R$)JR$^7-;SD1;^2]L^41L^7-;)JQ;SB\''/5$0K"9?_20,@PDA)*Z&amp;KJ/E^2]L2JA''A(^*@*^''J8R3 X@+)71&lt;)76CC &lt;O%WEM@@@@@@@@(&lt;DY.K :MR5OS4&gt;*!H"6!*!O_%R3 P^U\L$(2,)-M3\7B0,KM3\7M3\7M9BPYIKC^7.$)JQ;^40''I41;2B];I2]L^7.$)JQ;^;=YK"9?_20A)''1&lt;J"(*J"*&amp;@V:$^2\''(GB1BSL+@*\B*%.DL:"''_G2''@*!SV &gt;:G44@@@@@@@CG[6"6NEZ@_$=OKSN3C0&gt;*S4=&gt;!H^)#TM4JB (R)HKB0,KB0,KB0,KB0,7M3\7$II2^7-;)G-;SD1;^7/H2T1LSG-;^7-;^7-. "8._22&amp;_B(*J"(*J"(*J"*&amp;-T!;SG,''H[%V,5@B):]=!*=QS:]&lt;_G0BT@VE"895(0@@@@@@@I&lt;V$VD8BXDCS4&lt;-AX\Q,:!O_(B3U(E''G\%LJB!EM0,KVU%YVU%YVU%YVP,KB3\7M1KH^:R$)JR$)G-;SL%JSG-;)JR$)JR$1U$._22&amp;_B(*J"(*J"(*J"(*J")?[*Q;^2\%P;FG+T&gt;'')0ITV8AO@*]&lt;)0ITV3$9EA"#@@@@@@@@\12:$[ O,8AOS7:@C6F-S4&lt;C+P(E"DODJD0(JFQYVU&amp;.+*:.+*:.+*:.VU$KB0,7[L!;^:R$^7-;^7-LR$)L^7.$)JR$)JR$$G&lt;,)"(*J"(*J"(*J"(*J"(*J''1\RBY;^4%0W:&gt;3TJ]&lt;)76F!%Q=@ J''@*"-NC&amp;:1,^%@@@@@@CBG1&amp;8-8"DKZ -UCU#V:!OS8@5!J%''G\$(JB!2VZ81LSFB (JB (H1LSF.+%%YB3_C^7-;^7-;^7-;^2!J]B!L^7-;^7-;^:R]_:X*J"(*J"(*J"(*J"(*J"(*J''=@)G-L^2FXWX^-J:^''@%Q[ Z +@*\BS0L2V+](H:T@@@@@)\I5E@&lt;J+HB@*#LHC883S4&lt;C [LEVDODJB (JIH1 #@0LC@0LC@0LC@0 (H1+*9Y$,!;^7-;SD1LSG-;2T)42T1LSD1LSD1L^4"5)"(*J"(*J"(*J"(*J"(*J"(*))CL^7,''IY2M,CUO):^''*E,HS0HB@".(AUYZN[+B)P@@@@AMPVU#N("/ X@-KXQ#V24BS8@5!0U+P4$(JB!2VS@0 #B+K"8.K":+*:,0LHJBLZ92^41LSB (JB (SD3IR''SJJB (SD1LSD1L)AX,J"(*_B(*J"(*J")&lt;J"(*J"(*T,L&amp;I40''HQ*0B*(B):\+L5,-J0HBJ:)[NVA&amp;&amp;WF%@@@@@L,_1!R8OS 5 G8CV;X3S4=&gt;T0(2BY#D2R (SIL0LJ,.K"8.K''=?_28.K":+LCBBB2];^41LJB (2"!LSB_IR" (JB!LSD1LSB];0;U&lt;J"(*J"(*J"(*J"(*J"(*J"(AD2YLI2\%\KQX 76'')0H-V0!=J0H+*CLMNVZW\ZT@@@@@S\IFY+ =N@(GTZ5##B5OS0ND!0P=GRT(JD3HLS@.K''=?_7&lt;,KB1?_7=?K"8.LCA,^7-;^40(JB (SB_H1K--]L ''I7-;^7-LI2^$D E&lt;J"(*J"(*J"(*J"(*J"(*J''25''R]LSD$!Y;A[* J'')2.CC(A=@"-OTSIZXYW@)P@@@@B#G3&gt;QN%.DU(R/#FLHS2.(AP)VA;8]2R (SF0.K"9?KB0,)*XA) D,KB1?_28.V\N$)G-;I2\''I2\''^&amp;,UNU&gt;9[R];^7-;^2]L^:QHKJY&lt;J"(*J"(*J"(*J"(*J"(*J FSI$1LI2VZ-KNCJ:^''@%@NA78+J4=Q+KFKY"B%@@@@@L_AY[ZLV:=VU#V6#J(+S0ND,0POGWP(JB#HB29?_20A)*Z&amp;J"(*_G2&amp;) D,_28R^*R$)G(&amp;($$!HZJ\#[RHCU8P(JIHI*R$)JR$)L1\)"(*J"(*J"(*J"(*J"(*J")&lt;_KWL^40''RRE+,KMP@*^''J8Y[@2-OUKNH"1F:/D4@@@@@1&lt;F:X88OV8PEB&amp;LH*D=O KN/U)U02T0(I680_7&lt;,)*Y&lt;J"(*J")&lt;J")&lt;) D,*94&amp;RLUI(I2\''I2 ''FNHNH.K-H4?(*IHRD!HI"X&amp;I$ARJ''0*J"(*J"(*J"(*J"(*J"(*))6$^2\''(I)[V:5O@*\B* :DS7:-C#$9ZTI/SP@@@@A6Q!9&amp;.K :V5ZN#(EOS78GB(FMP2ELSB#H$B8,KJY&lt;_G1&lt;J")&lt;_G1&lt;)*Z&amp;@R1\)BX&amp;1T&amp;"RT$$IBR %U,M";R4")):3L3L3L0&amp;I"Z$RE^&amp;_G1&lt;J"(*J"(*J"(*J''0*J"*&amp;WBX''I2]I(KZG!"4+)0J(! 8C_%DG"H-&amp;%&lt;EM@@@@@GYFG+(=-# 5C&amp;X8U@LCASV/AV-0I40(I7J+_22&amp;)''0,T%IRUUUUUU]WU50SD96$)JR$)JR$^''):^*J"#X*J-H(&lt;3L3L3L3L3JR$)BZ$PALSWE]WU;UUUUURT%HA)''2&amp;) EUPB\''SB^ ]0&amp;3AT&lt;B@* HN(PC@2&lt;2M(.:Q44@@@@@H&lt;E($P&gt;HBU-)H+*F Z&amp;A+8P-#Q5LSD1LQYBP$ANS$1]@[$B]''Y7C^&lt;3L3JR$)JR$^:R$)JR$)L2$3L3C.5&lt;P%&lt;WL3L3L3L2$)G-;^7.$)JSL3L3L1Y6]04A@[&amp;2S$1L7$IA.I41L^2PP*Z&lt;ES2-OUC))N(@CTZ21"6X\(0@@@@B_0[*6C8"GMQQ8%81VA@R/!8BC.2\(JD1;I"X&amp;)JP&amp;)JR$^7-;)JQ;)JQ;^7-;^7-;^:R$)JR$)JR$)L1:(LWL3L3L3L2$)JQ;^7-L^7-;^7-;)JR$)JR$)G-;^2_HI&lt;WHR\!LJD3I''HNA!EE&gt;S0N3.!&amp;L@5R3CX.7Z[1K@@@@@I?AO6N6C8 IV9]8$X^,ACJG+U@PHR (JD1;^7-;^7-;^41LSD1LSD1;^7-;^7-;^7-;)JR$)JQ;)JR$)D"?/4#L3L3L)JR$^7-;^7-LSG-;^7-;^7-;^7-;^41LI2 ''I2\''2R (JBU'' HRA@79&gt; C(Y.#M&gt;UE,9XF&amp;=GL\@@@@@H4X^Y+"QN%.DEA8YC#J,+@$H@5 ]2\+JJD1L^7-;^7-;^7-;^7-;^7-;^7-;^:R$^7.$)G-;^7-;)JR$1TA@1\3L3L2$)G-;^7-;^7-;^7-;^41;^7-;^7-;^7-LSD1LSD0(JD3IHX(E+:$C_ LGY).6KW9QA0*KY)-GR0@@@@@#Q!::X;XN,0^LH''!#+:2,+8\ETK-4R$+JJD1;SG-;^7-;^7-;^7-L^7-;^7-;^:Q;^7-;^7.$^:R$)JSE[$CE3L2$)JR$^41L^7-;^7-;^7-;^7-;^7-;^7-;^7-LSD1LSD0(SB\ZA5ZDTW9&gt; E.[%XY&gt;_ L/L#ZK.,[G@@@@@G[AO9D:C+N3! 8?G+(J+J1VMHR(#WIJ2,((SG-;^7-;^7-;^7-;^41;^7-;^7-;^7-;^7.$)JR$)JR$)LU@/4"$)JR$)JQ;^41;^7-;^7-;^7-;^7-;^7-;^7-;^7-;SD1LSD0''(AB)BUMQ_ NAOY-#KT=&gt;@2&lt;2M(-&amp;1''X@@@@@''&lt;E(X0&lt;8V;LHBKY8^@&lt;I+CJ/MX@3.2WJ2"!L^7-;^7-;^7-;^7-;^7-;^7-;^7-;SD1;^7.$)JR$)JR$1TB?)L2$)JR$)G-L^7-;^7-;^7-;^7.$^7-;^7-;^7-LSG-L^41LSB\]!HF/*PLCTP*U%P +J4&lt;E!8,9-9WFH:T@@JU3Q#&lt;TOX8NMPT-L3&lt;^.KEVL*&gt;3+U@P]B#JJD1;^7-;^7-;^7-;^7-;^7-;^7-;^7-LSD1;^:R$)JR$)JP&amp;/96$)JR$)JQ;^7-L^7-;^7-;^7-;^:R$^7-;^7-;^7-;^7-LSD1LIV^)+0]QK0MSXY,T*",BS8BGNS%&amp;/\Y6)P@@)ROA^APTX805 J -EA:[NK@2U(\5*E"&gt;2,((JD1LSB];I41;^7-;^7-;^7-;^40''SB\''I41;)JR$^:R$)JR?0:R$)G-;^41LSB\''^40''^7-;^7-;^7-;^7-LSD0''SD1L^7-LSB_D"%NFT2&lt;/TZ=)&amp;80-J2-O@:$I-C4Y1$.%@@B%H&lt;EBEC6NC(ZC 0"OH''!#!3IV+5.**&amp;]42,((SD1LSD1L^7-;^7-;^7-;^7-;^41LSD1LSG-;^7-;^7.$)K?C)JQ;^40''2B\''SD1;SD1;^7-;^7-;^7-;^41LSD1LSG-;^40''IQ*-A:&lt;DK2&lt;ENI-)L: +J4&lt;C*SIZNYV^1:T@@@B_0\XT# &lt;NV;J2"X1(G&amp;&amp;H+5Z/,3N(#W@(2"!LSD1LSG-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^:R$0&lt;"$^7-;^41LSG-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;I43DW:$5U"&lt;/K5Z8&amp;0&gt;(J0HBS8BDV(.7FY8#@@@@)Y?AP!Q## :3+Z(-* 18P#(4U*&lt;I,25T.&lt;$(JB!LSD1L^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^:SCI*Q;^7-;^7-;^7-;^41;^7-;^7-;^7-;^7-;^7-;^7-L^40''I4LHT8]SK2&lt;DV)U)!D&lt;B@ H+ KNKNV&amp;=GGX@@@@@''&lt;F!EK =C(P-_$=&gt;UI%FEE./+0%[+UA_H\+JJB!LJD1;^7.$^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7.$)L"$^7-;^41LSD1LSG-LSG-;^7-;^7.$)G-;^7-;^7-;^7-LSB]IZ8BD+0P/K3J7&amp;;"C*B,B@",CA;FKY)]GR0@@@@@#0Q::$X9[B@"F,($L.''"WC8^/MKD5*@!-R$+JJB (SG-;^:R$^7.$^7-;^:Q;^7-;^7-;^7-;^7-;^:R$)JQ;I2\(JB (JB!LSD1L^7-;^7-;^:R$^7-;^7-;^7-;SD1LI91X*[L2AB&lt;DM&amp;&amp;[V:6(J0HBJ0N)BP67]99K@@@@@I?AG)U#N 9[,+JI"P0&lt;&amp;W"QV:&lt;4!U.@TF-4R$+JJB ''SG-;^7-;^:R$^7-;^7-;SD1LSB\''I2]LSD1;)JR$^7-LJB#J2,+JJB!LSB];^7-;^7-;)JQ;^7-LSD1LSD1LSD1I.0TGBZ0DK5NK&amp;1R)_ J'')0IO @$MNV&amp;WGJL@@@@@H1&lt;^O; =C(P-@0N(@3NQG!&amp;4!Z&gt;EB(R("''AJR,((SD1;^7-;^7-;)JQ;^:R$^7-;SD1LSG-;^41LSG.$)JQ;^40(JB#JJB (SD1;^7-;^7-;^7-;)G-;SD1LSD1LSD1LSBFM*P&amp;/AJ$D+6Z[N(EPJ0HBJ78E,X,=&amp;1%GSP@@@@CGG197$S6L!*6*UCNC,;Y8P+Z1MCR1,5B*[RWJ2"!L^7-;^7-;^7-;)JR$)JR$)G-LSD1L^7-;^2];)JR$)JR$^2]LSD1LSD1L^7.$)JR$)G-;^7-;^7-LSB ''I41LSD0''/(QS,SHDAZ2HF[(NBEQOJ2-O_%EVV &gt;UO2AM@@@@@JO@G''!)X0&lt;N,8Z2CH2OX6 ^Y+REMH][+UA_1B (JD1;^7-;^7-;^7.$)JR$)JR$^41LSG.$)JR$^:R$)JSL)JR$)G-;^7-;^7-;)JR$)JR$^7-;^7-;^41LSB\''SD0''SBV9 J&lt;4+@PD+1F[XP]Q*B,BJ4&lt;CA8"KOW\?Z$4@@@@@(&lt;CAG!&amp;QN%.A EF@ @][X7 "C;FE!U,HT@"&gt;JB (SD0''SG-;^41;^:R$)JR$)JQ;^7-;)JR$)JR$)JSL3L3L3L2$)JSL3L2$)JR$)JR$)JR$^7-;^7-;SD1;^7-LSD0''HP"@B*&lt;DA@QZZYVKMXF@_W5O*HB/CVE)]6!A)P@@@@AM0F&lt;^FQRNC#UVL8R3C(&lt;TP!9#"HVEB%.*TK$%2,((SD1LSG-;^7-;)JR$3L3L)JR$)JSL3L3L3L3L3L3L3L3L3L3L3L3L3L2$)JR$)JR$)JQ;^7-;^2\''SB\''I40(SBTZ @^EL PDL+^[Y(,8,:4-T@N)T0%ZC6&amp;=FDR%@@@@@JUD[4YF^ARN#H![,80:-)FUG!$O!8V1"HN("Q5JR,((SD1L^7-;^:R$3L3L3L3L3L3L3L3L3L3L3L3L3L3L3L3L)L3L3L3L3JR$)JR$)JR$)JQ;^7-;I2\''I2]LSB#IHX6@MSPFAJ2EZY,QCP)VAXB@*UN/C[])%3&lt;&gt;QJT@@@@@)TP (TX"$S(8,;L5V3(&lt;EA$^P+Y[,XVH,0MP/$)J2"!LSD1;^:R$)JSL3L3L3L3L3L3L3L3L3L2$3L3L3L3L3L2$)L3L3L3L)JR$)JR$)JSL)JR$^7-;^7-;SD0(JB^&gt; 8F1+:0DL(.[&amp;34QNP:3+:&lt;4!5(OY$JWO3:_@@@@@@B%H4E/G!8^G''^Q-(&gt;6EFV:ZLX^. :1,[FH+W5_H\+JJD1LSD1;)JR$3L3L3L2$)JR$)JR$)JR$)JR$3L3L3L3L3JR$)JR$)JR$)JR$)JR$)L3L)JQ;^41;^7-LJB (IQB@!KD2+J04O[6[.C66C08NNH-!.IV[%9\XO$,@@@@@@JWGPRA/(Q9FH''\YZC?FQ7!8(ZD"C5*1B("F*HN&gt;R$+JJD1LSD2$)L3L3L3L3JR$)G-;^7-;)JR$)JR$3L3L3L2$)JR$)JQ;^:R$)JR$)JSL3L3L)JQ;SG-;SD0(JL%0VH@JMCJ,L+Q)%2JY]9%(FQ$Y];5BH)]7FA!A20@@@@@@@D7BF2@\Q7"!G!:!(Q;AQ$Y8^A:QNKE[V%.**+$%R,+JJB (I7.$3L3L3L2$)JR$^41LSD1LSG-;^:SL3L3L3JR$^7-;SD1;^7-;)JR$)L3L3L3L)G-;^41;SB (I[.@A5*/L X4DY\Y1''!GQ12^&amp;\[F&amp;Y$?FC&lt;?O,J%@@@@@@B%)WYA%+2&lt;Z+2&lt;''):&lt;/K0\Z"AGG!$O"KEZC(R("!5JR,+JJB ''^:SL3L3L3JR$)JQ;SD1LSD1L^7-;)L3L3L3L)G-;SD1LSB]LSD1;^7.$)L3L3L2$^7-;^2]LSL$!"(BG!Z&lt;FL%*:]3=80\GA0\EGGI:^]S8X''&amp;+@10@@@@@@@@B%SY?@0LC@G&lt;C@0A&lt;_G1&lt;_G4^!^FNHB("HV:"*[T)J2,((JD1;)L3L3L3L)JR$)G-;^7-;^7-;^:R$3L3L3L2$)G-;^7-LSG-LSG-;^:R$3L3L3L2$^7-;^41L2[:- P(4L Z/"9-7''$YF\WE1\TX_G1&lt;_0A=AQGZ%@@@@@@@@@@B%SWZ_0$S@0LC@0LC@0L@_Q$\^ZP&gt;HV( 8+Z"M1D+JJD1L^:R$3L3L3L3L3JR$)JR$)JR$)JR$)L3L3L3L3JR$)JR$)JR$^7-;^7-;)JSL3L3L3JR$^7-LSB\%W:&amp;/B#P2L+DTH!#AG4QDQDQDQDQDQLKB\2N#)P@@@@@@@@@@@@@@@JWK(2''G]"L#''7OB0''M1GA9BXP8J"H"F*J5C2R (SD1;)JSL3L3L3L3L3JR$)JR$)L3L3L3L3L3L3L3L)JR$3JSL3JR$)JR$)JR$)L3L3L2$)JQ;^7,''I15X*P*1+3J/CQ$?FGGB\2M6]"M61&lt;\)(&lt;-M@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)PB%SRMAQ18TNH!ZC%.*TA@%I41LSD1;)JR$3L3L3L3L)JR$)JR$)JR$)L3L3L3L3L3L)JR$)JR$)JR$)JR$)JR$3L3L)JR$^7-;^7,$Z:%V"HV/,HT=%3&gt;&lt;0*N%@@B%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(4P G#&lt;O"H"4NHR@"!+DRR\''2R];^7.$)JR$)JR$)JR$^7.$)JQ;)JR$3L3L3L2$)JR$^7-;^7-;^7-;^:R$)JR$^7-;^2\''HY"M*[D6MJ&gt;/"F&amp;WFDE6)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%H;1/G&amp;L8-H 8"J&gt;0,U9+P2GII41LSG-;^:R$)JR$)JR$)JQ;)G.$)JSL3L3L3JR$^7-;^7-;^7-;SD1L^7.$)G,''I2\%G[.M" &amp;/"KD4+3Q!&amp;7\&gt;QD4@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B#QD\^F@&gt;4"C"K"8"E,KB4EV7D2T1;SB]L^7.$)JR$)JR$)JR$)JR$3L3L3L3L3JR$)JR$^:Q;^7-LSD1;^7-;I4$!/+!^WSRE,X M,SP4M&amp;ZWFDD#)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JT#P\D"- 88XVE "8,MM+B0WU&lt;Z\BT''I2]LSG.$)JR$)JR$)JR$)L3L3L2$3JR$)JR$)JQ;^7-LSD0(SD1LI4$]F!VTWSR1V 6K"3&amp;K,XVK]7\&gt;0,,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D7B[18T#)D=D[^7XF@9"5(4A+B4E[8!RR]LSG-;^7-;SD1L^7.$)JSL3JSL)JQ;)JR$^41LSB (JB!L2RF&gt;Z59]MKD6CX.KNS$9#!D=NIFWFDEM)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@GYA0T\?H)TTOQF7-6@9NX.H!PXF,QTZ\D$''I2\''SD0''SD1L^7.$)L3L3L2$I"Y;^7-LSB\(JB!L2RE-E[Q]MKFH"8,9NS%!-8:8Z[4YFY%(H:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@S\@ [7"!G$I7.)D=DQF7XS$9"3Z0A Z4.[8!I2\''I2\''I41;)JSL3L3L3JR$^7-LSD1LSD3II[9+W+D4ME*K"3$9XFB7OS5&amp;]4IBP)''FO$GK@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%0!-*GD]8^A:!&amp;[(TX1DQ-;] NX-ZMJ2,,QU-HT$''SD1;^7.$)JSL3L2$)JQ;^7,''SB_I1K:9-E44,U*K"3$9-;^7D[!)]4IBP)&amp;YO1 &gt;\:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B#PYZ&lt;Z+0\Q7"!G'' Y.+ QO[^7-3&amp;KC[D2+KA^Z14%I2];^7.$)JR$)G-;SD1LI2\%GV]_,[@4M(.KNS% -;^7OVZUH$IB1)$?]WU5%,B#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV#''&lt;@[Z&amp;*^GD]G(Q98%6&amp;8X34Q-6E NX.H,J2,,QB&gt;HR\''I2];^7-;^2\''I&lt;$!/+&amp;4MK@4"H,9NVB7-;^7.F%7P$H"1)$XO7U5/LB_(0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%(2O@P[15]T\\(ZE8^DHYEID=DQF7XC&amp;K"CR,+KBM.7AII2]L^41LI4%0F!V1,J&gt;1CS$9XFB7DQD=.IV=^DJY1)%5FGV^HDE3(:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@SROB0F&lt; Z):^GD]8(Q98];(TOS4=D[^7XH.1L R,%AU-HR\''I2F&gt;.YR0A#RH"3$9-;^7DS68.'']BP"KF&amp;S&lt;XFGV&lt;Q6?B\:L@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@SRMDQGEA/K2^'',YGQ7 ^^BJU.C4=OQDQ-3&amp;KV%XD+KBMY4LZW560A+F4"3% -;\QDQF8%RIBP"KF''#&lt;XFGV&lt;[&lt;H_0GOK@JT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)WYD0GE10V&gt;&lt;''):^GD]8(Q8^];*QOS4QDQE NP4I+J&amp;,,[B,MCZKXFB7D[\QO[!&amp;]7!8H,ZYO1 XFI9G0WD_P\B_SP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZM3PTD_\TY//I95''!0\^G"!G)%)EID=DQF7-3$8,P^,M@6KXFB7-1DQO[!)%7!8H,Z^]Q X]Y9/Q$X_[4ED]$4@@@@@@@@@@@ANS @@248@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@L._0DEA[4YF0RB^/GV^GG!8(Q98FVZQX34Q-;] "8,9-;^7-1D=.FXY^G!BH,Y5FA!5''!3AG4Y/[2AA0$.%@@@@@@@@@@@@@B$)S*M9^T8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D6_F4EAPV=1Q!=//I:^'',Y8^JF!^I%).C4=OQF7-;^7DS4=.K*WP'' "&amp;Y&amp;YFA!5]T]1G1=/GK0[F4R#)P@@@@@@@@@@@@@@JR$)JW%9JP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D7GQA,[%$E/G4Y1[;2^]Y:&lt;GD^!(W "FQP=OS4QDS4=.IT"^BKF1)%5FA!5''&amp;=10&amp;=//K2V%$P#20@@@@@@@@@@@@@@@@@)^W%9^W$)S @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AMH4P[Z"B&lt;[6=1Q,EA/GU5/A0\^LD^^I&amp;:.FNQZW]B^BKF&amp;WU5FGV^GDYFQ$F&lt;Z)ZV%,B_(0@@@@@@@@@@@@@@@@@@@GY9JR%9^R$)@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@27L[F9ZV/DE/0TY1[;15]Y:^Q7"!(W "&amp;Y%8^L[F&amp;WTXFA"^[1=FQ$\\/F)*Z)[B(:T@@@@@@@@@@@@@@@@@@@@@JR%NS''$)S"%N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZM3F9ZV%)X PV&lt;_G1=G''''V^''!1G^JE8P,ZY&amp;S&lt;XFI8\0TYFQ11*/F)*%!-D(:T@@@@@@@@@@@@@@@@@@@@@@@A9^R$)^ZL@S"%N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZWG\&lt;@[%)ZV/BCAQ$[AQ9:^]Y8\Q&lt;Z^FA X]WT\G1?AQ;2&lt;Z&amp;*V%!/B]$4@@@@@@@@@@@@@@@@@@@@@@@@@@B$)S,-9(0@@(2$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%SZN_QDD[%)ZVPV?B0,EG''''V^FA!5'')9GG1=/HK2VZ)ZV0DQ62:T@)P@@@@@@@@@@@@@@@@@@@@@@@@@@JR$)JR%N@@@@S @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JUM(2OBPQ,[PTEA\Q&lt;_PV(&gt;Z+0_G1=APYZVF1-D\&lt;]M)ZV%)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@S AN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D6#12M30$QDQDR_0!/@QDS@QLJ_''9&lt;#(46%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)ZV%)T6%(:N#]''[G(&lt;-M)PB%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@b'))</body>

<body package="RobotFire" selector="mask">mask
	"UIMaskEditor new openOnClass: self andSelector: #mask"

	&lt;resource: #image&gt;
	^(Image extent: 126@109 depth: 1 bitsPerPixel: 1 palette: CoveragePalette monoMaskPalette usingBits: (ByteArray fromPackedString: '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@A8@@@@@@@@@@@@@@@@@@@C? @@@@@@@@@@@@@@@@@@G??@@@@@@@@@@@@@@@@@@G??&gt;@@@@@@@@@@@@@@@@@O???8@@@@@@@@@@@@@@@@_????0@@@@@@@@@@@@@@@_?????@@@@@@@@@@@@@@@_?????&gt;@@@@@@@@@@@@@@???????8@@@@@@@@@@@@@????????0@@@@@@@@@@@A?????????@@@@@@@@@@@A?????????&gt;@@@@@@@@@@C??????????8@@@@@@@@@C???????????0@@@@@@@@C????????????@@@@@@@@A????????????0@@@@@@@@????????????&gt;@@@@@@@@O????????????0@@@@@@@G????????????&lt;@@@@@@@A?????????????@@@@@@@@?????????????8@@@@@@@O????????????&gt;@@@@@@@G?????????????0@@@@@@A?????????????&lt;@@@@@@@?????????????? @@@@@@O?????????????8@@@@A??????????????????@@@??????????????????&lt;@A??????????????????? @???????????????????&lt;@O???????????????????@G???????????????????8A???????????????????&gt;@_???????????????????0G???????????????????&lt;A????????????????????@_???????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0G???????????????????&lt;A????????????????????@O???????????????????0C???????????????????&lt;@???????????????????&gt;@G???????????????????@@G?????????????????? @@@G??????????????@@@@@@A?????????????? @@@@@@O?????????????8@@@@@@C?????????????&gt;@@@@@@@_?????????????@@@@@@@G?????????????0@@@@@@@?????????????8@@@@@@@G????????????&gt;@@@@@@@A?????????????@@@@@@@@O????????????0@@@@@@@A????????????8@@@@@@@@G???????????8@@@@@@@@@_??????????8@@@@@@@@@A??????????8@@@@@@@@@@G?????????8@@@@@@@@@@@O????????8@@@@@@@@@@@@????????0@@@@@@@@@@@@A???????0@@@@@@@@@@@@@G?????? @@@@@@@@@@@@@@O????? @@@@@@@@@@@@@@@?????@@@@@@@@@@@@@@@@A????@@@@@@@@@@@@@@@@@G??&gt;@@@@@@@@@@@@@@@@@@O?&gt;@@@@@@@@@@@@@@@@@@@?&gt;@@@@@@@@@@@@@@@@@@@A&lt;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@a'))</body>

<body package="RobotFire" selector="image">image
	&lt;resource: #image&gt;
	^OpaqueImage figure: self basicImage shape: self mask.</body>
</methods>

<methods>
<class-id>RobotFireInspector class</class-id> <category>instance creation</category>

<body package="RobotFire" selector="new:">new: aController
	^super new initialize: aController</body>
</methods>


<methods>
<class-id>RobotFireInspector</class-id> <category>changing</category>

<body package="RobotFire" selector="tabsChanged">tabsChanged
	| index |
	index := self tabs selectionIndex.
	(self builder componentAt: #tabbing) widget client: self spec: (self specArray at: index)</body>
</methods>

<methods>
<class-id>RobotFireInspector</class-id> <category>updating</category>

<body package="RobotFire" selector="update:">update: anAspect
	(anAspect == #direction) ifTrue: [ self direction value: ('Dirección : ' , self robot direction printString , '°'). ].
	(anAspect == #capacity) ifTrue: [
  		self battery value:  ('Batería : ' , (self robot battery charge printString) , '  (' , (self robot battery charge * 100 / self robot battery capacity) rounded printString, '%)').
  		self capacityBateria value: self robot battery capacity.
 	].
 	(anAspect == #position) ifTrue: [
  		self position value: ('Posición : ' , self robot position printString).
		self battery value:  ('Batería : ' , (self robot battery charge printString) , '  (' , (self robot battery charge * 100 / self robot battery capacity) rounded printString, '%)').
  		self chargeBateria value: (self robot battery charge).
 	].
	(anAspect == #closeWorld) ifTrue: [ self closeRequest ]</body>
</methods>

<methods>
<class-id>RobotFireInspector</class-id> <category>initialize</category>

<body package="RobotFire" selector="initialize:">initialize: aController
	self robot: aController model.	
	self view: aController view.
	self setDependents.</body>
</methods>

<methods>
<class-id>RobotFireInspector</class-id> <category>menus</category>

<body package="RobotFire" selector="doItContext">doItContext
	^nil</body>

<body package="RobotFire" selector="doItReceiver">doItReceiver
	^self robot.</body>

<body package="RobotFire" selector="myselfTextMenu">myselfTextMenu
	^[Menu
		labelList: ParagraphEditor editGroupLabels, #(('do it' 'print it' 'inspect'))
		values: ParagraphEditor editGroupSelectors, #(doIt printIt inspectIt)
	].</body>
</methods>

<methods>
<class-id>RobotFireInspector</class-id> <category>aspects</category>

<body package="RobotFire" selector="escudos">escudos
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^escudos isNil
		ifTrue:
			[escudos := Shield subclasses asList asValue]
		ifFalse:
			[escudos]</body>

<body package="RobotFire" selector="movimiento">movimiento
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^movimiento isNil
		ifTrue:
			[movimiento := self robot movement class asValue]
		ifFalse:
			[movimiento]</body>

<body package="RobotFire" selector="movimientos">movimientos
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
|movi|
	^movimientos isNil
		ifTrue:
			"[movimientos := Movement subclasses asList asValue]"
			[movi:= List new. movi add:NullMovement; add:MovementWithRadar; add:MovementRandom; add:MovementCircular; add:MovementRepetitive.
			 movimientos:=movi asValue.]
		ifFalse:
			[movimientos]</body>

<body package="RobotFire" selector="colores">colores
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^colores isNil
		ifTrue:
			[colores := RobotView colorArray asList asValue]
		ifFalse:
			[colores]</body>

<body package="RobotFire" selector="chargeBateria">chargeBateria
	^chargeBateria isNil
		ifTrue:
			[chargeBateria := self robot battery charge asValue]
		ifFalse:
			[chargeBateria]</body>

<body package="RobotFire" selector="gun">gun
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^gun isNil
		ifTrue:
			[gun := self robot gun class asValue]
		ifFalse:
			[gun]</body>

<body package="RobotFire" selector="image">image
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^image isNil
		ifTrue:
			[image := self view symbolImage asValue]
		ifFalse:
			[image]</body>

<body package="RobotFire" selector="direction">direction
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^direction isNil
		ifTrue:
			[direction := String new asValue]
		ifFalse:
			[direction]</body>

<body package="RobotFire" selector="armas">armas
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^armas isNil
		ifTrue:
			[armas := Gun subclasses asList asValue]
		ifFalse:
			[armas]</body>

<body package="RobotFire" selector="position">position
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^position isNil
		ifTrue:
			[position := String new asValue]
		ifFalse:
			[position]</body>

<body package="RobotFire" selector="movements">movements
	^movements isNil
		ifTrue: [			
			(self robot movement isMovementRepetitive or: self robot movement isMovementCircular) ifTrue: [
				movements:= self robot movement code asValue
			]
			ifFalse: [ movements:= String new asValue ]
		]
		ifFalse:
			[movements]</body>

<body package="RobotFire" selector="shield">shield
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^shield isNil
		ifTrue:
			[shield := self robot shield class asValue]
		ifFalse:
			[shield]</body>

<body package="RobotFire" selector="tabs">tabs
	tabs isNil
		ifTrue: 
			[(tabs := SelectionInList with: self labelArray) selectionIndex: 1.
			tabs selectionIndexHolder onChangeSend: #tabsChanged to: self].
	^tabs</body>

<body package="RobotFire" selector="battery">battery
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^battery isNil
		ifTrue:
			[battery := String new asValue]
		ifFalse:
			[battery]</body>

<body package="RobotFire" selector="capacityBateria">capacityBateria
	^capacityBateria isNil
		ifTrue:
			[capacityBateria := self robot battery capacity asValue]
		ifFalse:
			[capacityBateria]</body>

<body package="RobotFire" selector="imagenes">imagenes
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^imagenes isNil
		ifTrue:
			[imagenes := RobotView imagesArray asList asValue]
		ifFalse:
			[imagenes]</body>

<body package="RobotFire" selector="color">color
	^color isNil
		ifTrue:
			[color := self view color asValue]
		ifFalse:
			[color]</body>
</methods>

<methods>
<class-id>RobotFireInspector</class-id> <category>accesing</category>

<body package="RobotFire" selector="tabs:">tabs: aTabs 
	tabs:=aTabs.</body>

<body package="RobotFire" selector="robot:">robot: aRobot 
	robot:=aRobot.
	self updateValueHolders.</body>

<body package="RobotFire" selector="robot">robot
	^robot.</body>

<body package="RobotFire" selector="view">view
	^view</body>
</methods>

<methods>
<class-id>RobotFireInspector</class-id> <category>actions</category>

<body package="RobotFire" selector="saveCambios">saveCambios
	(self chargeBateria value &gt; self capacityBateria value) ifTrue: [
		Dialog warn: 'La capacidad de la bateria no puede ser menor que su carga.'.
		^self
	].	
	self view color: self color value.
	self view symbolImage: self image value.
	self changed: #image.
	self robot brushUp; brushDown.
	self robot battery charge: self chargeBateria value.
	self robot battery capacity: self capacityBateria value.

	"Asignacion de comportamiento"
	self robot gun: (self gun value robot: self robot).
	self robot shield: (self shield value robot: self robot).
	self robot movement: (self movimiento value robot: self robot).
	(self robot movement isMovementRepetitive) ifTrue: [
		self robot movement code: self movements value.
	].
	(self robot movement isMovementCircular) ifTrue: [
		self robot movement assignMovements: self movements value.
	]</body>
</methods>

<methods>
<class-id>RobotFireInspector</class-id> <category>private</category>

<body package="RobotFire" selector="removeDependents">removeDependents
	self robot removeDependent: self.
	self removeDependent: view.
	self view removeDependent: self.
	self robot battery removeDependent: self</body>

<body package="RobotFire" selector="updateValueHolders">updateValueHolders
		| bat |
		bat:= self robot battery.
		self direction value: ('Dirección : ' , self robot direction printString , '°').
		self battery value:  ('Batería : ' , (bat charge printString) , '  (' , (bat charge * 100 / bat capacity) rounded printString , '%)').
		self position value: ('Posición : ' , self robot position printString).</body>

<body package="RobotFire" selector="setDependents">setDependents
	self robot addDependent: self.
	self addDependent: view.
	self view addDependent: self.
	self robot battery addDependent: self</body>

<body package="RobotFire" selector="release">release
	self removeDependents</body>
</methods>

<methods>
<class-id>RobotFireInspector</class-id> <category>interface opening</category>

<body package="RobotFire" selector="postOpenWith:">postOpenWith: aBuilder 
	super postOpenWith: aBuilder.
	self tabsChanged</body>
</methods>

<methods>
<class-id>RobotFireInspector</class-id> <category>private - accessing</category>

<body package="RobotFire" selector="model">model
	^model</body>

<body package="RobotFire" selector="specArray">specArray
	^#(#presentation #properties)</body>

<body package="RobotFire" selector="view:">view: aView
	view:= aView</body>

<body package="RobotFire" selector="labelArray">labelArray
	^Array with: (self robot world getRobotName: self robot) with: 'Propiedades'</body>

<body package="RobotFire" selector="model:">model: aModel
	model:= aModel</body>
</methods>


<methods>
<class-id>RobotFireApplication class</class-id> <category>interface specs</category>

<body package="RobotFire" selector="windowSpec">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#properties: #(#{UI.PropertyListDictionary} #sizeAutoSave true #sizeType #lastSavedSize #openType #advanced #positionType #positionSystemDefault ) 
			#label: 'Robot World (Practica 2)' 
			#min: #(#{Core.Point} 40 20 ) 
			#max: #(#{Core.Point} 0 0 ) 
			#bounds: #(#{Graphics.Rectangle} 158 147 902 617 ) 
			#isEventDriven: true ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.CompositeSpecCollection} 
					#collection: #(
						#(#{UI.TextEditorSpec} 
							#layout: #(#{Graphics.LayoutFrame} 1 0 0 0.8 0 0.762795 0 1.0 ) 
							#name: #transcript 
							#model: #text 
							#tabRequiresControl: true ) 
						#(#{UI.ActionButtonSpec} 
							#layout: #(#{Graphics.Rectangle} 1 537 81 560 ) 
							#name: #ActionButton1 
							#model: #clearArena 
							#label: 'Limpiar arena' 
							#defaultable: true ) 
						#(#{UI.ActionButtonSpec} 
							#layout: #(#{Graphics.Rectangle} 86 537 170 560 ) 
							#name: #ActionButton2 
							#model: #addRobot 
							#label: 'Agregar robot' 
							#defaultable: true ) 
						#(#{UI.ActionButtonSpec} 
							#layout: #(#{Graphics.Rectangle} 172 537 247 560 ) 
							#name: #ActionButton3 
							#model: #initJuego 
							#label: 'Iniciar juego' 
							#defaultable: true ) 
						#(#{UI.ActionButtonSpec} 
							#layout: #(#{Graphics.Rectangle} 251 537 323 560 ) 
							#name: #ActionButton4 
							#model: #stopJuego 
							#label: 'Parar juego' 
							#defaultable: true ) 
						#(#{UI.ActionButtonSpec} 
							#layout: #(#{Graphics.Rectangle} 327 537 462 560 ) 
							#name: #ActionButton5 
							#model: #addTokens 
							#label: 'Agregar 10 tokens al azar' 
							#defaultable: true ) 
						#(#{UI.SubCanvasSpec} 
							#layout: #(#{Graphics.LayoutFrame} 0 0.766732 0 0.757447 0 0.996063 0 0.995745 ) 
							#name: #InspectorSubcanvas 
							#flags: 0 
							#clientKey: #inspector ) 
						#(#{UI.ArbitraryComponentSpec} 
							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.0 0 1.0 0 0.758865 ) 
							#flags: 11 
							#component: #worldView ) ) 
					#compositeSpec: 
					#(#{UI.CompositeSpec} 
						#layout: #(#{Graphics.Rectangle} 3 3 1019 708 ) 
						#name: #Composite1 ) ) ) ) )</body>
</methods>


<methods>
<class-id>RobotFireApplication</class-id> <category>update</category>

<body package="RobotFire" selector="refreshInspector">refreshInspector
	self localVars: NameSpace new.
	self world namedRobots keysAndValuesDo: [:key :value | self localVars at: key put: value].
	self inspector inspector initialize: self localVars.</body>
</methods>

<methods>
<class-id>RobotFireApplication</class-id> <category>events</category>

<body package="RobotFire" selector="noticeOfWindowClose:">noticeOfWindowClose: aWindow 
	self world retractInterestIn: #robotAdded for: self.
	self world retractInterestIn: #robotRemoved for: self.
	^super noticeOfWindowClose: aWindow</body>
</methods>

<methods>
<class-id>RobotFireApplication</class-id> <category>initialize</category>

<body package="RobotFire" selector="initialize">initialize
	super initialize.
	self text: self defaultText asValue.
	self world: RobotWorld new.
	self world defaultProperties: RobotFireInspector.
	self inspector: self world defaultInpector.
	self world tamano: (ModelWorld origen: -250@-250 extremo: 400@250).
	self worldView: self world defaultView</body>
</methods>

<methods>
<class-id>RobotFireApplication</class-id> <category>accessing</category>

<body package="RobotFire" selector="worldView">worldView
	^worldView</body>

<body package="RobotFire" selector="world">world
	^world</body>

<body package="RobotFire" selector="world:">world: aWorld 
	world isNil ifFalse: [	
		world retractInterestIn: #robotAdded for: self.
		world retractInterestIn: #robotRemoved for: self.
	].
	world:= aWorld.
	aWorld expressInterestIn: #robotAdded for: self sendBack: #refreshInspector.
	aWorld expressInterestIn: #robotRemoved for: self sendBack: #refreshInspector.</body>
</methods>

<methods>
<class-id>RobotFireApplication</class-id> <category>aspects</category>

<body package="RobotFire" selector="inspector">inspector
	^inspector.</body>

<body package="RobotFire" selector="text">text
	^text</body>
</methods>

<methods>
<class-id>RobotFireApplication</class-id> <category>actions</category>

<body package="RobotFire" selector="initJuego">initJuego
	self world initJuego</body>

<body package="RobotFire" selector="clearArena">clearArena
	self world clearRobots.
	self world clearPaths</body>

<body package="RobotFire" selector="addTokens">addTokens
	self world addRandomTokens: 10</body>

<body package="RobotFire" selector="addRobot">addRobot
	(AddRobot on: self world) open</body>

<body package="RobotFire" selector="stopJuego">stopJuego
	self world stopJuego.</body>
</methods>

<methods>
<class-id>RobotFireApplication</class-id> <category>interface opening</category>

<body package="RobotFire" selector="postOpenWith:">postOpenWith: aBuilder
	super postOpenWith: aBuilder.
	(self builder componentAt: #InspectorSubcanvas) widget
							client: self inspector
							spec: #windowSpec
							builder: builder newSubBuilder.
	self refreshInspector.</body>

<body package="RobotFire" selector="postBuildWith:">postBuildWith: aBuilder
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
	(win := aBuilder window) notNil ifTrue: [win label: 'Robot FIRE'].</body>
</methods>

<methods>
<class-id>RobotFireApplication</class-id> <category>private - accessing</category>

<body package="RobotFire" selector="defaultText">defaultText
	^'Robot FIRE - Juego de lucha de robots'</body>

<body package="RobotFire" selector="localVars">localVars
	^localVars</body>

<body package="RobotFire" selector="text:">text: aText
	text:= aText</body>

<body package="RobotFire" selector="worldView:">worldView: aWorldView 
	worldView:= aWorldView</body>

<body package="RobotFire" selector="localVars:">localVars: anObject
	localVars:= anObject</body>

<body package="RobotFire" selector="inspector:">inspector: anInspector 
	inspector:= anInspector</body>
</methods>


<methods>
<class-id>ShieldEsquivador</class-id> <category>actions</category>

<body package="RobotFire" selector="receiveDisparo:">receiveDisparo: aShot
	self robot movement move.
	^0</body>
</methods>


<methods>
<class-id>ShieldMedium</class-id> <category>actions</category>

<body package="RobotFire" selector="receiveDisparo:">receiveDisparo: aShot
	^(aShot gun descarga / 2) rounded</body>
</methods>


<methods>
<class-id>GunBomb class</class-id> <category>initialize creation</category>

<body package="RobotFire" selector="new:">new: aRobot
	^super new initialize: aRobot</body>
</methods>


<methods>
<class-id>GunBomb</class-id> <category>accessing</category>

<body package="RobotFire" selector="longLinea">longLinea
	^50</body>
</methods>

<methods>
<class-id>GunBomb</class-id> <category>initialize-release</category>

<body package="RobotFire" selector="initialize:">initialize: aRobot
	robot:= aRobot.
	distancia:= 100.
	descarga:= 100</body>
</methods>

<methods>
<class-id>GunBomb</class-id> <category>private</category>

<body package="RobotFire" selector="onShot">onShot
	| shot |
	shot:= Shot new: self.
	shot addPoint: (self robot position + (Point r: 50 theta: ((Float pi / 180) * (self robot direction negated - 90)))) rounded.
	^shot</body>
</methods>


<methods>
<class-id>UniqueMovimiento class</class-id> <category>instance creation</category>

<body package="RobotFire" selector="newMove:inDirection:">newMove: aNumber inDirection: aDirection
	^super new initialize: aNumber inDirection: aDirection</body>
</methods>


<methods>
<class-id>UniqueMovimiento</class-id> <category>initialize-release</category>

<body package="RobotFire" selector="initialize:inDirection:">initialize: aNumber inDirection: aDirection
	self move: aNumber asNumber.
	self direction: aDirection asNumber </body>
</methods>

<methods>
<class-id>UniqueMovimiento</class-id> <category>printing</category>

<body package="RobotFire" selector="printOn:">printOn: aStream
	aStream nextPut: 'Movement (D:'; nextPut: self direccion asString; nextPut: ' M:'; nextPut: self move asString; nextPut: ')'</body>
</methods>

<methods>
<class-id>UniqueMovimiento</class-id> <category>accessing</category>

<body package="RobotFire" selector="direction">direction
	^direction</body>

<body package="RobotFire" selector="move">move
	^move</body>

<body package="RobotFire" selector="direction:">direction: anObject
	direction := anObject</body>

<body package="RobotFire" selector="move:">move: anObject
	move := anObject</body>
</methods>


<methods>
<class-id>AddRobot class</class-id> <category>interface specs</category>

<body package="RobotFire" selector="windowSpec">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#properties: #(#{UI.PropertyListDictionary} #openType #userPlacement ) 
			#label: 'Agregar robot' 
			#min: #(#{Core.Point} 250 164 ) 
			#max: #(#{Core.Point} 250 164 ) 
			#bounds: #(#{Graphics.Rectangle} 640 512 890 676 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 40 16 ) 
					#name: #Label1 
					#label: 'Nombre:' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 40 48 ) 
					#name: #Label2 
					#label: 'Posición:' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 40 80 ) 
					#name: #Label3 
					#label: 'Dirección:' ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 87 16 214 39 ) 
					#name: #InputField1 
					#model: #nombre ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 118 48 152 71 ) 
					#name: #InputField2 
					#model: #posX 
					#type: #number ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 99 48 ) 
					#name: #Label4 
					#label: 'X:' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 160 48 ) 
					#name: #Label5 
					#label: 'Y:' ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 179 48 213 71 ) 
					#name: #InputField3 
					#model: #posY 
					#type: #number ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 92 79 214 101 ) 
					#name: #ComboBox1 
					#model: #direccion 
					#numChars: 1 
					#type: #symbol 
					#comboList: #direcciones ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.Rectangle} 133 108 214 131 ) 
					#name: #ActionButton1 
					#model: #addRobot 
					#label: 'Agregar robot' 
					#defaultable: true ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.Rectangle} 41 108 122 131 ) 
					#name: #ActionButton2 
					#model: #cancel 
					#label: 'Cancelar' 
					#defaultable: true ) ) ) )</body>
</methods>

<methods>
<class-id>AddRobot class</class-id> <category>instance creation</category>

<body package="RobotFire" selector="on:">on: aWorld
	^self new initialize: aWorld</body>
</methods>


<methods>
<class-id>AddRobot</class-id> <category>aspects</category>

<body package="RobotFire" selector="posY">posY
	^posY isNil
		ifTrue:
			[posY := 0 asValue]
		ifFalse:
			[posY]</body>

<body package="RobotFire" selector="nombre">nombre
	^nombre isNil
		ifTrue:
			[nombre := String new asValue]
		ifFalse:
			[nombre]</body>

<body package="RobotFire" selector="posX">posX
	^posX isNil
		ifTrue:
			[posX := 0 asValue]
		ifFalse:
			[posX]</body>

<body package="RobotFire" selector="direccion">direccion
	^direccion isNil
		ifTrue:
			[direccion := #north asValue]
		ifFalse:
			[direccion]</body>

<body package="RobotFire" selector="direcciones">direcciones
	| dirs |
	dirs:= Array new: 4.
	dirs at: 1 put: #north; at: 2 put: #south; at: 3 put: #east; at: 4 put: #west.
	^direcciones isNil
		ifTrue:
			[direcciones := dirs asList asValue]
		ifFalse:
			[direcciones]</body>
</methods>

<methods>
<class-id>AddRobot</class-id> <category>initialize-release</category>

<body package="RobotFire" selector="initialize:">initialize: aWorld
	world:= aWorld.</body>
</methods>

<methods>
<class-id>AddRobot</class-id> <category>accessing</category>

<body package="RobotFire" selector="world">world
	^world</body>
</methods>

<methods>
<class-id>AddRobot</class-id> <category>actions</category>

<body package="RobotFire" selector="addRobot">addRobot
	| robot |
	(self nombre value asString = '') ifTrue: [
		Dialog warn: 'Ingrese un nombre para el robot.'.
		^self
	].
	(self world namedRobots includes: self nombre value asString) ifTrue: [
		Dialog warn: 'El robot ya existe, elija otro nombre.'.
		^self
	].
	robot:= Robot position: self posX value @ self posY value.
	robot perform: self direccion value.
	robot gun: (NullGun robot: robot).
	robot shield: (NullShield robot: robot).
	robot movement: (NullMovement robot: robot).
	robot brushDown.
	self world addRobot: robot named: self nombre value.
	self closeRequest</body>
</methods>


<methods>
<class-id>GunSuperLaser class</class-id> <category>initialize creation</category>

<body package="RobotFire" selector="new:">new: aRobot
	^super new initialize: aRobot</body>
</methods>


<methods>
<class-id>GunSuperLaser</class-id> <category>accessing</category>

<body package="RobotFire" selector="longLinea">longLinea
	^5</body>
</methods>

<methods>
<class-id>GunSuperLaser</class-id> <category>initialize-release</category>

<body package="RobotFire" selector="initialize:">initialize: aRobot
	robot:= aRobot.
	distancia:= 300.
	descarga:= 50.</body>
</methods>



</st-source>
