<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, 7.5 of April 16, 2007 on March 6, 2011 at 7:49:33 am</time-stamp>
<!-- Package RobotFutbol* -->


<component-property>
<name>RobotFutbol</name> <type>package</type>
<property>comment</property> <value>'Esta clase es uns subclasificacion de la clase RobotWorld del framework utilizado. Se extiende el componente del framework a raiz que se necesitaba crear comportamiento del mundo especifico para la aplicacion simulador de 
Futbol.'</value>
</component-property>

<class>
<name>ConfigEquipo</name>
<environment>Smalltalk</environment>
<super>UI.SimpleDialog</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>world camiseta1 camiseta2 camisetas1 camisetas2 nameEquipo1 nameEquipo2 equipo1 equipo2 selectEquipos empieza </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>UIApplications-New</category>
<attributes>
<package>RobotFutbol</package>
</attributes>
</class>

<comment>
<class-id>ConfigEquipo</class-id>
<body>Ventana que sirve para configurar los 2 equipos que intervienen en el juego. Actua tambien como si fuera un objeto Partido de Futbol

</body>
</comment>

<class>
<name>RobotJugador</name>
<environment>Smalltalk</environment>
<super>Robot</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>pelota equipo </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotFutbol</category>
<attributes>
<package>RobotFutbol</package>
</attributes>
</class>

<comment>
<class-id>RobotJugador</class-id>
<body>Es un Robot Jugador de Futbol y tiene algunas particularidades mas que el robot luchador

</body>
</comment>

<class>
<name>FutbolRobotApplication</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>worldView world text inspector localVars equipo1 equipo2 </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>UIApplications-New</category>
<attributes>
<package>RobotFutbol</package>
</attributes>
</class>

<comment>
<class-id>FutbolRobotApplication</class-id>
<body>FutbolRobotApplication es un simulador de juego de Futbol de robots, utiliza para todo su comportamiento el Framework.

Instance Variables:
	equipo1	&lt;Object&gt;	description of equipo1
	equipo2	&lt;Object&gt;	description of equipo2
	inspector	&lt;FutbolRobotApplication | InspectorHolder | InspectorShell | Navigator | RobotApplication | RobotController | RobotFireApplication | RobotInspector | RobotInspector&gt;	description of inspector
	localVars	&lt;Object&gt;	description of localVars
	text	&lt;Object&gt;	description of text
	world	&lt;RobotWorld&gt;	description of world
	worldView	&lt;Object&gt;	description of worldView

</body>
</comment>

<class>
<name>Arco</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>origen extremo longitud </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotFutbol</category>
<attributes>
<package>RobotFutbol</package>
</attributes>
</class>

<comment>
<class-id>Arco</class-id>
<body>Esta clase representa los arcos de la cancha. Cuando se instancia el objeto arco este se guarda en el correpondiente equipo contrario.
Es decir al equipo 1 se guarda el arco del equipo 2 y viceversa. Esto es asi para que los robots puedan identificar las coodenadas del arco donde deben meter goles.

Instance Variables:
	extremo	&lt;Object&gt;	description of extremo
	longitud	&lt;Object&gt;	description of longitud
	origen	&lt;Object&gt;	description of origen

</body>
</comment>

<class>
<name>RobotArquero</name>
<environment>Smalltalk</environment>
<super>RobotJugador</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotFutbol</category>
<attributes>
<package>RobotFutbol</package>
</attributes>
</class>

<comment>
<class-id>RobotArquero</class-id>
<body>RobotArquero es un RoborJugador pero a diferencia de los robot jugadores no se mueve a lo largo de todo la cancha. Tiene una serie de movimientos asignados. </body>
</comment>

<class>
<name>MovementSearchPelota</name>
<environment>Smalltalk</environment>
<super>Movement</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotFutbol</category>
<attributes>
<package>RobotFutbol</package>
</attributes>
</class>

<comment>
<class-id>MovementSearchPelota</class-id>
<body>MovementSearchPelota es uno de los motores de movimiento. Este motor de movimiento le proporciona el comportamiento a los robot jugadores (no arqueros).

</body>
</comment>

<class>
<name>RWorldFutbol</name>
<environment>Smalltalk</environment>
<super>RobotWorld</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotFutbol</category>
<attributes>
<package>RobotFutbol</package>
</attributes>
</class>

<comment>
<class-id>RWorldFutbol</class-id>
<body>RWorldFutbol es una subclasificacion de RobotWorld para introducir al mundo de los robots particularidades del Simulador de Partido de Futbol.

</body>
</comment>

<class>
<name>RobotsFutbolInspector</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chargeBateria armas image colores color escudos capacityBateria imagenes shield view movimiento movimientos movements robot tabs direction position battery goles </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotFire</category>
<attributes>
<package>RobotFutbol</package>
</attributes>
</class>

<comment>
<class-id>RobotsFutbolInspector</class-id>
<body>	ERobotInspector redefine el inspector del robot para quitar la funcionalidad que deshechamos, y agregar la nueva funcionalidad.
	Permite definir los aspectos de los robot, tales como armas, movimientos y escudos.
</body>
</comment>

<class>
<name>Equipo</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>nombre jugadores camiseta goles direccion arcoCont </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>PartidoFutbol</category>
<attributes>
<package>RobotFutbol</package>
</attributes>
</class>

<comment>
<class-id>Equipo</class-id>
<body>Equipo, la clase representa al equipo que contiene a 5 jugadores propios. Guarda los goles, la camiseta usada y el arco contrario.

Instance Variables:
	arcoCont	&lt;Object&gt;	description of arcoCont
	camiseta	&lt;Object&gt;	description of camiseta
	direccion	&lt;Object&gt;	description of direccion
	goles	&lt;ArithmeticValue&gt;	description of goles
	jugadores	&lt;(Collection of: RobotJugador)&gt;	description of jugadores
	nombre	&lt;Object&gt;	description of nombre

</body>
</comment>










<methods>
<class-id>Equipo class</class-id> <category>instance creation</category>

<body package="RobotFutbol" selector="new:">new: unNombre
	super new initialize:unNombre.</body>

<body package="RobotFutbol" selector="new">new
	"Answer a newly created and initialized instance."

	^super new initialize</body>
</methods>


<methods>
<class-id>Equipo</class-id> <category>initialize-release</category>

<body package="RobotFutbol" selector="initialize:">initialize: unNombre
	"Initialize a newly created instance. This method must answer the receiver."

	" *** Edit the following to properly initialize instance variables ***"
	nombre := unNombre.
	jugadores := Array new:5.
	camiseta := nil.
      goles:=0.
	" *** And replace this comment with additional initialization code *** "
	^self</body>

<body package="RobotFutbol" selector="initialize">initialize
	"Initialize a newly created instance. This method must answer the receiver."

	" *** Edit the following to properly initialize instance variables ***"
	nombre := nil.
	jugadores := Collection new.
	camiseta := nil.
      goles:=0.
	" *** And replace this comment with additional initialization code *** "
	^self</body>
</methods>

<methods>
<class-id>Equipo</class-id> <category>printing</category>

<body package="RobotFutbol" selector="printOn">printOn
	^nombre.</body>
</methods>

<methods>
<class-id>Equipo</class-id> <category>accessing</category>

<body package="RobotFutbol" selector="camiseta">camiseta
	^camiseta</body>

<body package="RobotFutbol" selector="nombre:">nombre: anObject
	nombre := anObject</body>

<body package="RobotFutbol" selector="arcoCont:">arcoCont: unArco
	arcoCont:=unArco.</body>

<body package="RobotFutbol" selector="jugadores">jugadores
	^jugadores</body>

<body package="RobotFutbol" selector="arcoCont">arcoCont
	^arcoCont.</body>

<body package="RobotFutbol" selector="jugadores:">jugadores: anObject
	jugadores := anObject.
	"se asigna a cada jugador su equipo correspondiente"
	jugadores do:[ :i| i equipo:self].</body>

<body package="RobotFutbol" selector="goles">goles
   "retorna los goles del equipo"
     ^goles.</body>

<body package="RobotFutbol" selector="anotarGol">anotarGol
	"suma un gol al equipo"
	goles:= goles+1.
</body>

<body package="RobotFutbol" selector="nombre">nombre
	^nombre</body>

<body package="RobotFutbol" selector="direccion">direccion
	^direccion.</body>

<body package="RobotFutbol" selector="direccion:">direccion: unaDir
	"determina para donde debe buscar el arco contrario"
	direccion:=unaDir.</body>

<body package="RobotFutbol" selector="camiseta:">camiseta: anObject
	camiseta := anObject</body>

<body package="RobotFutbol" selector="addJugador:">addJugador: unJugador
	jugadores add: unJugador.</body>
</methods>


<methods>
<class-id>Arco class</class-id> <category>instance creation</category>

<body package="RobotFutbol" selector="new">new
	"Answer a newly created and initialized instance."

	^super new initialize</body>
</methods>


<methods>
<class-id>Arco</class-id> <category>initialize-release</category>

<body package="RobotFutbol" selector="initialize">initialize
	"Initialize a newly created instance. This method must answer the receiver."

	" *** Edit the following to properly initialize instance variables ***"
	origen := nil.
	extremo := nil.
	longitud := nil.
	" *** And replace this comment with additional initialization code *** "
	^self</body>
</methods>

<methods>
<class-id>Arco</class-id> <category>accessing</category>

<body package="RobotFutbol" selector="extremo">extremo
	^extremo</body>

<body package="RobotFutbol" selector="origen:">origen: anObject
	origen := anObject</body>

<body package="RobotFutbol" selector="longitud:">longitud: anObject
	longitud := anObject</body>

<body package="RobotFutbol" selector="longitud">longitud
	^longitud</body>

<body package="RobotFutbol" selector="extremo:">extremo: anObject
	extremo := anObject</body>

<body package="RobotFutbol" selector="origen">origen
	^origen</body>
</methods>


<methods>
<class-id>RobotJugador class</class-id> <category>instance creation</category>

<body package="RobotFutbol" selector="new">new
	"Answer a newly created and initialized instance."

	^super new initialize</body>
</methods>


<methods>
<class-id>RobotJugador</class-id> <category>initialize-release</category>

<body package="RobotFutbol" selector="initialize">initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	
	pelota:= nil.
	^self</body>
</methods>

<methods>
<class-id>RobotJugador</class-id> <category>accessing</category>

<body package="RobotFutbol" selector="pelota:">pelota: unaPelota
	unaPelota isNil ifFalse:[
	unaPelota asignado:self.
	].
	pelota:=unaPelota.</body>

<body package="RobotFutbol" selector="pelota">pelota
	^pelota.</body>

<body package="RobotFutbol" selector="tienePelota">tienePelota
	^(self pelota isNil) not.
</body>

<body package="RobotFutbol" selector="noAnotoGol">noAnotoGol
 	"comportamiento que adopta el robot cuando no anota el gol en el arco contrario"

	self move: 100.	
	"desasigno el robot actual al token pero controlo que no me la haya sacado el arquero"	
	 (self pelota asignado == self ) ifTrue:[
  										self crearPosicionarBalon: self position.].</body>

<body package="RobotFutbol" selector="equipo:">equipo: miEquipo
	equipo:=miEquipo.</body>

<body package="RobotFutbol" selector="patear">patear
	"patea la pelota que tiene guardada cuando corresponde"

	self perform: ((self equipo) direccion ). 
	"mirar si esta cerca del arco para realizar el gol"
	(self patearGol) ifFalse:[
							self noAnotoGol.
						 ]. 
	self move: 100.</body>

<body package="RobotFutbol" selector="patearGol">patearGol
"se fija de acuerdo a su posicion si puede realizar Gol"
	|coord aux_x aux_y punto |
	coord:= self position.
	aux_x:=(((self equipo) arcoCont) origen) x.
	aux_y:=(((self equipo) arcoCont) origen) y.

	0 to: 199 do:[:i|
		punto:= aux_x@aux_y+i nearestPointOnLineFrom:coord to: coord. 
		((punto dist:(aux_x@aux_y+i))  &lt;= 100)      ifTrue:[   
	"hace Gol, controla que no se la haya sacado el arquero  "
      ((self pelota) asignado == self ) ifTrue:[
										(self equipo) anotarGol.		
										self crearPosicionarBalon: 225@0.
										Dialog warn: 'Hiso gol!! equipo:',(self equipo nombre) value asString, ' jugador:' ,((self world) getRobotName:self). 
										^ true.]
										 ].
						].
		^false.</body>

<body package="RobotFutbol" selector="tomoPelota:">tomoPelota: unaPelota
	"si toma el token, no quita la pelota si la tiene un jugador"
	(unaPelota asignado isNil) ifTrue:[    self pelota:unaPelota.] 
							ifFalse:[ self position: unaPelota position ].</body>

<body package="RobotFutbol" selector="crearPosicionarBalon:">crearPosicionarBalon: unaPosicion
	"es un metodo interno para poder representar la pelota en la cancha como que se va moviendo"
	|pelotaTok point|
	
	(self world) eliminarToken: self pelota.
	self pelota: nil.
	point:= unaPosicion copy.
	 "se crea la pelota que es un token, ya que vamos cambiandola de posicion "
	pelotaTok:= Token newWithCharge.
	pelotaTok position: point.
	"se asigna la pelota al mundo"
	self world addToken:  pelotaTok.


	
</body>

<body package="RobotFutbol" selector="equipo">equipo
	^equipo.</body>

<body package="RobotFutbol" selector="noTomoPelota">noTomoPelota
	"comportamiento si no consigue la pelota : hace movimientos Random"

	self randomDireccion.  	self randomMoveSteps. </body>
</methods>

<methods>
<class-id>RobotJugador</class-id> <category>actions</category>

<body package="RobotFutbol" selector="move">move
	| oldPosition |
	oldPosition:= self position.
	self movement move.</body>
</methods>

<methods>
<class-id>RobotJugador</class-id> <category>positioning</category>

<body package="RobotFutbol" selector="move:">move: aDistance
	| nextPoint |
	nextPoint:= self nextPosition: aDistance.
	"Muevo solo si las dimensciones del mundo me lo permiten pero no pierdo energia"
	(self world tamano canMove: nextPoint) ifTrue: [
			self state move: aDistance.
		]</body>
</methods>


<methods>
<class-id>RobotArquero class</class-id> <category>instance creation</category>

<body package="RobotFutbol" selector="new">new
	"Answer a newly created and initialized instance."

	^super new initialize</body>
</methods>


<methods>
<class-id>RobotArquero</class-id> <category>initialize-release</category>

<body package="RobotFutbol" selector="initialize">initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	^self</body>
</methods>

<methods>
<class-id>RobotArquero</class-id> <category>positioning</category>

<body package="RobotFutbol" selector="move:">move: aDistance
	| nextPoint |
	nextPoint:= self nextPosition: aDistance.

	"Si puede mover lo muevo"
	(self world tamano canMove: nextPoint) ifTrue: [
					self state move: aDistance.
			]</body>
</methods>

<methods>
<class-id>RobotArquero</class-id> <category>actions</category>

<body package="RobotFutbol" selector="posicionPatearAtajada">posicionPatearAtajada
	"retorna una posicion de patear la pelota cuando la ataja: la deposita 100 para adelante"
   |val |
	(((self equipo) direccion)  = #west ) ifTrue:[val:=350.  ] ifFalse:[ val:=-350].
	^ ( ((self position) x + val) @(self position) y).</body>

<body package="RobotFutbol" selector="atajoPelota">atajoPelota
	|cercana|	
"comportamiento del robot arquero para atajar la pelota"
	"retorna true si ataja, false si no ataja la pelota"
	cercana:=((self world) robotTomaTokens: self hasta: self position long:10).
	cercana  ifNotNil:[ "si ataja la pelota la patea y la tiene algun jugador se la saca "  
					"Dialog warn: 'atajeeee'."
					(cercana asignado) ifNotNil:[ (cercana asignado) pelota:nil. ].
  					
					self crearPosicionarBalon: self posicionPatearAtajada.
	
		
					].</body>

<body package="RobotFutbol" selector="move">move
	self movement move.

</body>
</methods>


<methods>
<class-id>ConfigEquipo class</class-id> <category>interface specs</category>

<body package="RobotFutbol" selector="windowSpec">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 'Configurar Equipos' 
			#min: #(#{Core.Point} 20 20 ) 
			#max: #(#{Core.Point} 0 0 ) 
			#bounds: #(#{Graphics.Rectangle} 840 525 1290 775 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.RegionSpec} 
					#layout: #(#{Graphics.Rectangle} 219 4 433 124 ) 
					#name: #Region2 
					#lineWidth: 1 ) 
				#(#{UI.RegionSpec} 
					#layout: #(#{Graphics.Rectangle} 8 4 219 124 ) 
					#name: #Region1 
					#lineWidth: 1 ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 20 37 196 61 ) 
					#name: #InputField1 
					#model: #nameEquipo1 ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 237 39 413 61 ) 
					#name: #InputField2 
					#model: #nameEquipo2 ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 19 19 ) 
					#name: #Label1 
					#label: 'Nombre Equipo 1:' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 237 19 ) 
					#name: #Label2 
					#label: 'Nombre Equipo 2:' ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 19 88 193 112 ) 
					#name: #ComboBox1 
					#model: #camiseta1 
					#type: #symbol 
					#comboList: #camisetas1 ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 237 88 412 112 ) 
					#name: #ComboBox2 
					#model: #camiseta2 
					#type: #symbol 
					#comboList: #camisetas2 ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 20 69 ) 
					#name: #Label3 
					#label: 'Elegir Camiseta:' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 235 69 ) 
					#name: #Label4 
					#label: 'Elegir Camiseta:' ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.Rectangle} 34 205 115 228 ) 
					#name: #ActionButton1 
					#model: #okConf 
					#label: 'Aceptar' 
					#defaultable: true ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.Rectangle} 122 204 203 227 ) 
					#name: #ActionButton2 
					#model: #cancel 
					#label: 'Cancelar' 
					#defaultable: true ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 24 124 ) 
					#name: #Label5 
					#label: 'Quien empieza el juego?' ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 26 148 126 171 ) 
					#name: #ComboBox3 
					#model: #empieza 
					#type: #string 
					#comboList: #selectEquipos ) ) ) )</body>
</methods>

<methods>
<class-id>ConfigEquipo class</class-id> <category>instance creation</category>

<body package="RobotFutbol" selector="on:">on: aWorld
	^self new initialize: aWorld</body>
</methods>


<methods>
<class-id>ConfigEquipo</class-id> <category>aspects</category>

<body package="RobotFutbol" selector="camiseta1">camiseta1
   
	^camiseta1 isNil
		ifTrue:
			[camiseta1 := equipo1 camiseta asValue]
		ifFalse:
			[camiseta1].

</body>

<body package="RobotFutbol" selector="empieza">empieza
	 	empieza isNil
		ifTrue:
			[empieza := String new asValue].
		^empieza.</body>

<body package="RobotFutbol" selector="camisetas2">camisetas2
	^camisetas2 isNil
		ifTrue:
			[camisetas2 :=PluggableAdaptor on: RobotView imagesArray asList asValue]
		ifFalse:
			[camisetas2]</body>

<body package="RobotFutbol" selector="nameEquipo2">nameEquipo2
    ^nameEquipo2 isNil 
				ifTrue:[nameEquipo2:=String new asValue]
					ifFalse: 	[nameEquipo2].</body>

<body package="RobotFutbol" selector="camisetas1">camisetas1
	^camisetas1 isNil
		ifTrue:
			[camisetas1 :=PluggableAdaptor on: RobotView imagesArray asList asValue]
		ifFalse:
			[camisetas1]</body>

<body package="RobotFutbol" selector="nameEquipo1:">nameEquipo1: nombre
  nameEquipo1:=nombre.</body>

<body package="RobotFutbol" selector="nameEquipo1">nameEquipo1
 ^nameEquipo1 isNil 
		ifTrue:[nameEquipo1:= String new asValue]
		ifFalse:
			[nameEquipo1].</body>

<body package="RobotFutbol" selector="selectEquipos">selectEquipos
|lista|	
^selectEquipos isNil
		ifTrue:
			[ lista:= Array new: 2. lista at:1 put: 'equipo1';  at:2 put:'equipo2'.
selectEquipos:= lista asValue.]
		ifFalse:
			[selectEquipos]</body>

<body package="RobotFutbol" selector="nameEquipo2:">nameEquipo2: nombre
  nameEquipo2:=nombre.</body>

<body package="RobotFutbol" selector="camiseta2">camiseta2
   
	^camiseta2 isNil
		ifTrue:
			[camiseta2 := equipo2 camiseta asValue]
		ifFalse:
			[camiseta2]

</body>
</methods>

<methods>
<class-id>ConfigEquipo</class-id> <category>initialize-release</category>

<body package="RobotFutbol" selector="initialize:">initialize: aWorld
	|arco1 arco2|
	world:= aWorld.
equipo1:= Equipo new.
"Inicializa el arco contrario donde debe anotar Gol"
arco1:= Arco new. arco1 origen:660@100;extremo: 660@-100;longitud:200.
"determina la direccion del arco contrario"
	equipo1 direccion:#east; nombre:'equipo1';arcoCont:arco1.

	
equipo2:=Equipo new.
"Inicializa el arco contrario donde debe anotar Gol"
arco2:= Arco new. arco2 origen:-240@100;extremo: -240@-100;longitud:200.
"determina la direccion del arco contrario"
equipo2 direccion:#west; nombre:'equipo2';arcoCont:arco2.
self selectEquipos.</body>
</methods>

<methods>
<class-id>ConfigEquipo</class-id> <category>accessing</category>

<body package="RobotFutbol" selector="crearArquero:direccion:camiseta:">crearArquero:unaPosicion direccion:unaDir camiseta:unaCamiseta
	"crea un jugador arquero de futbol con una posicion determinada"
	|robotaux motor string|
	robotaux:=RobotArquero position: unaPosicion.
	robotaux perform:unaDir.
	
	robotaux  gun: (NullGun robot: robotaux). 	robotaux shield: (NullShield robot: robotaux).
	motor:= MovementRepetitive robot: robotaux.
	string:= ' robot atajoPelota. robot move:100. robot atajoPelota. robot move:100. robot atajoPelota. robot direction: robot direction + 180.'.
						
	motor code: string.
	robotaux movement: motor. 
	robotaux  brushUp.
	robotaux  imagenSeter: unaCamiseta value.
 	^robotaux.</body>

<body package="RobotFutbol" selector="world">world
	^world</body>

<body package="RobotFutbol" selector="inicializarConPelota">inicializarConPelota
	"inicializa el jugador mediocampista con la pelota"
	| auxpelota aux|	
	( empieza  value asString = 'equipo1') ifTrue:[
							aux:=(world getRobotNamed: 'equip1r2') . 	]
						   ifFalse:[aux:= (world getRobotNamed: 'equip2r2') ].
	
	auxpelota:= Token newWithCharge.
	auxpelota asignado: aux.
	auxpelota position: aux position.
	"se asigna la pelota al mundo"
	self world addToken:  auxpelota.
	"se le asigna al robot la pelota"
	aux pelota: auxpelota.</body>

<body package="RobotFutbol" selector="crearJugador:direccion:camiseta:">crearJugador: posicion direccion: unaDir camiseta: unacamiseta
	"crea un jugador de futbol con una posicion determinada"
	|robotaux|
	robotaux:=RobotJugador position: posicion.
	robotaux perform: unaDir.
	robotaux  gun: (NullGun robot: robotaux). 	robotaux shield: (NullShield robot: robotaux).
	robotaux  movement: (MovementSearchPelota robot: robotaux).
	robotaux  brushUp.
	robotaux  imagenSeter: unacamiseta value.
 ^robotaux.</body>
</methods>

<methods>
<class-id>ConfigEquipo</class-id> <category>actions</category>

<body package="RobotFutbol" selector="okConf">okConf
	"Configura los equipos"

	| r1 lista1 lista2 |
	(self nameEquipo1 value asString = '') 	| (self nameEquipo2 value asString = '') 
			ifTrue: 	[Dialog warn: 'Ingrese nombres correctos para los equipos.'. 	^self].
	
	equipo1 nombre: self nameEquipo1.
	equipo2 nombre: self nameEquipo2.
	lista1 := Array new: 5.
	lista2 := Array new: 5.
	
	"arquero del equipo 1"
	r1:= self crearArquero: -240@100 direccion:#north camiseta: camiseta1.
	self world addRobot: r1 named: 'equip1r1'.
      lista1 at:1 put:r1.
	
	"jugador centro"	
	r1:= self crearJugador: 210@0 direccion:#east camiseta: camiseta1.
	self world addRobot: r1 named: 'equip1r2'.
      lista1 at:2 put:r1.

	r1:= self crearJugador: -110@-150 direccion:#east camiseta: camiseta1.
	self world addRobot: r1 named: 'equip1r3'.
      lista1 at:3 put:r1.
	
	r1:= self crearJugador: -110@150 direccion: #east camiseta: camiseta1.
	self world addRobot: r1 named: 'equip1r4'.
      lista1 at:4 put:r1.

	r1:= self crearJugador: 0@0 direccion: #east camiseta: camiseta1.
	self world addRobot: r1 named: 'equip1r5'.
      lista1 at:5 put:r1.
	equipo1 jugadores: lista1.

		"equipo 2"
	"arquero del equipo 2"
	r1:= self crearArquero: 660@100 direccion: #north camiseta: camiseta2.
	self world addRobot: r1 named: 'equip2r1'.
      lista2 at:1 put:r1.

	"jugador centro"	
	r1:= self crearJugador: 235@0 direccion: #west camiseta: camiseta2.
	self world addRobot: r1 named: 'equip2r2'.
      lista2 at:2 put:r1.

	r1:= self crearJugador: 540@150 direccion: #west camiseta: camiseta2.
	self world addRobot: r1 named: 'equip2r3'.
      lista2 at:3 put:r1.
	
	r1:= self crearJugador: 540@-150 direccion: #west camiseta: camiseta2.
	self world addRobot: r1 named: 'equip2r4'.
      lista2 at:4 put:r1.

	r1:= self crearJugador: 430@0 direccion: #west camiseta: camiseta2.
	self world addRobot: r1 named: 'equip2r5'.
      lista2 at:5 put:r1.
	equipo2 jugadores: lista2. 	

	self inicializarConPelota.
	self closeRequest.</body>
</methods>


<methods>
<class-id>RobotsFutbolInspector class</class-id> <category>interface specs</category>

<body package="RobotFutbol" selector="properties">properties
	"Tools.UIPainter new openOnClass: self andSelector: #properties"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 'Propiedades' 
			#min: #(#{Core.Point} 400 342 ) 
			#max: #(#{Core.Point} 400 342 ) 
			#bounds: #(#{Graphics.Rectangle} 840 525 1240 867 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 12 3 ) 
					#name: #Label1 
					#label: 'Carga batería:' ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 90 7 169 28 ) 
					#name: #InputField1 
					#model: #chargeBateria 
					#isReadOnly: true 
					#type: #number ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 189 4 ) 
					#name: #Label2 
					#label: 'Carpacidad batería:' ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 291 7 370 28 ) 
					#name: #InputField2 
					#model: #capacityBateria 
					#isReadOnly: true 
					#type: #number ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 90 108 222 131 ) 
					#name: #ComboBox2 
					#model: #image 
					#type: #symbol 
					#comboList: #imagenes ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 13 109 ) 
					#name: #Label5 
					#label: 'Imagen robot:' ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.Rectangle} 249 314 350 337 ) 
					#name: #ActionButton1 
					#model: #saveCambios 
					#label: 'Aceptar cambios' 
					#defaultable: true ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.Rectangle} 90 144 222 167 ) 
					#name: #ComboBox5 
					#model: #movimiento 
					#type: #object 
					#comboList: #movimientos ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 24 141 ) 
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
					#tabRequiresControl: true ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 90 43 171 66 ) 
					#name: #InputField3 
					#model: #goles 
					#isReadOnly: true 
					#type: #number ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 0 45 ) 
					#name: #Label3 
					#label: 'Goles del Equipo:' ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.Rectangle} 91 77 191 100 ) 
					#name: #InputField4 
					#model: #equipo 
					#isReadOnly: true ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 4 80 ) 
					#name: #Label4 
					#label: 'Equipo Jugador:' ) ) ) )</body>

<body package="RobotFutbol" selector="presentation">presentation
	"Tools.UIPainter new openOnClass: self andSelector: #presentation"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 'Robot Futbol Inspector' 
			#min: #(#{Core.Point} 398 405 ) 
			#max: #(#{Core.Point} 398 405 ) 
			#bounds: #(#{Graphics.Rectangle} 840 525 1238 930 ) 
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

<body package="RobotFutbol" selector="windowSpec">windowSpec
	"UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#FullSpec 
		#window: 
		#(#WindowSpec 
			#label: 'Robot Jugador Inspector' 
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
<class-id>RobotsFutbolInspector class</class-id> <category>resources</category>

<body package="RobotFutbol" selector="basicImage">basicImage
	"UIMaskEditor new openOnClass: self andSelector: #basicImage"

	&lt;resource: #image&gt;
	^(Image extent: 126@109 depth: 8 bitsPerPixel: 8 palette: (MappedPalette withColors: ((Array new: 205) at: 1 put: ColorValue black; at: 2 put: (ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 7662); at: 3 put: (ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7134); at: 4 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6341); at: 5 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 5548); at: 6 put: (ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 5812); at: 7 put: (ColorValue scaledRed: 7662 scaledGreen: 6869 scaledBlue: 5020); at: 8 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5284); at: 9 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 5020); at: 10 put: (ColorValue scaledRed: 7134 scaledGreen: 6341 scaledBlue: 4756); at: 11 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4227); at: 12 put: (ColorValue scaledRed: 6869 scaledGreen: 5020 scaledBlue: 5020); at: 13 put: (ColorValue scaledRed: 5812 scaledGreen: 5548 scaledBlue: 4227); at: 14 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 3699); at: 15 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 3963); at: 16 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 3434); at: 17 put: (ColorValue scaledRed: 5284 scaledGreen: 4491 scaledBlue: 3170); at: 18 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 2906); at: 19 put: (ColorValue scaledRed: 5548 scaledGreen: 3699 scaledBlue: 3699); at: 20 put: (ColorValue scaledRed: 4756 scaledGreen: 3434 scaledBlue: 3434); at: 21 put: (ColorValue scaledRed: 4756 scaledGreen: 4227 scaledBlue: 2642); at: 22 put: (ColorValue scaledRed: 5812 scaledGreen: 4227 scaledBlue: 2906); at: 23 put: (ColorValue scaledRed: 3963 scaledGreen: 3699 scaledBlue: 2642); at: 24 put: (ColorValue scaledRed: 5020 scaledGreen: 2642 scaledBlue: 2642); at: 25 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 2113); at: 26 put: (ColorValue scaledRed: 3963 scaledGreen: 3170 scaledBlue: 1849); at: 27 put: (ColorValue scaledRed: 4227 scaledGreen: 2906 scaledBlue: 1849); at: 28 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 2113); at: 29 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 1585); at: 30 put: (ColorValue scaledRed: 3434 scaledGreen: 1849 scaledBlue: 1056); at: 31 put: (ColorValue scaledRed: 2906 scaledGreen: 2378 scaledBlue: 1056); at: 32 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1321); at: 33 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1849); at: 34 put: (ColorValue scaledRed: 2906 scaledGreen: 1321 scaledBlue: 792); at: 35 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1321); at: 36 put: (ColorValue scaledRed: 1585 scaledGreen: 1321 scaledBlue: 792); at: 37 put: (ColorValue scaledRed: 2378 scaledGreen: 1056 scaledBlue: 264); at: 38 put: (ColorValue scaledRed: 2642 scaledGreen: 792 scaledBlue: 264); at: 39 put: (ColorValue scaledRed: 1849 scaledGreen: 264 scaledBlue: 264); at: 40 put: (ColorValue scaledRed: 2113 scaledGreen: 264 scaledBlue: 0); at: 41 put: (ColorValue scaledRed: 2378 scaledGreen: 0 scaledBlue: 0); at: 42 put: (ColorValue scaledRed: 792 scaledGreen: 792 scaledBlue: 792); at: 43 put: ColorValue white; at: 44 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7134); at: 45 put: (ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 7398); at: 46 put: (ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 6341); at: 47 put: (ColorValue scaledRed: 8191 scaledGreen: 6869 scaledBlue: 6869); at: 48 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 5812); at: 49 put: (ColorValue scaledRed: 7926 scaledGreen: 6341 scaledBlue: 6341); at: 50 put: (ColorValue scaledRed: 7662 scaledGreen: 5812 scaledBlue: 5812); at: 51 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5020); at: 52 put: (ColorValue scaledRed: 7134 scaledGreen: 6869 scaledBlue: 5284); at: 53 put: (ColorValue scaledRed: 7134 scaledGreen: 6341 scaledBlue: 4491); at: 54 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 4756); at: 55 put: (ColorValue scaledRed: 6869 scaledGreen: 5812 scaledBlue: 3963); at: 56 put: (ColorValue scaledRed: 6341 scaledGreen: 4491 scaledBlue: 4491); at: 57 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 3699); at: 58 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 3170); at: 59 put: (ColorValue scaledRed: 5548 scaledGreen: 5020 scaledBlue: 3434); at: 60 put: (ColorValue scaledRed: 4756 scaledGreen: 4491 scaledBlue: 3434); at: 61 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 3170); at: 62 put: (ColorValue scaledRed: 5284 scaledGreen: 4491 scaledBlue: 2906); at: 63 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 2113); at: 64 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1849); at: 65 put: (ColorValue scaledRed: 3170 scaledGreen: 2113 scaledBlue: 2113); at: 66 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1849); at: 67 put: (ColorValue scaledRed: 3434 scaledGreen: 2642 scaledBlue: 1321); at: 68 put: (ColorValue scaledRed: 3699 scaledGreen: 2378 scaledBlue: 1321); at: 69 put: (ColorValue scaledRed: 2378 scaledGreen: 2113 scaledBlue: 1585); at: 70 put: (ColorValue scaledRed: 3699 scaledGreen: 1849 scaledBlue: 1849); at: 71 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1056); at: 72 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1585); at: 73 put: (ColorValue scaledRed: 1849 scaledGreen: 792 scaledBlue: 792); at: 74 put: (ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 264); at: 75 put: (ColorValue scaledRed: 2906 scaledGreen: 264 scaledBlue: 264); at: 76 put: (ColorValue scaledRed: 1056 scaledGreen: 792 scaledBlue: 264); at: 77 put: (ColorValue scaledRed: 2113 scaledGreen: 0 scaledBlue: 0); at: 78 put: (ColorValue scaledRed: 528 scaledGreen: 264 scaledBlue: 0); at: 79 put: (ColorValue scaledRed: 264 scaledGreen: 264 scaledBlue: 264); at: 80 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 6869); at: 81 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 6341); at: 82 put: (ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 6077); at: 83 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 6869); at: 84 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 5548); at: 85 put: (ColorValue scaledRed: 7398 scaledGreen: 7134 scaledBlue: 5812); at: 86 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 6605); at: 87 put: (ColorValue scaledRed: 7398 scaledGreen: 6605 scaledBlue: 5020); at: 88 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 5548); at: 89 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4756); at: 90 put: (ColorValue scaledRed: 7134 scaledGreen: 5284 scaledBlue: 5284); at: 91 put: (ColorValue scaledRed: 6605 scaledGreen: 5812 scaledBlue: 3963); at: 92 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 4227); at: 93 put: (ColorValue scaledRed: 5812 scaledGreen: 5284 scaledBlue: 5284); at: 94 put: (ColorValue scaledRed: 7134 scaledGreen: 6077 scaledBlue: 4491); at: 95 put: (ColorValue scaledRed: 6341 scaledGreen: 5020 scaledBlue: 3699); at: 96 put: (ColorValue scaledRed: 5812 scaledGreen: 4491 scaledBlue: 3434); at: 97 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 2906); at: 98 put: (ColorValue scaledRed: 5548 scaledGreen: 5020 scaledBlue: 3170); at: 99 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3699); at: 100 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 2906); at: 101 put: (ColorValue scaledRed: 5812 scaledGreen: 3963 scaledBlue: 3963); at: 102 put: (ColorValue scaledRed: 4227 scaledGreen: 3963 scaledBlue: 2906); at: 103 put: (ColorValue scaledRed: 4756 scaledGreen: 3963 scaledBlue: 2378); at: 104 put: (ColorValue scaledRed: 4227 scaledGreen: 3434 scaledBlue: 2113); at: 105 put: (ColorValue scaledRed: 3963 scaledGreen: 3434 scaledBlue: 2378); at: 106 put: (ColorValue scaledRed: 4227 scaledGreen: 3699 scaledBlue: 1849); at: 107 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 2113); at: 108 put: (ColorValue scaledRed: 4756 scaledGreen: 3699 scaledBlue: 2642); at: 109 put: (ColorValue scaledRed: 4491 scaledGreen: 2642 scaledBlue: 2642); at: 110 put: (ColorValue scaledRed: 4227 scaledGreen: 2378 scaledBlue: 1849); at: 111 put: (ColorValue scaledRed: 3699 scaledGreen: 2378 scaledBlue: 2378); at: 112 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1585); at: 113 put: (ColorValue scaledRed: 3170 scaledGreen: 1585 scaledBlue: 1056); at: 114 put: (ColorValue scaledRed: 2378 scaledGreen: 2113 scaledBlue: 1321); at: 115 put: (ColorValue scaledRed: 3170 scaledGreen: 1321 scaledBlue: 1321); at: 116 put: (ColorValue scaledRed: 1849 scaledGreen: 1585 scaledBlue: 1056); at: 117 put: (ColorValue scaledRed: 2906 scaledGreen: 792 scaledBlue: 792); at: 118 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 1849); at: 119 put: (ColorValue scaledRed: 1321 scaledGreen: 1056 scaledBlue: 792); at: 120 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1585); at: 121 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1321); at: 122 put: (ColorValue scaledRed: 1056 scaledGreen: 1056 scaledBlue: 1056); at: 123 put: (ColorValue scaledRed: 1585 scaledGreen: 264 scaledBlue: 0); at: 124 put: (ColorValue scaledRed: 1849 scaledGreen: 0 scaledBlue: 0); at: 125 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7926); at: 126 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6869); at: 127 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 6605); at: 128 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 7398); at: 129 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 6077); at: 130 put: (ColorValue scaledRed: 7398 scaledGreen: 7134 scaledBlue: 5548); at: 131 put: (ColorValue scaledRed: 7926 scaledGreen: 6077 scaledBlue: 6077); at: 132 put: (ColorValue scaledRed: 6869 scaledGreen: 6605 scaledBlue: 5284); at: 133 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 5020); at: 134 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 4227); at: 135 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4756); at: 136 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4491); at: 137 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 3963); at: 138 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 4491); at: 139 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 4227); at: 140 put: (ColorValue scaledRed: 6077 scaledGreen: 5284 scaledBlue: 3434); at: 141 put: (ColorValue scaledRed: 5812 scaledGreen: 5284 scaledBlue: 3699); at: 142 put: (ColorValue scaledRed: 6077 scaledGreen: 5020 scaledBlue: 3699); at: 143 put: (ColorValue scaledRed: 5548 scaledGreen: 4756 scaledBlue: 3170); at: 144 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3434); at: 145 put: (ColorValue scaledRed: 5812 scaledGreen: 4491 scaledBlue: 4491); at: 146 put: (ColorValue scaledRed: 5020 scaledGreen: 4227 scaledBlue: 2906); at: 147 put: (ColorValue scaledRed: 5284 scaledGreen: 3434 scaledBlue: 3434); at: 148 put: (ColorValue scaledRed: 4491 scaledGreen: 3170 scaledBlue: 3170); at: 149 put: (ColorValue scaledRed: 6605 scaledGreen: 5284 scaledBlue: 4227); at: 150 put: (ColorValue scaledRed: 4227 scaledGreen: 3434 scaledBlue: 1849); at: 151 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 2113); at: 152 put: (ColorValue scaledRed: 3699 scaledGreen: 2906 scaledBlue: 1585); at: 153 put: (ColorValue scaledRed: 3963 scaledGreen: 2642 scaledBlue: 1585); at: 154 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 1585); at: 155 put: (ColorValue scaledRed: 3170 scaledGreen: 2378 scaledBlue: 1321); at: 156 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1321); at: 157 put: (ColorValue scaledRed: 2906 scaledGreen: 1849 scaledBlue: 792); at: 158 put: (ColorValue scaledRed: 2642 scaledGreen: 1585 scaledBlue: 1321); at: 159 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1849); at: 160 put: (ColorValue scaledRed: 1585 scaledGreen: 1585 scaledBlue: 1056); at: 161 put: (ColorValue scaledRed: 2378 scaledGreen: 1321 scaledBlue: 528); at: 162 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1321); at: 163 put: (ColorValue scaledRed: 1849 scaledGreen: 792 scaledBlue: 264); at: 164 put: (ColorValue scaledRed: 792 scaledGreen: 528 scaledBlue: 264); at: 165 put: (ColorValue scaledRed: 1585 scaledGreen: 0 scaledBlue: 0); at: 166 put: (ColorValue scaledRed: 264 scaledGreen: 0 scaledBlue: 0); at: 167 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7662); at: 168 put: (ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7398); at: 169 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6605); at: 170 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 5812); at: 171 put: (ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 6077); at: 172 put: (ColorValue scaledRed: 7926 scaledGreen: 6605 scaledBlue: 6605); at: 173 put: (ColorValue scaledRed: 7662 scaledGreen: 6869 scaledBlue: 5284); at: 174 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5548); at: 175 put: (ColorValue scaledRed: 7398 scaledGreen: 5548 scaledBlue: 5548); at: 176 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 4756); at: 177 put: (ColorValue scaledRed: 7398 scaledGreen: 6341 scaledBlue: 4756); at: 178 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4227); at: 179 put: (ColorValue scaledRed: 6341 scaledGreen: 6077 scaledBlue: 4756); at: 180 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4491); at: 181 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 3963); at: 182 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 5812); at: 183 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3170); at: 184 put: (ColorValue scaledRed: 5548 scaledGreen: 4756 scaledBlue: 2906); at: 185 put: (ColorValue scaledRed: 5020 scaledGreen: 4227 scaledBlue: 2642); at: 186 put: (ColorValue scaledRed: 5284 scaledGreen: 3963 scaledBlue: 2642); at: 187 put: (ColorValue scaledRed: 4491 scaledGreen: 3699 scaledBlue: 2378); at: 188 put: (ColorValue scaledRed: 4227 scaledGreen: 2906 scaledBlue: 2113); at: 189 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 1849); at: 190 put: (ColorValue scaledRed: 3699 scaledGreen: 2906 scaledBlue: 1321); at: 191 put: (ColorValue scaledRed: 3963 scaledGreen: 2378 scaledBlue: 1585); at: 192 put: (ColorValue scaledRed: 3170 scaledGreen: 1585 scaledBlue: 1849); at: 193 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1585); at: 194 put: (ColorValue scaledRed: 2906 scaledGreen: 2378 scaledBlue: 1321); at: 195 put: (ColorValue scaledRed: 2113 scaledGreen: 1849 scaledBlue: 1321); at: 196 put: (ColorValue scaledRed: 2642 scaledGreen: 1321 scaledBlue: 1321); at: 197 put: (ColorValue scaledRed: 3170 scaledGreen: 1321 scaledBlue: 792); at: 198 put: (ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 792); at: 199 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1585); at: 200 put: (ColorValue scaledRed: 1056 scaledGreen: 1056 scaledBlue: 528); at: 201 put: (ColorValue scaledRed: 2113 scaledGreen: 264 scaledBlue: 264); at: 202 put: (ColorValue scaledRed: 2378 scaledGreen: 264 scaledBlue: 0); at: 203 put: (ColorValue scaledRed: 2642 scaledGreen: 0 scaledBlue: 0); at: 204 put: (ColorValue scaledRed: 528 scaledGreen: 528 scaledBlue: 264); at: 205 put: (ColorValue scaledRed: 1321 scaledGreen: 0 scaledBlue: 0); yourself)) usingBits: (ByteArray fromPackedString: '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%@JT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)PAM],B_)ZV%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)ZV#0&amp;!%N3-%0$-M@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV%)T4#0AX&lt;X6NN#+ZOY[2_SZV%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%S\/BZARQX1F7XC&amp;KN[^N-)DV\ZN%)PB%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@SRMAYS1#OQF7XC$9"8.K"8- XX:OOK13(:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV%S\H&gt;YS1#D[] NS&amp;K"8,M"8.K"8.KNVFN#30V0JN%)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV#H6)%OC0=#&amp;D9"8.K"8.KCP4MCP64CP4M"8.KXX:O#393(:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZV#QA TX6N6-3&amp;K"8.K"8.KCX"HCP64"@6H"H"HCP6K"3%!#+XV0D.%)ZT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)ZM6%#,&lt;-!E!XC&amp;K"8.K"04MCX"4"1F:EH:KCP6H"H!ZV#YZCX.KNX:OOF"_(:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)T-DZC,&lt;X89!NX.K"8.KCX.K-@4MXK!''%1:ZFVX=C8,M"E)ZM#X6M( M"0=!#6HVP\^%)PB%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%27Y*YS26-(8O"8.K"04MCP4MCX.KO[*UP)0$^*J &amp;)\Y.FFKC[QZM#X6,[D6V 6KNS*OOF"_2:V%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV%],HVN6N6#(8ON@4M"H M-KPMCX.7Y)VW&amp;*@$(''+L^*R"()2Z%;(=XH,MV#Z1!XT4![EZ"8,ON(9%PWYM)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JUMH6)%OKZ6XP&lt;8C[RH"H"HC[PM"3&amp;8.)UB''J@$(''+L3L3L3L2"("P$&amp;)!''Y(:KCU(6,SP4MCR1M%(8C3*OOF!3SZV%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)T56QFT&lt;OH:NC8,M-H!ZV%*HC[PMNQF:FY"Z(BR"^''*$3L3L3L3L3L3L(*J"()2Z%6^8NX.HM(T4MJ&lt;4MCR1"C ON(&lt;&lt;Z''YM)ZT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D6_%&amp;T&lt;-(8ON@6HV#YZV%*H-@6KX[":FY*\ID&amp;"^''*$)JR$)JSL3L3L3L3L3G):("R ''K6UY+^K-CX4MJ&gt;/+:&gt;/!SZ4C3(:OA[BSP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AM%#,;-#(OCX!ZM#X6M#ZHCX,9OVXY/Y2 ID&amp;"^*R$)JR$)JR$)JR$)JSL3L3L3L1:^*J"IJBZ&amp;F^8NX-Z,SR/L XFL*&lt;4,S"L#FI%2:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)RM%X(XN"E*1,SX6M%*HCX.7Y&amp;&amp;X&amp;)0$IJI:^*R$)JR$)JR$)JR$)JR$)JSL3L3L3L2$^''*"(*H$''DHYY!FK"KD4+0Z,+@Z,U  3BFH#)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AM0C22 ELI!XVE,SZ4"3$=.)V=''J@$(*I:)JR$)JR$)JR$^7-;^7.$)JR$)JR$3L3L)JR$)JQ:^*J"IJBZ&amp;IV8NX,6MCHFA@PETD&gt;*CAYM@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)\\VX*4CTP^G,U(MNS5&amp;%Y^Z''BQI(''):)JR$)JR$)JR$)G-;^7-;^:R$)JR$)JR$)JR$)JR$)JR$)G):(*H$''DHYY#49V(T2+@L+@''4HX)&gt;%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%QC2IKW9QA0(NC36:%Y^\''BP%(''*$)JR$)JR$)JQ;)JQ;^7-;^7.$)JR$)JR$)G,&amp;^7-;^:R$)JR$3JQ:^*J"II0^FYTTNP6D@2.''@**L%$4@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)T5%X#M&gt;_*$I+0!&amp;&amp;DJ IJJ"I*SL)JR$)JR$^7-;^7.$)G.$)G.$)JR$)JR$^7-;^7-;^7-;^7.$)JR$)JSL3G):(*H$''DHYV0&amp;*J:^''_[H;]*T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%0&amp;TL G8C [LE*QB IJJ"^*R$)JR$)JR$)JQ;SG-;^:R$)JR$)JR$)JR$)JQ;^7-;SD1;^7,''^:R$)JR$)L3L3L3L^''*"II\G+8Q=@*\BUH1A)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JL&gt;-#LC_%F/MX@HW4%:^*R$)JR$)JR$)JQ;^7-;^7-;)JQ;)JR$)JR$)JR$^40''SD1LSD1L^41;^7-;)JR$)L3L3L3L^''*"F#",MX@+):]=,#.#)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\6TL G8CAXZ- E!''(*R$)JR$)JR$)JR$)G-;^7-;^7-;)G.$^:R$)JR$)G-;I40(JB (SD1;SG-;^7-;)JR$3L3L3L3L)G(]D@\IL76'')2,3X''F%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZTXN0"(_ LG,8B-W14''^:R$)JR$)JR$)JR$^7-;^41LSG-;^7-;)JR$)JQ;^7-LSB (JB!L^7-;^7-;^7-;)JR$3L3L3JR$I$%+" \HKPJ'')5BIYZN%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)PB%)ZV%@@B%132L D=&gt;*ST3@86;IT0''^:R$)JR$)JR$)JQ;^41LSD1LSG-;^7-;)JR$)JQ;^40''SD1LSB];^7-;^7-;^:R$)JR$)JR$)G-;I7@=+CV-J:^''J8M"0*V%)ZV%)ZT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZUMST7K12OG],^&lt;OHXC_ LG,8B-Z7CII2]L1W.$)JR$)G.$)G-;SD1LSB]L^:QLI7.$)JR$)JQ;^41LSD1LSG-;^7-;^7-;)JR$)JR$I,M;SD1LHTN3A0"(@*^''T@1(R4-K14.#2&lt;-MSZV%)PB%@@@@@@@@@@@@@@@@@@@@22MD%!X;X&amp;I"#6TVZARLUD== CVD H5C]B (JL!2\,"$)JR$)JR$)G-;^2]LI7.$)G-;^:R$)JR$)JR$)JR$)G-;^41;^7-;^7.$)JR$^&lt;U,D&lt;#HSD0''HV^)!8AO):\+BH26-(&lt;L,+JI"S,VF&lt;I62:T@@@@@@@@@@@@@@@@@)RL&gt;YS-"CKHH 8RFC6LTEHXCS7:AMXF-Y7CI2" (]DUE/&lt;"$)JR$)JR$)G-;^7-;)JR$)G.$)JR$)JR$)JR$)JR$)JQ;SD1;^7-;^:R$)JSE[AI$QR]LSB\%&amp; &amp;/!J B)0J*#H"HV8ET*%RC,+JI#C-(]*V%@@@@@@@@@@@@)ZWBE#26N%.C*"4CTUNHC;Z6*$=O@8PHTH5C]B#JJB!E[V9.Q\V$)JR$)JR$)G.$)JR$)JR$)JR$)JR$)JR$)JR$)JR$)G-LSD1;^7.$)JR$\!I$$IBRIR]L2T''DOZ23*".'')76F"CHG@4&lt;+@"-=TJ6F#C(&lt;H:T@@@@@@@@@@@B%11X&lt;OS!V J!OS78C P:HDU,CS78E!8EPY17IJL((]F1,[F1.[,V$)JR$)JR$^7-;^:R$)JR$)JR$)JR$)JR$)JR$)JR$^41LSG-;^:R$)GJPM3\7M3^?SB]LI2F&gt;,@$3_Z^''J5RHL ^@J0J''):]=*(RHC3(&gt;SZT@@@@@@@@@@D5AYQP=N(YT_R,+S0N/"C"NL79O@5ZG E!CHR (JB!E[F1,[F1,[LN$)JR$^7-;I41;^7-;^7-;^:R$)JR$)G-;^7-;^7-;^7-;^7-;)BY.M0,KVU%YVQH''I41LRWA_A3UP@*\B_[N/!EQ=)71&lt;_@I=U@*KN#0#)P@@@@@@@@B%(;2QX82DKT&lt;+@ IO* :H#%-PS78E!0\E.WCIJB (]A^S$9NS$9NS[K&lt;&amp;)G-;I7,''SD1LSD1LSD1;^:R$)G-;SD1LSG-LSD1L^7-;^7/H[@-Y+*:.+#F.+''KHSD0''HTN,MZ4+@*\++[MSAW6''_G1&lt;)76*!E(O-$F%@@@@@@@@@JV_E&amp;N6#E,3*B,B@$=T"H :L75O_ ^3*U"X1B (2"!E$)JRD9JRD9JS$4T&amp;SD1LSB]LSD1LSD1LSD1;)JQ;^7-LSB (SD1LSD1L^7-;2IMYLSD1LXJB (JBYL (SD0%HX)VBJ B)0IPV5ZD*"-&lt;_G1&lt;@*)["0&gt;6FJL@@@@@@@@@S\HXEID:,5R(J0H+KXX8XP9PS4=Q!8R)OQ4%JL((]IJRD!HRD!HR$)JRD&amp;7HSD1LI40''SD1LJB!LSG-;^7-;SD0(JB!LSD1LSD1LSGQ$ (H0LJ.+*:.+K*../2\(JL$!Y5ZGUB.'')2.-B%Z-J:]&lt;_G2''J:!VCX9(]*T@@@@@@@AM\S&gt;QXZ&gt;@_$&lt;+J76-V066BG9O_%N3 UZX\B (R,(ZYFQ$YFQ$YAI$YAI$$&amp;3E^41LSD0''I41LSD1LSG-L^7-LSB]LSB\''SB]LSD14M8JB*28.K"9?_21?_28SI2\(SGRZV0&amp;D_Z\B@"5[ XAO@*Y&lt;_J]=+[L8C313)P@@@@@@@JL&gt;EFM!#KMT_$&lt;+S0VGC82*S4&lt;-!CV@W14%JL+J]FP7M3\7M9BP$IBPYFQ$YIOC^:R$)JR$^7-;SD1;^2]L^41L^7-;)JQ;SB\''/5$0K"9?_20,@PDA)*Z&amp;KJ/E^2]L2JA''A(^*@*^''J8R3 X@+)71&lt;)76CC &lt;O%WEM@@@@@@@@(&lt;DY.K :MR5OS4&gt;*!H"6!*!O_%R3 P^U\L$(2,)-M3\7B0,KM3\7M3\7M9BPYIKC^7.$)JQ;^40''I41;2B];I2]L^7.$)JQ;^;=YK"9?_20A)''1&lt;J"(*J"*&amp;@V:$^2\''(GB1BSL+@*\B*%.DL:"''_G2''@*!SV &gt;:G44@@@@@@@CG[6"6NEZ@_$=OKSN3C0&gt;*S4=&gt;!H^)#TM4JB (R)HKB0,KB0,KB0,KB0,7M3\7$II2^7-;)G-;SD1;^7/H2T1LSG-;^7-;^7-. "8._22&amp;_B(*J"(*J"(*J"*&amp;-T!;SG,''H[%V,5@B):]=!*=QS:]&lt;_G0BT@VE"895(0@@@@@@@I&lt;V$VD8BXDCS4&lt;-AX\Q,:!O_(B3U(E''G\%LJB!EM0,KVU%YVU%YVU%YVP,KB3\7M1KH^:R$)JR$)G-;SL%JSG-;)JR$)JR$1U$._22&amp;_B(*J"(*J"(*J"(*J")?[*Q;^2\%P;FG+T&gt;'')0ITV8AO@*]&lt;)0ITV3$9EA"#@@@@@@@@\12:$[ O,8AOS7:@C6F-S4&lt;C+P(E"DODJD0(JFQYVU&amp;.+*:.+*:.+*:.VU$KB0,7[L!;^:R$^7-;^7-LR$)L^7.$)JR$)JR$$G&lt;,)"(*J"(*J"(*J"(*J"(*J''1\RBY;^4%0W:&gt;3TJ]&lt;)76F!%Q=@ J''@*"-NC&amp;:1,^%@@@@@@CBG1&amp;8-8"DKZ -UCU#V:!OS8@5!J%''G\$(JB!2VZ81LSFB (JB (H1LSF.+%%YB3_C^7-;^7-;^7-;^2!J]B!L^7-;^7-;^:R]_:X*J"(*J"(*J"(*J"(*J"(*J''=@)G-L^2FXWX^-J:^''@%Q[ Z +@*\BS0L2V+](H:T@@@@@)\I5E@&lt;J+HB@*#LHC883S4&lt;C [LEVDODJB (JIH1 #@0LC@0LC@0LC@0 (H1+*9Y$,!;^7-;SD1LSG-;2T)42T1LSD1LSD1L^4"5)"(*J"(*J"(*J"(*J"(*J"(*))CL^7,''IY2M,CUO):^''*E,HS0HB@".(AUYZN[+B)P@@@@AMPVU#N("/ X@-KXQ#V24BS8@5!0U+P4$(JB!2VS@0 #B+K"8.K":+*:,0LHJBLZ92^41LSB (JB (SD3IR''SJJB (SD1LSD1L)AX,J"(*_B(*J"(*J")&lt;J"(*J"(*T,L&amp;I40''HQ*0B*(B):\+L5,-J0HBJ:)[NVA&amp;&amp;WF%@@@@@L,_1!R8OS 5 G8CV;X3S4=&gt;T0(2BY#D2R (SIL0LJ,.K"8.K''=?_28.K":+LCBBB2];^41LJB (2"!LSB_IR" (JB!LSD1LSB];0;U&lt;J"(*J"(*J"(*J"(*J"(*J"(AD2YLI2\%\KQX 76'')0H-V0!=J0H+*CLMNVZW\ZT@@@@@S\IFY+ =N@(GTZ5##B5OS0ND!0P=GRT(JD3HLS@.K''=?_7&lt;,KB1?_7=?K"8.LCA,^7-;^40(JB (SB_H1K--]L ''I7-;^7-LI2^$D E&lt;J"(*J"(*J"(*J"(*J"(*J''25''R]LSD$!Y;A[* J'')2.CC(A=@"-OTSIZXYW@)P@@@@B#G3&gt;QN%.DU(R/#FLHS2.(AP)VA;8]2R (SF0.K"9?KB0,)*XA) D,KB1?_28.V\N$)G-;I2\''I2\''^&amp;,UNU&gt;9[R];^7-;^2]L^:QHKJY&lt;J"(*J"(*J"(*J"(*J"(*J FSI$1LI2VZ-KNCJ:^''@%@NA78+J4=Q+KFKY"B%@@@@@L_AY[ZLV:=VU#V6#J(+S0ND,0POGWP(JB#HB29?_20A)*Z&amp;J"(*_G2&amp;) D,_28R^*R$)G(&amp;($$!HZJ\#[RHCU8P(JIHI*R$)JR$)L1\)"(*J"(*J"(*J"(*J"(*J")&lt;_KWL^40''RRE+,KMP@*^''J8Y[@2-OUKNH"1F:/D4@@@@@1&lt;F:X88OV8PEB&amp;LH*D=O KN/U)U02T0(I680_7&lt;,)*Y&lt;J"(*J")&lt;J")&lt;) D,*94&amp;RLUI(I2\''I2 ''FNHNH.K-H4?(*IHRD!HI"X&amp;I$ARJ''0*J"(*J"(*J"(*J"(*J"(*))6$^2\''(I)[V:5O@*\B* :DS7:-C#$9ZTI/SP@@@@A6Q!9&amp;.K :V5ZN#(EOS78GB(FMP2ELSB#H$B8,KJY&lt;_G1&lt;J")&lt;_G1&lt;)*Z&amp;@R1\)BX&amp;1T&amp;"RT$$IBR %U,M";R4")):3L3L3L0&amp;I"Z$RE^&amp;_G1&lt;J"(*J"(*J"(*J''0*J"*&amp;WBX''I2]I(KZG!"4+)0J(! 8C_%DG"H-&amp;%&lt;EM@@@@@GYFG+(=-# 5C&amp;X8U@LCASV/AV-0I40(I7J+_22&amp;)''0,T%IRUUUUUU]WU50SD96$)JR$)JR$^''):^*J"#X*J-H(&lt;3L3L3L3L3JR$)BZ$PALSWE]WU;UUUUURT%HA)''2&amp;) EUPB\''SB^ ]0&amp;3AT&lt;B@* HN(PC@2&lt;2M(.:Q44@@@@@H&lt;E($P&gt;HBU-)H+*F Z&amp;A+8P-#Q5LSD1LQYBP$ANS$1]@[$B]''Y7C^&lt;3L3JR$)JR$^:R$)JR$)L2$3L3C.5&lt;P%&lt;WL3L3L3L2$)G-;^7.$)JSL3L3L1Y6]04A@[&amp;2S$1L7$IA.I41L^2PP*Z&lt;ES2-OUC))N(@CTZ21"6X\(0@@@@B_0[*6C8"GMQQ8%81VA@R/!8BC.2\(JD1;I"X&amp;)JP&amp;)JR$^7-;)JQ;)JQ;^7-;^7-;^:R$)JR$)JR$)L1:(LWL3L3L3L2$)JQ;^7-L^7-;^7-;)JR$)JR$)G-;^2_HI&lt;WHR\!LJD3I''HNA!EE&gt;S0N3.!&amp;L@5R3CX.7Z[1K@@@@@I?AO6N6C8 IV9]8$X^,ACJG+U@PHR (JD1;^7-;^7-;^41LSD1LSD1;^7-;^7-;^7-;)JR$)JQ;)JR$)D"?/4#L3L3L)JR$^7-;^7-LSG-;^7-;^7-;^7-;^41LI2 ''I2\''2R (JBU'' HRA@79&gt; C(Y.#M&gt;UE,9XF&amp;=GL\@@@@@H4X^Y+"QN%.DEA8YC#J,+@$H@5 ]2\+JJD1L^7-;^7-;^7-;^7-;^7-;^7-;^:R$^7.$)G-;^7-;)JR$1TA@1\3L3L2$)G-;^7-;^7-;^7-;^41;^7-;^7-;^7-LSD1LSD0(JD3IHX(E+:$C_ LGY).6KW9QA0*KY)-GR0@@@@@#Q!::X;XN,0^LH''!#+:2,+8\ETK-4R$+JJD1;SG-;^7-;^7-;^7-L^7-;^7-;^:Q;^7-;^7.$^:R$)JSE[$CE3L2$)JR$^41L^7-;^7-;^7-;^7-;^7-;^7-;^7-LSD1LSD0(SB\ZA5ZDTW9&gt; E.[%XY&gt;_ L/L#ZK.,[G@@@@@G[AO9D:C+N3! 8?G+(J+J1VMHR(#WIJ2,((SG-;^7-;^7-;^7-;^41;^7-;^7-;^7-;^7.$)JR$)JR$)LU@/4"$)JR$)JQ;^41;^7-;^7-;^7-;^7-;^7-;^7-;^7-;SD1LSD0''(AB)BUMQ_ NAOY-#KT=&gt;@2&lt;2M(-&amp;1''X@@@@@''&lt;E(X0&lt;8V;LHBKY8^@&lt;I+CJ/MX@3.2WJ2"!L^7-;^7-;^7-;^7-;^7-;^7-;^7-;SD1;^7.$)JR$)JR$1TB?)L2$)JR$)G-L^7-;^7-;^7-;^7.$^7-;^7-;^7-LSG-L^41LSB\]!HF/*PLCTP*U%P +J4&lt;E!8,9-9WFH:T@@JU3Q#&lt;TOX8NMPT-L3&lt;^.KEVL*&gt;3+U@P]B#JJD1;^7-;^7-;^7-;^7-;^7-;^7-;^7-LSD1;^:R$)JR$)JP&amp;/96$)JR$)JQ;^7-L^7-;^7-;^7-;^:R$^7-;^7-;^7-;^7-LSD1LIV^)+0]QK0MSXY,T*",BS8BGNS%&amp;/\Y6)P@@)ROA^APTX805 J -EA:[NK@2U(\5*E"&gt;2,((JD1LSB];I41;^7-;^7-;^7-;^40''SB\''I41;)JR$^:R$)JR?0:R$)G-;^41LSB\''^40''^7-;^7-;^7-;^7-LSD0''SD1L^7-LSB_D"%NFT2&lt;/TZ=)&amp;80-J2-O@:$I-C4Y1$.%@@B%H&lt;EBEC6NC(ZC 0"OH''!#!3IV+5.**&amp;]42,((SD1LSD1L^7-;^7-;^7-;^7-;^41LSD1LSG-;^7-;^7.$)K?C)JQ;^40''2B\''SD1;SD1;^7-;^7-;^7-;^41LSD1LSG-;^40''IQ*-A:&lt;DK2&lt;ENI-)L: +J4&lt;C*SIZNYV^1:T@@@B_0\XT# &lt;NV;J2"X1(G&amp;&amp;H+5Z/,3N(#W@(2"!LSD1LSG-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^:R$0&lt;"$^7-;^41LSG-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;I43DW:$5U"&lt;/K5Z8&amp;0&gt;(J0HBS8BDV(.7FY8#@@@@)Y?AP!Q## :3+Z(-* 18P#(4U*&lt;I,25T.&lt;$(JB!LSD1L^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7-;^:SCI*Q;^7-;^7-;^7-;^41;^7-;^7-;^7-;^7-;^7-;^7-L^40''I4LHT8]SK2&lt;DV)U)!D&lt;B@ H+ KNKNV&amp;=GGX@@@@@''&lt;F!EK =C(P-_$=&gt;UI%FEE./+0%[+UA_H\+JJB!LJD1;^7.$^7-;^7-;^7-;^7-;^7-;^7-;^7-;^7.$)L"$^7-;^41LSD1LSG-LSG-;^7-;^7.$)G-;^7-;^7-;^7-LSB]IZ8BD+0P/K3J7&amp;;"C*B,B@",CA;FKY)]GR0@@@@@#0Q::$X9[B@"F,($L.''"WC8^/MKD5*@!-R$+JJB (SG-;^:R$^7.$^7-;^:Q;^7-;^7-;^7-;^7-;^:R$)JQ;I2\(JB (JB!LSD1L^7-;^7-;^:R$^7-;^7-;^7-;SD1LI91X*[L2AB&lt;DM&amp;&amp;[V:6(J0HBJ0N)BP67]99K@@@@@I?AG)U#N 9[,+JI"P0&lt;&amp;W"QV:&lt;4!U.@TF-4R$+JJB ''SG-;^7-;^:R$^7-;^7-;SD1LSB\''I2]LSD1;)JR$^7-LJB#J2,+JJB!LSB];^7-;^7-;)JQ;^7-LSD1LSD1LSD1I.0TGBZ0DK5NK&amp;1R)_ J'')0IO @$MNV&amp;WGJL@@@@@H1&lt;^O; =C(P-@0N(@3NQG!&amp;4!Z&gt;EB(R("''AJR,((SD1;^7-;^7-;)JQ;^:R$^7-;SD1LSG-;^41LSG.$)JQ;^40(JB#JJB (SD1;^7-;^7-;^7-;)G-;SD1LSD1LSD1LSBFM*P&amp;/AJ$D+6Z[N(EPJ0HBJ78E,X,=&amp;1%GSP@@@@CGG197$S6L!*6*UCNC,;Y8P+Z1MCR1,5B*[RWJ2"!L^7-;^7-;^7-;)JR$)JR$)G-LSD1L^7-;^2];)JR$)JR$^2]LSD1LSD1L^7.$)JR$)G-;^7-;^7-LSB ''I41LSD0''/(QS,SHDAZ2HF[(NBEQOJ2-O_%EVV &gt;UO2AM@@@@@JO@G''!)X0&lt;N,8Z2CH2OX6 ^Y+REMH][+UA_1B (JD1;^7-;^7-;^7.$)JR$)JR$^41LSG.$)JR$^:R$)JSL)JR$)G-;^7-;^7-;)JR$)JR$^7-;^7-;^41LSB\''SD0''SBV9 J&lt;4+@PD+1F[XP]Q*B,BJ4&lt;CA8"KOW\?Z$4@@@@@(&lt;CAG!&amp;QN%.A EF@ @][X7 "C;FE!U,HT@"&gt;JB (SD0''SG-;^41;^:R$)JR$)JQ;^7-;)JR$)JR$)JSL3L3L3L2$)JSL3L2$)JR$)JR$)JR$^7-;^7-;SD1;^7-LSD0''HP"@B*&lt;DA@QZZYVKMXF@_W5O*HB/CVE)]6!A)P@@@@AM0F&lt;^FQRNC#UVL8R3C(&lt;TP!9#"HVEB%.*TK$%2,((SD1LSG-;^7-;)JR$3L3L)JR$)JSL3L3L3L3L3L3L3L3L3L3L3L3L3L2$)JR$)JR$)JQ;^7-;^2\''SB\''I40(SBTZ @^EL PDL+^[Y(,8,:4-T@N)T0%ZC6&amp;=FDR%@@@@@JUD[4YF^ARN#H![,80:-)FUG!$O!8V1"HN("Q5JR,((SD1L^7-;^:R$3L3L3L3L3L3L3L3L3L3L3L3L3L3L3L3L)L3L3L3L3JR$)JR$)JR$)JQ;^7-;I2\''I2]LSB#IHX6@MSPFAJ2EZY,QCP)VAXB@*UN/C[])%3&lt;&gt;QJT@@@@@)TP (TX"$S(8,;L5V3(&lt;EA$^P+Y[,XVH,0MP/$)J2"!LSD1;^:R$)JSL3L3L3L3L3L3L3L3L3L2$3L3L3L3L3L2$)L3L3L3L)JR$)JR$)JSL)JR$^7-;^7-;SD0(JB^&gt; 8F1+:0DL(.[&amp;34QNP:3+:&lt;4!5(OY$JWO3:_@@@@@@B%H4E/G!8^G''^Q-(&gt;6EFV:ZLX^. :1,[FH+W5_H\+JJD1LSD1;)JR$3L3L3L2$)JR$)JR$)JR$)JR$3L3L3L3L3JR$)JR$)JR$)JR$)JR$)L3L)JQ;^41;^7-LJB (IQB@!KD2+J04O[6[.C66C08NNH-!.IV[%9\XO$,@@@@@@JWGPRA/(Q9FH''\YZC?FQ7!8(ZD"C5*1B("F*HN&gt;R$+JJD1LSD2$)L3L3L3L3JR$)G-;^7-;)JR$)JR$3L3L3L2$)JR$)JQ;^:R$)JR$)JSL3L3L)JQ;SG-;SD0(JL%0VH@JMCJ,L+Q)%2JY]9%(FQ$Y];5BH)]7FA!A20@@@@@@@D7BF2@\Q7"!G!:!(Q;AQ$Y8^A:QNKE[V%.**+$%R,+JJB (I7.$3L3L3L2$)JR$^41LSD1LSG-;^:SL3L3L3JR$^7-;SD1;^7-;)JR$)L3L3L3L)G-;^41;SB (I[.@A5*/L X4DY\Y1''!GQ12^&amp;\[F&amp;Y$?FC&lt;?O,J%@@@@@@B%)WYA%+2&lt;Z+2&lt;''):&lt;/K0\Z"AGG!$O"KEZC(R("!5JR,+JJB ''^:SL3L3L3JR$)JQ;SD1LSD1L^7-;)L3L3L3L)G-;SD1LSB]LSD1;^7.$)L3L3L2$^7-;^2]LSL$!"(BG!Z&lt;FL%*:]3=80\GA0\EGGI:^]S8X''&amp;+@10@@@@@@@@B%SY?@0LC@G&lt;C@0A&lt;_G1&lt;_G4^!^FNHB("HV:"*[T)J2,((JD1;)L3L3L3L)JR$)G-;^7-;^7-;^:R$3L3L3L2$)G-;^7-LSG-LSG-;^:R$3L3L3L2$^7-;^41L2[:- P(4L Z/"9-7''$YF\WE1\TX_G1&lt;_0A=AQGZ%@@@@@@@@@@B%SWZ_0$S@0LC@0LC@0L@_Q$\^ZP&gt;HV( 8+Z"M1D+JJD1L^:R$3L3L3L3L3JR$)JR$)JR$)JR$)L3L3L3L3JR$)JR$)JR$^7-;^7-;)JSL3L3L3JR$^7-LSB\%W:&amp;/B#P2L+DTH!#AG4QDQDQDQDQDQLKB\2N#)P@@@@@@@@@@@@@@@JWK(2''G]"L#''7OB0''M1GA9BXP8J"H"F*J5C2R (SD1;)JSL3L3L3L3L3JR$)JR$)L3L3L3L3L3L3L3L)JR$3JSL3JR$)JR$)JR$)L3L3L2$)JQ;^7,''I15X*P*1+3J/CQ$?FGGB\2M6]"M61&lt;\)(&lt;-M@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)PB%SRMAQ18TNH!ZC%.*TA@%I41LSD1;)JR$3L3L3L3L)JR$)JR$)JR$)L3L3L3L3L3L)JR$)JR$)JR$)JR$)JR$3L3L)JR$^7-;^7,$Z:%V"HV/,HT=%3&gt;&lt;0*N%@@B%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(4P G#&lt;O"H"4NHR@"!+DRR\''2R];^7.$)JR$)JR$)JR$^7.$)JQ;)JR$3L3L3L2$)JR$^7-;^7-;^7-;^:R$)JR$^7-;^2\''HY"M*[D6MJ&gt;/"F&amp;WFDE6)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%H;1/G&amp;L8-H 8"J&gt;0,U9+P2GII41LSG-;^:R$)JR$)JR$)JQ;)G.$)JSL3L3L3JR$^7-;^7-;^7-;SD1L^7.$)G,''I2\%G[.M" &amp;/"KD4+3Q!&amp;7\&gt;QD4@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B#QD\^F@&gt;4"C"K"8"E,KB4EV7D2T1;SB]L^7.$)JR$)JR$)JR$)JR$3L3L3L3L3JR$)JR$^:Q;^7-LSD1;^7-;I4$!/+!^WSRE,X M,SP4M&amp;ZWFDD#)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JT#P\D"- 88XVE "8,MM+B0WU&lt;Z\BT''I2]LSG.$)JR$)JR$)JR$)L3L3L2$3JR$)JR$)JQ;^7-LSD0(SD1LI4$]F!VTWSR1V 6K"3&amp;K,XVK]7\&gt;0,,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D7B[18T#)D=D[^7XF@9"5(4A+B4E[8!RR]LSG-;^7-;SD1L^7.$)JSL3JSL)JQ;)JR$^41LSB (JB!L2RF&gt;Z59]MKD6CX.KNS$9#!D=NIFWFDEM)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@GYA0T\?H)TTOQF7-6@9NX.H!PXF,QTZ\D$''I2\''SD0''SD1L^7.$)L3L3L2$I"Y;^7-LSB\(JB!L2RE-E[Q]MKFH"8,9NS%!-8:8Z[4YFY%(H:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@S\@ [7"!G$I7.)D=DQF7XS$9"3Z0A Z4.[8!I2\''I2\''I41;)JSL3L3L3JR$^7-LSD1LSD3II[9+W+D4ME*K"3$9XFB7OS5&amp;]4IBP)''FO$GK@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%0!-*GD]8^A:!&amp;[(TX1DQ-;] NX-ZMJ2,,QU-HT$''SD1;^7.$)JSL3L2$)JQ;^7,''SB_I1K:9-E44,U*K"3$9-;^7D[!)]4IBP)&amp;YO1 &gt;\:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B#PYZ&lt;Z+0\Q7"!G'' Y.+ QO[^7-3&amp;KC[D2+KA^Z14%I2];^7.$)JR$)G-;SD1LI2\%GV]_,[@4M(.KNS% -;^7OVZUH$IB1)$?]WU5%,B#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JV#''&lt;@[Z&amp;*^GD]G(Q98%6&amp;8X34Q-6E NX.H,J2,,QB&gt;HR\''I2];^7-;^2\''I&lt;$!/+&amp;4MK@4"H,9NVB7-;^7.F%7P$H"1)$XO7U5/LB_(0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%(2O@P[15]T\\(ZE8^DHYEID=DQF7XC&amp;K"CR,+KBM.7AII2]L^41LI4%0F!V1,J&gt;1CS$9XFB7DQD=.IV=^DJY1)%5FGV^HDE3(:T@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@SROB0F&lt; Z):^GD]8(Q98];(TOS4=D[^7XH.1L R,%AU-HR\''I2F&gt;.YR0A#RH"3$9-;^7DS68.'']BP"KF&amp;S&lt;XFGV&lt;Q6?B\:L@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@SRMDQGEA/K2^'',YGQ7 ^^BJU.C4=OQDQ-3&amp;KV%XD+KBMY4LZW560A+F4"3% -;\QDQF8%RIBP"KF''#&lt;XFGV&lt;[&lt;H_0GOK@JT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)WYD0GE10V&gt;&lt;''):^GD]8(Q8^];*QOS4QDQE NP4I+J&amp;,,[B,MCZKXFB7D[\QO[!&amp;]7!8H,ZYO1 XFI9G0WD_P\B_SP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZM3PTD_\TY//I95''!0\^G"!G)%)EID=DQF7-3$8,P^,M@6KXFB7-1DQO[!)%7!8H,Z^]Q X]Y9/Q$X_[4ED]$4@@@@@@@@@@@ANS @@248@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@L._0DEA[4YF0RB^/GV^GG!8(Q98FVZQX34Q-;] "8,9-;^7-1D=.FXY^G!BH,Y5FA!5''!3AG4Y/[2AA0$.%@@@@@@@@@@@@@B$)S*M9^T8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D6_F4EAPV=1Q!=//I:^'',Y8^JF!^I%).C4=OQF7-;^7DS4=.K*WP'' "&amp;Y&amp;YFA!5]T]1G1=/GK0[F4R#)P@@@@@@@@@@@@@@JR$)JW%9JP@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D7GQA,[%$E/G4Y1[;2^]Y:&lt;GD^!(W "FQP=OS4QDS4=.IT"^BKF1)%5FA!5''&amp;=10&amp;=//K2V%$P#20@@@@@@@@@@@@@@@@@)^W%9^W$)S @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AMH4P[Z"B&lt;[6=1Q,EA/GU5/A0\^LD^^I&amp;:.FNQZW]B^BKF&amp;WU5FGV^GDYFQ$F&lt;Z)ZV%,B_(0@@@@@@@@@@@@@@@@@@@GY9JR%9^R$)@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@27L[F9ZV/DE/0TY1[;15]Y:^Q7"!(W "&amp;Y%8^L[F&amp;WTXFA"^[1=FQ$\\/F)*Z)[B(:T@@@@@@@@@@@@@@@@@@@@@JR%NS''$)S"%N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZM3F9ZV%)X PV&lt;_G1=G''''V^''!1G^JE8P,ZY&amp;S&lt;XFI8\0TYFQ11*/F)*%!-D(:T@@@@@@@@@@@@@@@@@@@@@@@A9^R$)^ZL@S"%N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)ZWG\&lt;@[%)ZV/BCAQ$[AQ9:^]Y8\Q&lt;Z^FA X]WT\G1?AQ;2&lt;Z&amp;*V%!/B]$4@@@@@@@@@@@@@@@@@@@@@@@@@@B$)S,-9(0@@(2$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%SZN_QDD[%)ZVPV?B0,EG''''V^FA!5'')9GG1=/HK2VZ)ZV0DQ62:T@)P@@@@@@@@@@@@@@@@@@@@@@@@@@JR$)JR%N@@@@S @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@JUM(2OBPQ,[PTEA\Q&lt;_PV(&gt;Z+0_G1=APYZVF1-D\&lt;]M)ZV%)P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@S AN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@D6#12M30$QDQDR_0!/@QDS@QLJ_''9&lt;#(46%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B%)ZV%)T6%(:N#]''[G(&lt;-M)PB%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@b'))</body>

<body package="RobotFutbol" selector="mask">mask
	"UIMaskEditor new openOnClass: self andSelector: #mask"

	&lt;resource: #image&gt;
	^(Image extent: 126@109 depth: 1 bitsPerPixel: 1 palette: CoveragePalette monoMaskPalette usingBits: (ByteArray fromPackedString: '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@A8@@@@@@@@@@@@@@@@@@@C? @@@@@@@@@@@@@@@@@@G??@@@@@@@@@@@@@@@@@@G??&gt;@@@@@@@@@@@@@@@@@O???8@@@@@@@@@@@@@@@@_????0@@@@@@@@@@@@@@@_?????@@@@@@@@@@@@@@@_?????&gt;@@@@@@@@@@@@@@???????8@@@@@@@@@@@@@????????0@@@@@@@@@@@A?????????@@@@@@@@@@@A?????????&gt;@@@@@@@@@@C??????????8@@@@@@@@@C???????????0@@@@@@@@C????????????@@@@@@@@A????????????0@@@@@@@@????????????&gt;@@@@@@@@O????????????0@@@@@@@G????????????&lt;@@@@@@@A?????????????@@@@@@@@?????????????8@@@@@@@O????????????&gt;@@@@@@@G?????????????0@@@@@@A?????????????&lt;@@@@@@@?????????????? @@@@@@O?????????????8@@@@A??????????????????@@@??????????????????&lt;@A??????????????????? @???????????????????&lt;@O???????????????????@G???????????????????8A???????????????????&gt;@_???????????????????0G???????????????????&lt;A????????????????????@_???????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0O???????????????????&lt;C????????????????????@????????????????????0G???????????????????&lt;A????????????????????@O???????????????????0C???????????????????&lt;@???????????????????&gt;@G???????????????????@@G?????????????????? @@@G??????????????@@@@@@A?????????????? @@@@@@O?????????????8@@@@@@C?????????????&gt;@@@@@@@_?????????????@@@@@@@G?????????????0@@@@@@@?????????????8@@@@@@@G????????????&gt;@@@@@@@A?????????????@@@@@@@@O????????????0@@@@@@@A????????????8@@@@@@@@G???????????8@@@@@@@@@_??????????8@@@@@@@@@A??????????8@@@@@@@@@@G?????????8@@@@@@@@@@@O????????8@@@@@@@@@@@@????????0@@@@@@@@@@@@A???????0@@@@@@@@@@@@@G?????? @@@@@@@@@@@@@@O????? @@@@@@@@@@@@@@@?????@@@@@@@@@@@@@@@@A????@@@@@@@@@@@@@@@@@G??&gt;@@@@@@@@@@@@@@@@@@O?&gt;@@@@@@@@@@@@@@@@@@@?&gt;@@@@@@@@@@@@@@@@@@@A&lt;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@a'))</body>

<body package="RobotFutbol" selector="image">image
	&lt;resource: #image&gt;
	^OpaqueImage figure: self basicImage shape: self mask.</body>
</methods>

<methods>
<class-id>RobotsFutbolInspector class</class-id> <category>instance creation</category>

<body package="RobotFutbol" selector="new:">new: aController
	^super new initialize: aController</body>
</methods>


<methods>
<class-id>RobotsFutbolInspector</class-id> <category>changing</category>

<body package="RobotFutbol" selector="tabsChanged">tabsChanged
	| index |
	index := self tabs selectionIndex.
	(self builder componentAt: #tabbing) widget client: self spec: (self specArray at: index)</body>
</methods>

<methods>
<class-id>RobotsFutbolInspector</class-id> <category>updating</category>

<body package="RobotFutbol" selector="update:">update: anAspect
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
<class-id>RobotsFutbolInspector</class-id> <category>initialize</category>

<body package="RobotFutbol" selector="initialize:">initialize: aController
	self robot: aController model.	
	self view: aController view.
	self setDependents.</body>
</methods>

<methods>
<class-id>RobotsFutbolInspector</class-id> <category>menus</category>

<body package="RobotFutbol" selector="myselfTextMenu">myselfTextMenu
	^[Menu
		labelList: ParagraphEditor editGroupLabels, #(('do it' 'print it' 'inspect'))
		values: ParagraphEditor editGroupSelectors, #(doIt printIt inspectIt)
	].</body>

<body package="RobotFutbol" selector="doItContext">doItContext
	^nil</body>

<body package="RobotFutbol" selector="doItReceiver">doItReceiver
	^self robot.</body>
</methods>

<methods>
<class-id>RobotsFutbolInspector</class-id> <category>aspects</category>

<body package="RobotFutbol" selector="image">image
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^image isNil
		ifTrue:
			[image := self view symbolImage asValue]
		ifFalse:
			[image]</body>

<body package="RobotFutbol" selector="direction">direction
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^direction isNil
		ifTrue:
			[direction := String new asValue]
		ifFalse:
			[direction]</body>

<body package="RobotFutbol" selector="armas">armas
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^armas isNil
		ifTrue:
			[armas := Gun subclasses asList asValue]
		ifFalse:
			[armas]</body>

<body package="RobotFutbol" selector="position">position
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^position isNil
		ifTrue:
			[position := String new asValue]
		ifFalse:
			[position]</body>

<body package="RobotFutbol" selector="movements">movements
	^movements isNil
		ifTrue: [			
			(self robot movement isMovementRepetitive or: self robot movement isMovementCircular) ifTrue: [
				movements:= self robot movement code asValue
			]
			ifFalse: [ movements:= String new asValue ]
		]
		ifFalse:
			[movements]</body>

<body package="RobotFutbol" selector="shield">shield
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^shield isNil
		ifTrue:
			[shield := self robot shield class asValue]
		ifFalse:
			[shield]</body>

<body package="RobotFutbol" selector="tabs">tabs
	tabs isNil
		ifTrue: 
			[(tabs := SelectionInList with: self labelArray) selectionIndex: 1.
			tabs selectionIndexHolder onChangeSend: #tabsChanged to: self].
	^tabs</body>

<body package="RobotFutbol" selector="battery">battery
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^battery isNil
		ifTrue:
			[battery := String new asValue]
		ifFalse:
			[battery]</body>

<body package="RobotFutbol" selector="capacityBateria">capacityBateria
	^capacityBateria isNil
		ifTrue:
			[capacityBateria := self robot battery capacity asValue]
		ifFalse:
			[capacityBateria]</body>

<body package="RobotFutbol" selector="imagenes">imagenes
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^imagenes isNil
		ifTrue:
			[imagenes := RobotView imagesArray asList asValue]
		ifFalse:
			[imagenes]</body>

<body package="RobotFutbol" selector="color">color
	^color isNil
		ifTrue:
			[color := self view color asValue]
		ifFalse:
			[color]</body>

<body package="RobotFutbol" selector="escudos">escudos
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^escudos isNil
		ifTrue:
			[escudos := Shield subclasses asList asValue]
		ifFalse:
			[escudos]</body>

<body package="RobotFutbol" selector="equipo">equipo
	robot equipo isNil ifFalse:[  ^robot equipo nombre]
						ifTrue:[^ 'sin nombre'].</body>

<body package="RobotFutbol" selector="movimiento">movimiento
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^movimiento isNil
		ifTrue:
			[movimiento := self robot movement class asValue]
		ifFalse:
			[movimiento]</body>

<body package="RobotFutbol" selector="goles">goles
     robot equipo isNil ifTrue:[ ^0]
					ifFalse:[ ^((robot equipo) goles)].</body>

<body package="RobotFutbol" selector="movimientos">movimientos
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
|lista|
	^movimientos isNil
		ifTrue:
			[
				lista:=List new. lista add: MovementRepetitive; add: MovementRandom; add:MovementSearchPelota.

			movimientos := lista asValue]
		ifFalse:
			[movimientos]</body>

<body package="RobotFutbol" selector="chargeBateria">chargeBateria
	^chargeBateria isNil
		ifTrue:
			[chargeBateria := self robot battery charge asValue]
		ifFalse:
			[chargeBateria]</body>

<body package="RobotFutbol" selector="colores">colores
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^colores isNil
		ifTrue:
			[colores := RobotView colorArray asList asValue]
		ifFalse:
			[colores]</body>

<body package="RobotFutbol" selector="gun">gun
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^gun isNil
		ifTrue:
			[gun := self robot gun class asValue]
		ifFalse:
			[gun]</body>
</methods>

<methods>
<class-id>RobotsFutbolInspector</class-id> <category>accesing</category>

<body package="RobotFutbol" selector="tabs:">tabs: aTabs 
	tabs:=aTabs.</body>

<body package="RobotFutbol" selector="robot:">robot: aRobot 
	robot:=aRobot.
	self updateValueHolders.</body>

<body package="RobotFutbol" selector="robot">robot
	^robot.</body>

<body package="RobotFutbol" selector="view">view
	^view</body>
</methods>

<methods>
<class-id>RobotsFutbolInspector</class-id> <category>actions</category>

<body package="RobotFutbol" selector="saveCambios">saveCambios
	(self chargeBateria value &gt; self capacityBateria value) ifTrue: [
		Dialog warn: 'La capacidad de la bateria no puede ser menor que su carga.'.
		^self
	].	
	self view color: self color value.
	self view symbolImage: self image value.
	
	1 to:5 do:[:i|   ((self robot equipo) jugadores at:i) imagenSeter: (self image)].
	self changed: #image.
	"self robot brushUp; brushDown.
	self robot battery charge: self chargeBateria value.
	self robot battery capacity: self capacityBateria value."

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
<class-id>RobotsFutbolInspector</class-id> <category>private</category>

<body package="RobotFutbol" selector="release">release
	self removeDependents</body>

<body package="RobotFutbol" selector="removeDependents">removeDependents
	self robot removeDependent: self.
	self removeDependent: view.
	self view removeDependent: self.
	self robot battery removeDependent: self</body>

<body package="RobotFutbol" selector="updateValueHolders">updateValueHolders
		| bat |
		bat:= self robot battery.
		self direction value: ('Dirección : ' , self robot direction printString , '°').
		self battery value:  ('Batería : ' , (bat charge printString) , '  (' , (bat charge * 100 / bat capacity) rounded printString , '%)').
		self position value: ('Posición : ' , self robot position printString).</body>

<body package="RobotFutbol" selector="setDependents">setDependents
	self robot addDependent: self.
	self addDependent: view.
	self view addDependent: self.
	self robot battery addDependent: self</body>
</methods>

<methods>
<class-id>RobotsFutbolInspector</class-id> <category>interface opening</category>

<body package="RobotFutbol" selector="postOpenWith:">postOpenWith: aBuilder 
	super postOpenWith: aBuilder.
	self tabsChanged</body>
</methods>

<methods>
<class-id>RobotsFutbolInspector</class-id> <category>private - accessing</category>

<body package="RobotFutbol" selector="model:">model: aModel
	model:= aModel</body>

<body package="RobotFutbol" selector="model">model
	^model</body>

<body package="RobotFutbol" selector="specArray">specArray
	^#(#presentation #properties)</body>

<body package="RobotFutbol" selector="view:">view: aView
	view:= aView</body>

<body package="RobotFutbol" selector="labelArray">labelArray
	^Array with: (self robot world getRobotName: self robot) with: 'Propiedades'</body>
</methods>


<methods>
<class-id>RWorldFutbol</class-id> <category>accesiong - world</category>

<body package="RobotFutbol" selector="conPelotaCercano:">conPelotaCercano: aRobot
	"busca el robot mas cercano a él siempre que tenga la pelota para acercarse"	
| min cercano |
	min:= 10000.
	cercano:= nil.
	self namedRobots do: [ :r |
		(r == aRobot) ifFalse: [
			((aRobot position dist: r position) &lt; min) &amp; (r tienePelota) ifTrue: [
				cercano:= r.
				min:= (aRobot position dist: r position)
			]
		]
	].
	^cercano.</body>

<body package="RobotFutbol" selector="robotMasCercanoConPelota:">robotMasCercanoConPelota: aRobot
"comportamiento del robot que no tiene la pelota"
			| cercano auxTok |
cercano:=self conPelotaCercano:aRobot.
	
cercano isNil ifTrue:[ 	auxTok:=(self robotTomaTokens:aRobot hasta:(aRobot position) long:20 ).  
						auxTok isNil ifTrue:[ aRobot noTomoPelota]
											
									ifFalse:[	aRobot tomoPelota:auxTok.	]		
 					].

^cercano.</body>

<body package="RobotFutbol" selector="robotTomaTokens:hasta:long:">robotTomaTokens: aRobot hasta: oldPosition long:aLong
	"toma un token-pelota si esta a menos de aLong puntos de distancia"
	| point |
	self tokens do: [ :t |
		point:= t position pointNearestLine: oldPosition to: aRobot position.
		((point dist: t position) &lt;= aLong) ifTrue: [ ^t ]
	].
	^nil</body>

<body package="RobotFutbol" selector="robotBuscandoArco:">robotBuscandoArco: aRobot
	"comportamiento de Jugador que tiene la pelota"
	aRobot patear.</body>
</methods>

<methods>
<class-id>RWorldFutbol</class-id> <category>initialize-release</category>

<body package="RobotFutbol" selector="initialize">initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	" *** Replace this comment with the appropriate initialization code *** "
	^self</body>
</methods>


<methods>
<class-id>FutbolRobotApplication class</class-id> <category>interface specs</category>

<body package="RobotFutbol" selector="windowSpec">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#properties: #(#{UI.PropertyListDictionary} #labelFromApplication false ) 
			#label: 'Partido Furbol Robots' 
			#min: #(#{Core.Point} 20 20 ) 
			#max: #(#{Core.Point} 0 0 ) 
			#bounds: #(#{Graphics.Rectangle} 277 150 1257 950 ) 
			#flags: 1 ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.TextEditorSpec} 
					#layout: #(#{Graphics.Rectangle} 9 580 576 761 ) 
					#name: #transcript 
					#model: #text 
					#tabRequiresControl: true ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutSizedOrigin} 9 0 542 0 107 24 ) 
					#name: #ActionButton1 
					#model: #confEquipos 
					#label: 'Configurar Equipos' 
					#defaultable: true ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutSizedOrigin} 124 0 543 0 107 23 ) 
					#name: #ActionButton2 
					#model: #iniciarJuego 
					#label: 'Iniciar Juego' 
					#defaultable: true ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutSizedOrigin} 239 0 542 0 107 24 ) 
					#name: #ActionButton3 
					#model: #terminarJuego 
					#label: 'Terminar Juego' 
					#defaultable: true ) 
				#(#{UI.SubCanvasSpec} 
					#layout: #(#{Graphics.Rectangle} 598 578 961 760 ) 
					#name: #InspectorSubcanvas 
					#clientKey: #inspector ) 
				#(#{UI.ArbitraryComponentSpec} 
					#layout: #(#{Graphics.LayoutSizedOrigin} 11 0 10 0 970 500 ) 
					#name: #ViewHolder1 
					#component: #worldView ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutSizedOrigin} 355 0 542 0 107 24 ) 
					#name: #ActionButton4 
					#model: #limpiarJuego 
					#label: 'Limpiar Cancha' 
					#defaultable: true ) ) ) )</body>
</methods>


<methods>
<class-id>FutbolRobotApplication</class-id> <category>initialize-release</category>

<body package="RobotFutbol" selector="initialize">initialize

	super initialize.
	self text: self defaultText asValue.
	self world: RWorldFutbol new.
	self world defaultProperties:RobotsFutbolInspector.
	self inspector: self world defaultInpector.
	"el tamaño de la cancha es 950x500"
	self world tamano: (ModelWorld origen: -250@-250 extremo: 700@250).
	self worldView: self world defaultView.</body>
</methods>

<methods>
<class-id>FutbolRobotApplication</class-id> <category>update</category>

<body package="RobotFutbol" selector="refreshInspector">refreshInspector
	| textoInfo textoInfo2|
	self localVars: NameSpace new.
	self world namedRobots keysAndValuesDo: [:key :value | self localVars at: key put: value.
	"mirar si hicieron gol" 
"	(key  =  'equip1r1') ifTrue:[  textoInfo:= (value equipo) nombre,' goles: ' ,((value equipo) goles) asString ].
	(key =  'equip2r1') ifTrue:[  textoInfo2:= (value equipo) nombre,' goles: ', ((value equipo) goles) asString ]."
		
].
	"(textoInfo) ifNotNil:[
	self text: (textoInfo, '-', textoInfo2).]."
	self inspector inspector initialize: self localVars.</body>
</methods>

<methods>
<class-id>FutbolRobotApplication</class-id> <category>events</category>

<body package="RobotFutbol" selector="noticeOfWindowClose:">noticeOfWindowClose: aWindow 
	self world retractInterestIn: #robotAdded for: self.
	self world retractInterestIn: #robotRemoved for: self.
	^super noticeOfWindowClose: aWindow</body>
</methods>

<methods>
<class-id>FutbolRobotApplication</class-id> <category>accessing</category>

<body package="RobotFutbol" selector="world:">world: aWorld 
	world isNil ifFalse: [	
		world retractInterestIn: #robotAdded for: self.
		world retractInterestIn: #robotRemoved for: self.
	].
	world:= aWorld.
	aWorld expressInterestIn: #robotAdded for: self sendBack: #refreshInspector.
	aWorld expressInterestIn: #robotRemoved for: self sendBack: #refreshInspector.</body>

<body package="RobotFutbol" selector="worldView">worldView
	^worldView.</body>

<body package="RobotFutbol" selector="world">world
  ^world.</body>
</methods>

<methods>
<class-id>FutbolRobotApplication</class-id> <category>aspects</category>

<body package="RobotFutbol" selector="confEquipos">confEquipos
	"solo abre la ventana de configuracion de Equipo si no hay robots en la cancha"
	(( (self world) namedRobots) size = 0)
	ifTrue:[
   (ConfigEquipo  on: self world) open.]</body>

<body package="RobotFutbol" selector="text">text
	^text.</body>

<body package="RobotFutbol" selector="inspector">inspector
 ^inspector.</body>
</methods>

<methods>
<class-id>FutbolRobotApplication</class-id> <category>actions</category>

<body package="RobotFutbol" selector="limpiarJuego">limpiarJuego
	self world clearRobots.
	self world clearPaths.</body>

<body package="RobotFutbol" selector="iniciarJuego">iniciarJuego
	self world initJuego.</body>

<body package="RobotFutbol" selector="terminarJuego">terminarJuego
	self world stopJuego.</body>

<body package="RobotFutbol" selector="clearArena">clearArena
	self world clearRobots.
	self world clearPaths</body>
</methods>

<methods>
<class-id>FutbolRobotApplication</class-id> <category>interface opening</category>

<body package="RobotFutbol" selector="postOpenWith:">postOpenWith: aBuilder
	super postOpenWith: aBuilder.
	(self builder componentAt: #InspectorSubcanvas) widget
							client: self inspector
							spec: #windowSpec
							builder: builder newSubBuilder.
	self refreshInspector.</body>

<body package="RobotFutbol" selector="postBuildWith:">postBuildWith: aBuilder
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
	(win := aBuilder window) notNil ifTrue: [win label: 'Partido de Futbol de Robots'].</body>
</methods>

<methods>
<class-id>FutbolRobotApplication</class-id> <category>private - accessing</category>

<body package="RobotFutbol" selector="worldView:">worldView: aWorldView 
	worldView:= aWorldView</body>

<body package="RobotFutbol" selector="localVars:">localVars: anObject
	localVars:= anObject</body>

<body package="RobotFutbol" selector="inspector:">inspector: anInspector 
	inspector:= anInspector</body>

<body package="RobotFutbol" selector="defaultText">defaultText
	^'Juego de Futbol de Robots-Trabajo Final'</body>

<body package="RobotFutbol" selector="localVars">localVars
	^localVars</body>

<body package="RobotFutbol" selector="text:">text: aText
	text:= aText</body>
</methods>


<methods>
<class-id>MovementSearchPelota class</class-id> <category>instance creation</category>

<body package="RobotFutbol" selector="new">new
	"Answer a newly created and initialized instance."

	^super new initialize</body>
</methods>


<methods>
<class-id>MovementSearchPelota</class-id> <category>actions</category>

<body package="RobotFutbol" selector="moveEjeY:">moveEjeY: auxRobot
		"comportamiento del robot moviendose por el eje de las Y"
		(auxRobot position y &gt; self robot position y) ifTrue: [
															self robot north.
															self robot move: (auxRobot position y - self robot position y)
															]
													ifFalse: [
															self robot south.
															self robot move: (auxRobot position y - self robot position y)
															].
														(auxRobot position x &gt; self robot position x)  ifTrue: [ self robot east ]  ifFalse: [ self robot west ].</body>

<body package="RobotFutbol" selector="moveEjeX:">moveEjeX: auxRobot
	"comportamiento del robot moviendose por el eje de las X"
(auxRobot position x &gt; self robot position x) ifTrue: [
													self robot east.
													self robot move: (auxRobot position x - self robot position x)
													]
											ifFalse: [
													self robot west.
													self robot move: (self robot position x - auxRobot position x)
													].
											(auxRobot position y &gt; self robot position y)  	ifTrue: [ self robot south ]  ifFalse: [ self robot north ].</body>

<body package="RobotFutbol" selector="move">move
	self doMove.
</body>

<body package="RobotFutbol" selector="cercandoJugador:">cercandoJugador: aRobot
"cerca al jugador cercano al robot actual, haciendo una serie de movimiento cercanos a él siempre que no sean del mismo equipo. En el caso de pertenecer al mismo equipo hace movimientos random"
  
(self moveDistintoEquipo: aRobot) ifTrue:[  
											((aRobot position x@0 dist: self robot position x@0) &lt; (0@aRobot position y dist: 0@self robot position y)) ifTrue: [
																																							self moveEjeX: aRobot.
																																									]
					      																														   ifFalse: [
																																							self moveEjeY:aRobot.
																																									].
		
											]
									ifFalse:[	  self robot noTomoPelota].</body>

<body package="RobotFutbol" selector="moveDistintoEquipo:">moveDistintoEquipo:aRobot
	 ^ (aRobot equipo ~~ self robot equipo).</body>

<body package="RobotFutbol" selector="doMove">doMove
	|actual auxrobot|
"si tiene la pelota busca el arco contrario, si no la tiene busca robot con pelota o movimientos random"
actual:=self robot.
	(actual tienePelota)
					 ifTrue:[	 actual world robotBuscandoArco: actual.]
					
					ifFalse:[ auxrobot:= (actual world) robotMasCercanoConPelota: actual.
							(auxrobot isNil) ifFalse:[   self cercandoJugador: auxrobot. ]
										
							].</body>
</methods>

<methods>
<class-id>MovementSearchPelota</class-id> <category>initialize-release</category>

<body package="RobotFutbol" selector="initialize">initialize
	"Initialize a newly created instance. This method must answer the receiver."

	" *** Replace this comment with the appropriate initialization code *** "
	^self</body>
</methods>



</st-source>
