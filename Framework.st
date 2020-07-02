<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, 7.5 of April 16, 2007 on March 6, 2011 at 7:49:22 am</time-stamp>
<!-- Package Framework* -->


<class>
<name>Object</name>
<environment>Core</environment>
<super></super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>Core.Object</class-id>
<body>Object is the superclass of all classes.  It thus provides default behavior common to all objects, such as class access, copying and printing.

Class Variables:
	DependentsFields	&lt;EphemeronDictionary&gt; mapping objects to their dependents
	EventHandlers		&lt;EphemeronDictionary&gt; mapping objects to their event handlers


Object Reference:
Object is the superclass of all classes.  It thus provides default behavior common to all objects, such as class access, copying and printing.

	-Return itself or an indexed variable (accessing protocol) 
	-Check its type against common categories (testing) 
	-Compare itself to another object (comparing) 
	-Copy itself (copying) 
	-Describe itself (printing) 
	-Answer inquiries about its class and methods (class membership) 
	-Respond to messages (message handling) 
	-Handle errors (error handling) 
	-Open an Inspector or Browser on itself (user interface) 
	-Trace references to itself (system primitives) 
In addition, Object provides the framework for creating, using and removing dependencies among related objects (see dependents access, updating and changing). Two styles of creating and destroying dependencies are supported: the older #addDependent: and #removeDependent:, and the more recent and more convenient #expressInterestIn:for:sendBack: and #retractInterestIn:for:. 
Finally, Object's special position at the top of the inheritance tree makes it the ideal repository for a number of methods that are only relevant in special circumstances. Several of the testing methods, such as #isProtocolAdaptor, fall into this category as well as the fileIn/Out protocol, which serves the Binary Object Streaming Service (BOSS). Other specialized subsystems and applications also may need to define methods in Object when they rely on all objects having specialized abilities. 
</body>
</comment>

<class>
<name>RobotWorldView</name>
<environment>Smalltalk</environment>
<super>Graphics.CompositePart</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>shotViews tokensViews paths world </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>RobotWorldView</class-id>
<body>	ERobotWorldView
		shotViews	&lt;(Collection of: (Geometric | GraphicsMedium | Screen | VisualComponent | WindowSpec))&gt;	Coleccion de vistas de disparos que efectuan los robots.

</body>
</comment>

<class>
<name>RobotWorldTextEditorController</name>
<environment>Smalltalk</environment>
<super>UI.TextEditorController</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>world </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>Battery</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>charge capacity </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>Battery</class-id>
<body>Battery respresenta la bateria del robot, la cantidad de vida del robot

Instance Variables:
	capacity	&lt;Object&gt;	description of capacity
	charge	&lt;ArithmeticValue&gt;	description of charge

</body>
</comment>

<class>
<name>Gun</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>distancia descarga robot </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>Gun</class-id>
<body>	Gun es una clase abstracta para definir armas para los robot.
	Hay que subclasificar estas armas para definir distancia y descarga en caso de impacto, redefiniendo los metodos Gun&gt;&gt;descarga y Gun&gt;&gt;distancia
	Para crear una nueva arma, lo mas importante es la redeclaracion del metodo Gun&gt;&gt;onShot, este metodo es el encargado de crear un disparo. Crear un disparo, es una instancia de la clase Shot. Este metodo deve devolver un objeto de la clase Shot.
	
		distancia&lt;Int&gt;	Distancia que lleva el arma
		descarga&lt;Int&gt;	Descarga que produce el disparo del arma
		robot&lt;Robot&gt;	el robot dueño del arma

</body>
</comment>

<class>
<name>RobotState</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>robot </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>InstanceBehaviorInspector</name>
<environment>Smalltalk</environment>
<super>Tools.Trippy.BehaviorInspector</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>Rectangle</name>
<environment>Graphics</environment>
<super>Graphics.Geometric</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>origin corner </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>Graphics.Rectangle</class-id>
<body>Class Rectangle usually represents a rectangular area on the screen.  Arithmetic functions take points as arguments and carry out scaling and translating operations to create new Rectangles.  Rectangle functions create new Rectangles by determining intersections of rectangles with rectangles. 

Instance Variables:
	origin	&lt;Point&gt;	upper left corner position
	corner	&lt;Point&gt;	lower right corner position


Object Reference:
A Rectangle represents a rectangular region whose axes are aligned with the x and y axes -- that is, it does not support a tilted rectangle. A common usage of a rectangle is to represent an area on the screen or in a window, such as the bounds of a widget. 
A rectangle is typically created by sending an #origin: or #corner: message to a Point that represents the origin of the rectangle. The Rectangle class also supports a variety of creation methods, including the ability to prompt the user for the origin and opposing corner. 
Many of a Rectangle's abilities are inherited, including the ability to wrap itself in a StrokingWrapper (#asStroker) or FillingWrapper (#asFiller) so it can be displayed like a visual component (see Geometric). In addition, a Rectangle knows how to: 
	-Calculate various corner points, midpoints and edge coordinates (accessing protocol) 
	-Measure its width, height and area (accessing) 
	-Inset or expand its borders (rectangle functions) 
	-Determine its overlap with another rectangle (rectangle functions) 
	-Merge with another rectangle (rectangle functions) 
	-Test whether it intersects another rectangle, or contains a point (testing) 
	-Convert its coordinates to integers (truncation and round off) 
	-Shift its size and location (transforming) 
	-Convert itself to an equivalent Polyline or array of vertex points (converting) 
</body>
</comment>

<class>
<name>Robot</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>position direction battery state world currentPath shield movement gun selectImg </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>Robot</class-id>
<body>Se adiciono una variable de instancia mas a la clase Robot para que pueda guardar como objeto la imagen de la camiseta del jugador.

</body>
</comment>

<class>
<name>PathView</name>
<environment>Smalltalk</environment>
<super>UI.View</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>color </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>TokenView</name>
<environment>Smalltalk</environment>
<super>PathView</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>Path</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>points </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>Shot</name>
<environment>Smalltalk</environment>
<super>Path</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>gun </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>Shot</class-id>
<body>	Shot es la clase Disparo, que se crea a partir de que un robot ejecuta su arma.
	Cada subclase de gun implementa onShot, para crear un objeto Shot que se le enviara al mundo para despues redistribuirlo a los robots que corresponda.

		gun	&lt;Gun&gt;	Objeto que representa al arma con que se efectuo el disparo.

</body>
</comment>

<class>
<name>WorldTempRobotInspector</name>
<environment>Smalltalk</environment>
<super>Tools.Trippy.PoolDictionaryInspector</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>NullGun</name>
<environment>Smalltalk</environment>
<super>Gun</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>NullGun</class-id>
<body>	GunNo es subclase de Gun, y es un tipo de Arma que hace que el robot no tenga arma

</body>
</comment>

<class>
<name>RobotWorld</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>namedRobots paths shots moves actual_move tokens tamano run defaultProperties </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>NoRenamingInspector</name>
<environment>Smalltalk</environment>
<super>Tools.PrimitiveObjectInspector</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>ShotView</name>
<environment>Smalltalk</environment>
<super>PathView</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>ShotView</class-id>
<body>	ShotView es una clase visual, que deciende de PethView, para visualizar un disparo en el mundo.
	Dibuja el diparo en el mundo segun el tipo de arma.</body>
</comment>

<class>
<name>BrushUp</name>
<environment>Smalltalk</environment>
<super>RobotState</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>Shield</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>robot </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>Shield</class-id>
<body>	Shield es una clase abstracta para definir escudos para los robot.
	Un escudo actua cuando un robot recibe un disparo.
	Hay que subclasificar estaos escudos para definir la accion a tomar, posibles ejemplos son: No descargar bateria, descargar la mitad, hacer "rebotar el disparo"...
	Para subclasificar y crear un nuevo escudo, reimplementar el metodo receiveDisparo:. Este metodo recibe un disparo y debe devolver un numero que es el valor que se decrementara la bateria. Un escudo completo devolveria 0. Un escudo medio, preguntaria al disparo cual es su valor de descarga, y lo dividiria por 2.
	Subclasificar este clase y reimplementar el metodo receiveDisparo:, siempre devlviendo un numero entero.</body>
</comment>

<class>
<name>NullShield</name>
<environment>Smalltalk</environment>
<super>Shield</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>NullShield</class-id>
<body>	ShieldNo es un escudo basico que no protege al robot frente a un disparo.
	Se le descarga el total del disparo

</body>
</comment>

<class>
<name>Movement</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>robot </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>Movement</class-id>
<body>	La clase abstracta movimiento es una interface para implementar movimientos del robot, subclasificando esta.
	Subclasificar esta clase para definir nuevo motor de movimiento para los robot. Se debe redeclarar el metodo move. Para comunicarse y darle ordenes al robot, se tiene el metodo Movement&gt;&gt;robot para obtener el robot dueño del motor de movimiento. Si necesita acceder al mundo, puede hacerlo mediante el robot, con el mensaje Robot&gt;&gt;world.
	
		robot&lt;Robot&gt;	robot al que corresponde el moto del movimiento.

</body>
</comment>

<class>
<name>MovementRepetitive</name>
<environment>Smalltalk</environment>
<super>Movement</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>block code </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>MovementRepetitive</class-id>
<body>	MovementRepetitive es una implementacion de motor de movimiento para el robot.
	Esta clase de motor en particular, ejecuta un bloque de codigo smalltalk por cada vez que el robot se mueve. Los movimientos son identicos cada vez, por lo que el algoritmo de movimiento deberia ser con pasos cortos, o movimientos de ida y vuelta.
	La manera de asignarle un movimiento es pasandole a esta clase un bloque de codigo, con un argumento (ese argumento será el robot) con el mensaje MovementRepetitive&gt;&gt;block:
	*********************************
	Ejemplo de codigo para generar un robot con movimiento repetitivo:
	| aRobot motor string |
	aRobot:= Robot new.
	motor:= MovementRepetitive robot: aRobot
	string:= 'robot move: 10. robot direction: robot direction - 10.'.
	motor code: string.
	robot movement: motor.
	*********************************
	Los mensajes que entiende el robot para moverse son:
		direction y direction: N - Direccion en grados (0..359) del robot.
		move: N - Mueve el robot N pasos sobre la arena.
		giroEnU - Gira el robot 180 grados.
	
	Para una referencia de los metodos soportados para moverse por parte del robot, consulte la clase ERobot.

		block&lt;BlockContext&gt;	bloque de codigo a ejecutar cuando se le pida mover

</body>
</comment>

<class>
<name>NullMovement</name>
<environment>Smalltalk</environment>
<super>Movement</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>NullMovement</class-id>
<body>	MovementNoMove es una clase de movimiento para el robot que no le da comportamiento. El robot no se mueve.
	Esta condenado a morir horriblemente.
</body>
</comment>

<class>
<name>MovementRandom</name>
<environment>Smalltalk</environment>
<super>Movement</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>MovementRandom</class-id>
<body>	MovementRandom implementa el hotspot de movimiento del robot con moviemientos random.
	Este utiliza los metodos de robot randomDirection y randomMove, que mueve al robot en una direccion y pasos de forma aleatoria.

</body>
</comment>

<class>
<name>RobotController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>inspector </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>RobotMove</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>MovementWithRadar</name>
<environment>Smalltalk</environment>
<super>Movement</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>MovementWithRadar</class-id>
<body>	MovementWithRadar apunta al robot mas cercano y queda listo para dispararle.

</body>
</comment>

<class>
<name>BrushDown</name>
<environment>Smalltalk</environment>
<super>RobotState</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>InPlaceBrushDown</name>
<environment>Smalltalk</environment>
<super>BrushDown</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>InMotionBrushDown</name>
<environment>Smalltalk</environment>
<super>BrushDown</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>RobotView</name>
<environment>Smalltalk</environment>
<super>UI.View</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>symbolImage color preferredBounds image oldDirection oldPosition updateThread </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>RobotView</class-id>
<body>	ERobotView exptiende RobotView para mostrar varias funcionalidades y vistas extras de los robots.
		symbolImage	&lt;ByteSymbol&gt;	Señala la imagen que debe mostrar el robot.

</body>
</comment>

<class>
<name>Token</name>
<environment>Smalltalk</environment>
<super>Path</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>item position asignado </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<class>
<name>ModelWorld</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>rect </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>ModelWorld</class-id>
<body>	Especifica el tamaño virtual del mundo.
	Esto se hace creando un rectangulo especificando el origen (punto izquierdo arriba) y origen (punto derecho abajo). Si un robot se quiere mover se pregunta a este objeto "canMove:" enviandole la posicion del nuevo robot.
	Si el objeto se instanciio con ambos puntos 0@0, se pregunta por el area, y el area devuelve 0, por lo el mundo es infinito, y se responde que se puede mover. Si el area es mayor que 0, se pregunta si el rectangulo incluye el punto pasado como parametro y se devuelve el resultado.

		rect	&lt;Rectangle&gt;	Rectangulo que contiene el tamaño del mundo.

</body>
</comment>

<class>
<name>GunLaser</name>
<environment>Smalltalk</environment>
<super>Gun</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Framework</category>
<attributes>
<package>Framework</package>
</attributes>
</class>

<comment>
<class-id>GunLaser</class-id>
<body>	GunLaser es un arma basico, con tamaño 1, y alcance 200.

</body>
</comment>





<shared-variable>
<name>Index</name>
<environment>RobotView</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
<attributes>
<package>Framework</package>
</attributes>
</shared-variable>





<shared-variable>
<name>DependentsFields</name>
<environment>Core.Object</environment>
<private>false</private>
<constant>true</constant>
<category>As yet unclassified</category>
<initializer>| newDependentsFields |
		newDependentsFields := EphemeronDictionary newPropertyDictionary.
		DependentsFields notNil ifTrue:
			[newDependentsFields addAll: DependentsFields associations].
		newDependentsFields</initializer>
<attributes>
<package>Framework</package>
</attributes>
</shared-variable>


<shared-variable>
<name>EventHandlers</name>
<environment>Core.Object</environment>
<private>false</private>
<constant>true</constant>
<category>As yet unclassified</category>
<initializer>| newEventHandlers |
		newEventHandlers := EphemeronDictionary newPropertyDictionary.
		EventHandlers notNil ifTrue:
			[newEventHandlers addAll: EventHandlers associations].
		newEventHandlers</initializer>
<attributes>
<package>Framework</package>
</attributes>
</shared-variable>





























<methods>
<class-id>Core.Object class</class-id> <category>events</category>

<body package="Framework" selector="canTriggerEvent:">canTriggerEvent: eventName
	"Answer whether instances of the receiver can trigger an event named &lt;eventName&gt;.
	By default, subclasses of Object are 'ambivalent'."

	^self ambivalentEventChecking
		ifTrue: [true]
		ifFalse: [self eventsTriggered includes: eventName asSymbol]</body>

<body package="Framework" selector="eventsTriggered">eventsTriggered
	"Answer all the events which can be triggered
	by instances of the receiver."

	^self constructEventsTriggered</body>
</methods>

<methods>
<class-id>Core.Object class</class-id> <category>instance creation</category>

<body package="Framework" selector="readFromString:">readFromString: aString
	"Create an object based on the contents of aString."

	^self readFrom: (ReadStream on: aString)</body>

<body package="Framework" selector="readFrom:">readFrom: aStream
	"Create an object based on the contents of aStream."

	| object |
	object := self evaluatorClass evaluate: aStream.
	(object isKindOf: self) ifFalse: [self error: (#errInstanceExpected &lt;&lt; #dialogs &gt;&gt; '&lt;1p&gt; expected' expandMacrosWith: self )].
	^object</body>
</methods>

<methods>
<class-id>Core.Object class</class-id> <category>class initialization</category>

<body package="Framework" selector="initialize">initialize
	"Reset all the dependents of all objects."
	"NOTE: This method changes the standard definition to initialize the event table."

	"Object initialize"

	(Dialog confirm: (#initializeClassObject &lt;&lt; #dialogs &gt;&gt; 'Do you really want to initialize
class Object?  It will reset all dependents and event handlers.'))
		ifTrue:
			[self initializeDependentsFields.
			self initializeEventHandlers.
			self initSignals]</body>

<body package="Framework" selector="initializeErrorSignal">initializeErrorSignal
		"Initialize the general Error and Exception signals.  Ensures no duplications."

	Exception
		notifierString: (#notifyException &lt;&lt; #dialogs &gt;&gt; 'Exception -: ');
		nameClass: Object message: #exceptionSignal.
	Error
		notifierString: (#notifyError &lt;&lt; #dialogs &gt;&gt; 'Error - : ');
		nameClass: Object message: #errorSignal.</body>

<body package="Framework" selector="initSignals">initSignals
	"Initialize global signals."		
	"		Object initSignals		"

	Signal initializeGenericSignal.			"got to be done first."
	self initializeErrorSignal.

	Notification
		notifierString: (#exceptNotfication &lt;&lt; #dialogs &gt;&gt; 'Notification - ') ;
		nameClass: self message: #notification.

	InformationSignal
		notifierString: (#exceptInformationSignal &lt;&lt; #dialogs &gt;&gt; 'Information - ') ;
		nameClass: self message: #informationSignal.

	ControlInterrupt
		notifierString: (#exceptControlInterrupt &lt;&lt; #dialogs &gt;&gt; 'Control interrupted - ');
		nameClass: self message: #controlInterruptedSignal.

	UserInterrupt
		notifierString: (#exceptUserInterrupt &lt;&lt; #dialogs &gt;&gt; 'User Interrupt');
		nameClass: self message: #userInterruptSignal.

	HaltInterrupt
		notifierString: (#exceptHaltInterrupt &lt;&lt; #dialogs &gt;&gt; 'Halt ');
		nameClass: self message: #haltSignal.

	SystemNotification
		notifierString: (#exceptSystemNotification &lt;&lt; #dialogs &gt;&gt; 'Notifier ');
		nameClass: self message: #notifySignal.

	Warning
		notifierString: (#exceptWarning &lt;&lt; #dialogs &gt;&gt; 'Warning-');
		nameClass: self message: #warningSignal.

	UserNotification
		notifierString: (#exceptUserNotificaion &lt;&lt; #dialogs &gt;&gt; 'Warning-');
		nameClass: self message: #userNotificationSignal.

	NotFoundError
		notifierString: (#exceptNotFound &lt;&lt; #dialogs &gt;&gt; 'Element not Found');
		nameClass: self message: #notFoundSignal.

	IndexNotFoundError
		notifierString: (#exceptIndexNotFoundError &lt;&lt; #dialogs&gt;&gt; 'Index not found');
		nameClass: self message: #indexNotFoundSignal.

	SubscriptOutOfBoundsError
		notifierString: (#exceptSubscriptBounds &lt;&lt; #dialogs &gt;&gt; 'Subscript out of bounds: ');
		nameClass: self message: #subscriptOutOfBoundsSignal.

	NonIntegerIndexError
		notifierString: (#exceptNonIntegerIndex &lt;&lt; #dialogs &gt;&gt; 'Non integer index: ');
		nameClass: self message: #nonIntegerIndexSignal.

	SubclassResponsibilityError
		notifierString: (#exceptSubclassResponsibility &lt;&lt; #dialogs &gt;&gt; 'Subclass responsibility ');
		nameClass: self message: #subclassResponsibilitySignal.

	MessageNotUnderstood
		notifierString: (#exceptMessageNotUnderstood &lt;&lt; #dialogs &gt;&gt; 'Message not understood ');
		nameClass: self message: #messageNotUnderstoodSignal.</body>
</methods>

<methods>
<class-id>Core.Object class</class-id> <category>private</category>

<body package="Framework" selector="initializeDependentsFields">initializeDependentsFields
	#{DependentsFields} initialize

	"Object initializeDependentsFields"</body>

<body package="Framework" selector="resourceMethodPragmas">resourceMethodPragmas
	&lt;pragmas: #instance&gt;
	&lt;pragmas: #class&gt;

	^#(#resource:)</body>

<body package="Framework" selector="dependentsFields">dependentsFields
	"Answer the dependentsFields dictionary."

	^DependentsFields</body>
</methods>

<methods>
<class-id>Core.Object class</class-id> <category>private-events</category>

<body package="Framework" selector="initializeEventHandlers">initializeEventHandlers
	"Object initializeEventHandlers"

	#{EventHandlers} initialize</body>

<body package="Framework" selector="ambivalentEventChecking">ambivalentEventChecking
	^true</body>

<body package="Framework" selector="constructEventsTriggered">constructEventsTriggered
	"Private - answer the collection of events that instances of the
	receiver can trigger."

	^Set new: 40</body>
</methods>

<methods>
<class-id>Core.Object class</class-id> <category>signal constants</category>

<body package="Framework" selector="controlInterruptedSignal">controlInterruptedSignal
	"The parameter for an exception raised by this signal or its children is the context that 
	should be treated as the top context on the stack, if a Debugger is to be opened."

	^ControlInterrupt</body>

<body package="Framework" selector="userInterruptSignal">userInterruptSignal

	^UserInterrupt</body>

<body package="Framework" selector="notifySignal">notifySignal

	^SystemNotification</body>

<body package="Framework" selector="errorSignal">errorSignal
	"Answer the Signal used for miscellaneous errors (self error:)."

	^Error</body>

<body package="Framework" selector="notFoundSignal">notFoundSignal

	^NotFoundError</body>

<body package="Framework" selector="exceptionSignal">exceptionSignal
	"Answer the Signal used for miscellaneous exceptions (self error:)."

	^Exception</body>

<body package="Framework" selector="indexNotFoundSignal">indexNotFoundSignal

	^IndexNotFoundError</body>

<body package="Framework" selector="warningSignal">warningSignal

	^Warning</body>

<body package="Framework" selector="haltSignal">haltSignal

	^HaltInterrupt</body>

<body package="Framework" selector="subscriptOutOfBoundsSignal">subscriptOutOfBoundsSignal
	"The parameter for an exception raised by this signal or its children 
	is the invalid index."

	^SubscriptOutOfBoundsError</body>

<body package="Framework" selector="userNotificationSignal">userNotificationSignal

	^UserNotification</body>

<body package="Framework" selector="nonIntegerIndexSignal">nonIntegerIndexSignal
	"The parameter for an exception raised by this signal or its children 
	is the invalid index."

	^NonIntegerIndexError</body>

<body package="Framework" selector="notification">notification

	^Notification</body>

<body package="Framework" selector="subclassResponsibilitySignal">subclassResponsibilitySignal

	^SubclassResponsibilityError</body>

<body package="Framework" selector="messageNotUnderstoodSignal">messageNotUnderstoodSignal
	"The parameter for an exception raised by this signal or its children 
	is the Message that was not understood."

	^MessageNotUnderstood</body>

<body package="Framework" selector="informationSignal">informationSignal

	^InformationSignal</body>
</methods>


<methods>
<class-id>Core.Object</class-id> <category>printing</category>

<body package="Framework" selector="debugString">debugString
	^self printString</body>

<body package="Framework" selector="basicPrintOn:">basicPrintOn: aStream 
	"Append to the argument aStream a sequence of characters
	that describes the receiver. This is overriden only by ClassDescription."

	| title |
	title := self class name.
	aStream nextPut: $a.
	(title at: 1) isVowel ifTrue: [aStream nextPut: $n].
	aStream nextPut: $ .
	aStream print: self class</body>

<body package="Framework" selector="inspectString">inspectString
	^self debugString</body>

<body package="Framework" selector="forStackDumpPrintUsing:">forStackDumpPrintUsing: aPolicy
	^aPolicy printObject: self</body>

<body package="Framework" selector="isImmutableLiteral">isImmutableLiteral
	"Answer if the receiver has a literal text form 
	 recognized by the compiler and is immutable."

	^self isImmutable and: [self isLiteral]</body>

<body package="Framework" selector="storeOn:">storeOn: aStream 
	"Append to the argument aStream a sequence of characters that is an expression 
	whose evaluation creates an object similar to the receiver.  This is appropriate only
	for smaller simpler objects.  It cannot handle arbitrary circular references of objects.
	For large complex objects with circular references you should consider using the
	Binary Object Storage System (BOSS) class (BinaryObjectStorage).
	The general format for objects is
		(class-name basicNew 
			instVarAt: index put: variable;
			basicAt: index put: element;
			yourself)
	or
		((class-name basicNew: size )
			instVarAt: index put: variable;
			basicAt: index put: element;
			yourself) "

	aStream nextPut: $(.
	self class isVariable
		ifTrue: [aStream nextPutAll: '(';
					store: self class;
					nextPutAll: ' basicNew: ';
					store: self basicSize;
					nextPutAll: ') ']
		ifFalse: [aStream store: self class; nextPutAll: ' basicNew'].
	1 to: self class instSize do:
		[:i |
		aStream nextPutAll: ' instVarAt: ';
			store: i;
			nextPutAll: ' put: ';
			store: (self instVarAt: i);
			nextPut: $;].
	1 to: self basicSize do:
		[:i |
		aStream nextPutAll: ' basicAt: ';
			store: i;
			nextPutAll: ' put: ';
			store: (self basicAt: i);
			nextPut: $;].
	aStream nextPutAll: ' yourself)'</body>

<body package="Framework" selector="printOn:">printOn: aStream
        "Append to the argument aStream a sequence of characters
        that describes the receiver."

        | title |
        title := self class printString.
        aStream nextPutAll:
                ((title at: 1) isVowel ifTrue: ['an '] ifFalse: ['a ']).
        aStream nextPutAll: title</body>

<body package="Framework" selector="basicPrintString">basicPrintString
	"Answer a String whose characters are a description of the receiver."

	| aStream |
	aStream := WriteStream on: (String new: 16).
	self basicPrintOn: aStream.
	^aStream contents</body>

<body package="Framework" selector="printString">printString
	"Answer a String whose characters are a description of the receiver."

	| aStream |
	aStream := WriteStream on: (String new: 16).
	self printOn: aStream.
	^aStream contents</body>

<body package="Framework" selector="storeString">storeString
	"Answer a String representation of the receiver from which the receiver
	can be reconstructed."

	| aStream |
	aStream := WriteStream on: (String new: 16).
	self storeOn: aStream.
	^aStream contents</body>

<body package="Framework" selector="displayLabel">displayLabel
	"Allows any Object to be used as the basis for a Label, although the 
	purpose of displayString is to provide something more suitable than 
	printString, primarily for use in SequenceViews."

	^Label with: self displayString</body>

<body package="Framework" selector="isLiteral">isLiteral
	"Answer whether the receiver has a literal text form 
	recognized by the compiler."

	^false</body>

<body package="Framework" selector="displayString">displayString
	"Allows any Object to be used as the basis for a Label, although the 
	purpose of displayString is to provide something more suitable than 
	printString, primarily for use in SequenceViews."

	^self printString</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>converting</category>

<body package="Framework" selector="asImmutableLiteral">asImmutableLiteral
	"Answer an immutable literal version of the receiver, if it is representable by literals.
	 If the receiver is already an immutable literal, answer itself."
	self isLiteral ifFalse:
		[self error: #errReceiverNotLiteral &lt;&lt; #dialogs &gt;&gt; 'The receiver is not a literal.'].
	^self isImmutable
		ifTrue: [self]
		ifFalse: [self shallowCopy isImmutable: true; yourself]</body>

<body package="Framework" selector="asValue">asValue
	"Return a ValueHolder on the receiver"

	^ValueHolder with: self</body>

<body package="Framework" selector="-&gt;">-&gt; anObject
	"Answer a new Association with the receiver as the key and the argument as the value."

	^Association key: self value: anObject</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>event configuring</category>

<body package="Framework" selector="when:do:">when: anEventNameSymbol do: aBlock
	"Append &lt;aBlock&gt; to the list of actions to evaluate when
	the receiver triggers the event named &lt;anEventNameSymbol&gt;."

	(aBlock isMemberOf: BlockClosure)
		ifFalse: [^self error: (#errArgBlock &lt;&lt; #dialogs &gt;&gt; 'Argument must be a block.')].
	self
		when: anEventNameSymbol
		evaluate: aBlock</body>

<body package="Framework" selector="whenAny:evaluate:">whenAny: aCollectionOfEventNames evaluate: anAction
	"Append &lt;anAction&gt; to the list of actions to evaluate when the receiver triggers any 
	of the events the event named in &lt;aCollectionOfEventNames&gt;."

	aCollectionOfEventNames do: [:each | self when: each evaluate: anAction]</body>

<body package="Framework" selector="when:send:to:with:">when: anEventNameSymbol send: aSelectorSymbol to: anObject with: anArgumentObject 
	"Form an action with &lt;anObject&gt; as the receiver, 
	a &lt;aSelectorSymbol&gt; as the message selector, and &lt;anArgumentObject&gt; 
	as the argument and append it to the actions list for the event named &lt;anEventNameSymbol&gt;."

	self
		when: anEventNameSymbol
		send: aSelectorSymbol
		to: anObject
		withArguments: (Array with: anArgumentObject)</body>

<body package="Framework" selector="whenAny:send:to:">whenAny: aCollectionOfEventNames send: aSelectorSymbol to: anObject
	"Form an action with &lt;anObject&gt; as the receiver and a &lt;aSelectorSymbol&gt; as the message selector and append
	it to the actions list for all the the event named in  &lt;aCollectionOfEventNames&gt;."

	aCollectionOfEventNames do:
		[:each |
		self when: each send: aSelectorSymbol to: anObject]</body>

<body package="Framework" selector="whenAny:do:">whenAny: aCollectionOfEventNames do: aBlock
	"Append &lt;aBlock&gt; to the list of actions to evaluate when
	the receiver triggers any of the the event named in &lt;aCollectionOfEventNames&gt;."

	aCollectionOfEventNames do: [:each | self when: each do: aBlock]</body>

<body package="Framework" selector="when:send:to:">when: anEventNameSymbol send: aSelectorSymbol to: anObject
	"Form an action with &lt;anObject&gt; as the receiver and
	a &lt;aSelectorSymbol&gt; as the message selector and append
	it to the actions list for the event named &lt;anEventNameSymbol&gt;."

	| arguments |
	aSelectorSymbol isSymbol ifFalse: [^self errorBadSelector: aSelectorSymbol].
	arguments := Array new: (MessageSend numberOfArgumentsFor: aSelectorSymbol).
	self
		when: anEventNameSymbol
		evaluate:
			(MessageSend
				receiver: anObject
				selector: aSelectorSymbol
				arguments: arguments)</body>

<body package="Framework" selector="when:evaluate:">when: anEventNameSymbol evaluate: anAction
	"Append &lt;anAction&gt; to the list of actions to evaluate
	when the receiver triggers the event named &lt;anEventNameSymbol&gt;."

	| actions |
	(self canTriggerEvent: anEventNameSymbol)
		ifFalse: [^self errorBadEvent: anEventNameSymbol].
	actions := self actionListForEvent: anEventNameSymbol.
	(actions includes: anAction)
		ifTrue: [^self].
	self
		setActionList: (actions copyWith: anAction)
		forEvent: anEventNameSymbol</body>

<body package="Framework" selector="whenAny:send:to:with:with:">whenAny: aCollectionOfEventNames send: aSelectorSymbol to: anObject with: firstArgumentObject with: secondArgumentObject
	"Form an action with &lt;anObject&gt; as the receiver, a &lt;aSelectorSymbol&gt; as the message selector, and the
	&lt;firstArgumentObject&gt; and &lt;secondArgumentObject&gt; as the
	arguments and append it to the actions 	list for all the event names in &lt;aCollectionOfEventNames&gt;.."

	aCollectionOfEventNames do:
		[:each |
		self
			when: each
			send: aSelectorSymbol
			to: anObject
			withArguments: (Array with: firstArgumentObject with: secondArgumentObject)]</body>

<body package="Framework" selector="whenAny:send:to:withArguments:">whenAny: aCollectionOfEventNames send: aSelectorSymbol to: anObject withArguments: anArgumentCollection
	"Form an action with &lt;anObject&gt; as the receiver,
	a &lt;aSelectorSymbol&gt; as the message selector, and the elements of the &lt;anArgumentCollection&gt; as the arguments
	and append it to the actions list for all the event names in &lt;aCollectionOfEventNames&gt;."

	aCollectionOfEventNames do:
		[:each |
		self
			when: each
			send: aSelectorSymbol
			to: anObject
			withArguments: anArgumentCollection]</body>

<body package="Framework" selector="whenAny:send:to:with:">whenAny: aCollectionOfEventNames send: aSelectorSymbol to: anObject with: anArgument
	"Form an action with &lt;anObject&gt; as the receiver and a &lt;aSelectorSymbol&gt; as the message selector 
	and append it to the actions list for the all the event names in &lt;aCollectionOfEventNames&gt;."

	aCollectionOfEventNames do:
		[:each |
		self when: each send: aSelectorSymbol to: anObject withArguments: (Array with: anArgument)]</body>

<body package="Framework" selector="when:send:to:withArguments:">when: anEventNameSymbol send: aSelectorSymbol to: anObject withArguments: anArgumentCollection
	"Form an action with &lt;anObject&gt; as the receiver,
	a &lt;aSelectorSymbol&gt; as the message selector, and the elements of the &lt;anArgumentCollection&gt; as the arguments
	and append it to the actions list for the event named &lt;anEventNameSymbol&gt;."

	| arguments | 
	aSelectorSymbol isSymbol ifFalse: [^self errorBadSelector: aSelectorSymbol].
	arguments := Array new: (MessageSend numberOfArgumentsFor: aSelectorSymbol).
	arguments
		replaceFrom: 1
		to: (arguments size min: anArgumentCollection size)
		with: anArgumentCollection
		startingAt: 1.
	self
		when: anEventNameSymbol
		evaluate:
			(((MessageSend numberOfArgumentsFor: anEventNameSymbol) = 0
				ifTrue: [MessageSend] 
				ifFalse: [LinkMessage])
					receiver: anObject
					selector: aSelectorSymbol
					arguments: arguments)</body>

<body package="Framework" selector="when:send:to:with:with:">when: anEventNameSymbol send: aSelectorSymbol to: anObject with: firstArgumentObject with: secondArgumentObject
	"Form an action with &lt;anObject&gt; as the receiver, a &lt;aSelectorSymbol&gt; as the message selector, and the
	&lt;firstArgumentObject&gt; and &lt;secondArgumentObject&gt; as the
	arguments and append it to the actions 	list for the event named &lt;anEventNameSymbol&gt;."

	self
		when: anEventNameSymbol
		send: aSelectorSymbol
		to: anObject
		withArguments: (Array with: firstArgumentObject with: secondArgumentObject)</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>changing</category>

<body package="Framework" selector="changed">changed
	"Receiver changed in a general way; inform all the dependents by sending 
	each dependent an update: message."

	self changed: nil</body>

<body package="Framework" selector="broadcast:with:">broadcast: aSymbol with: anObject 
	"Send the argument, aSymbol, as a keyword message with argument anObject to
	all of the receiver's dependents."

	self myDependents performUpdate: aSymbol with: anObject</body>

<body package="Framework" selector="changeRequest:">changeRequest: anAspectSymbol 
	"The receiver wants to change this aspect; check with all dependents that it is OK."

	^self myDependents updateRequest: anAspectSymbol</body>

<body package="Framework" selector="broadcast:">broadcast: aSymbol 
	"Send the argument, aSymbol, as a unary message to all of the receiver's dependents."

	self myDependents performUpdate: aSymbol</body>

<body package="Framework" selector="changed:">changed: anAspectSymbol 
	"Receiver changed.  The change is denoted by the argument anAspectSymbol.  Usually the argument is a Symbol that is part of the dependent's change protocol, that is, some aspect of the object's behavior.  Inform all of the dependents."

	self changed: anAspectSymbol with: nil</body>

<body package="Framework" selector="changed:with:">changed: anAspectSymbol with: aParameter
	"The receiver changed.  The change is denoted by the argument anAspectSymbol.  Usually the argument is a Symbol that is part of the dependent's change protocol, that is, some aspect of the object's behavior, and aParameter is additional information.  Inform all of the dependents."

	self myDependents update: anAspectSymbol with: aParameter from: self</body>

<body package="Framework" selector="changeRequest">changeRequest
	"The receiver wants to change; check with all dependents that it is OK."

	^self myDependents updateRequest</body>

<body package="Framework" selector="changeRequestFrom:">changeRequestFrom: aRequestorObject 
	"Receiver wants to change; check with all dependents (other than 
	requestor) that it is OK."

	self dependents do:
		[:aDependent | 
			(aDependent == aRequestorObject or: [aDependent updateRequest])
				ifFalse: [^false]].
	^true</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>dependents collection</category>

<body package="Framework" selector="asDependentsWithout:">asDependentsWithout: anObject
	"Answer the receiver, considered as a
	collection of dependents, with the first
	occurrence of anObject (if any) removed.
	If anObject does not occur in the receiver,
	answer the receiver. "
	" Since the receiver represents a
	singleton dependents collection, answer
	either the receiver or nil. "

	^anObject == self
		ifTrue: [nil]
		ifFalse: [self]</body>

<body package="Framework" selector="asDependentsWith:">asDependentsWith: anObject
	"Answer the receiver, considered as a
	collection of dependents, with anObject
	added.  Since the receiver represents
	a singleton dependents collection,
	answer a Collection containing the
	receiver and anObject. "

	^DependentsCollection with: self with: anObject</body>

<body package="Framework" selector="asDependentsAsCollection">asDependentsAsCollection
	"Answer the receiver, considered as a
	collection of dependents, as a real
	Collection.  Since the receiver represents
	a singleton dependents collection,
	answer a Collection containing only
	the receiver. "

	^Array with: self</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>copying</category>

<body package="Framework" selector="postDcopy">postDcopy
	"Complete the deep copy operation."

	| class |
	class := self class.
	class isVariable
		ifTrue: [1 to: self basicSize do: [ :i | self basicAt: i put: (self basicAt: i) basicDcopy]].
	1 to: class instSize do: [ :i | self instVarAt: i put: (self instVarAt: i) basicDcopy]</body>

<body package="Framework" selector="basicMethodDcopy">basicMethodDcopy
	"Ignore."

	^self</body>

<body package="Framework" selector="copy">copy
	" Answer another instance just like the receiver.
	Subclasses normally override the postCopy
	message, but some objects that should not be
	copied override copy. "

	^self shallowCopy postCopy</body>

<body package="Framework" selector="basicDcopy">basicDcopy
	"Basic deep copy operation."

	^DcopyDict
		at: self
		ifAbsent:
			[|nuMe|
			nuMe := self shallowCopy.
			DcopyDict at: self put: nuMe.
			nuMe postDcopy.
			nuMe]</body>

<body package="Framework" selector="postCopy">postCopy
	" Finish doing whatever is required,
	beyond a shallowCopy, to implement 'copy'.
	Answer the receiver.
	This message is only intended to be sent
	to the newly created instance.
	Subclasses may add functionality,
	but they should always do super postCopy first. "

	" Note that any subclass that 'mixes in Modelness'
	(i.e., implements dependents with an instance
	variable) must include the equivalent of
	'self breakDependents' in its implementation
	of postCopy. "

	^self</body>

<body package="Framework" selector="dcopy">dcopy
	"Return a smart deep copy of the receiver.  References to a single
	object are maintained instead of being broken."

	| nuMe |
	Smalltalk.CraftedSmalltalk at: #DcopyDict put: IdentityDictionary new.
	nuMe := self basicDcopy.
	Smalltalk.CraftedSmalltalk at: #DcopyDict put: nil.
	^nuMe</body>

<body package="Framework" selector="shallowCopy">shallowCopy
	"Answer a copy of the receiver which shares the receiver's instance 
	variables."

	&lt;primitive: 532&gt;
	| class newObject index |
	class := self class.
	class isVariable
		ifTrue: 
			[newObject := class basicNew: (index := self basicSize).
			1 to: index do:
				[ :i |  newObject basicAt: i put: (self basicAt: i)  ]]
		ifFalse: [newObject := class basicNew].
	1 to: class instSize do:
		[ :i |  newObject instVarAt: i put: (self instVarAt: i)  ].
	^newObject</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>private-backward compatibility</category>

<body package="Framework" selector="subscriptBoundsError:">subscriptBoundsError: index 
	"Raise a signal indicating that an improper integer was used as an index."

	^(SubscriptOutOfBoundsError receiver: self selector: nil index: index) raiseRequest</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>updating</category>

<body package="Framework" selector="updateRequest:">updateRequest: anAspectSymbol
		"Default behavior is to grant update requests;  a subclass might want to override this behavior if it is in the middle of making another change."

	^self updateRequest</body>

<body package="Framework" selector="update:with:from:">update: anAspectSymbol with: aParameter from: aSender
		"Receive a change notice from an object, denoted by aSender, of whom the receiver is a dependent.  The argument anAspectSymbol is typically a Symbol that indicates what change has occurred and aParameter is additional information. The default behavior is to do nothing;  a subclass might want to change itself in some way."

	^self update: anAspectSymbol with: aParameter

"Note that in this implementation, assumption is that the object does not respond to this protocol but an attempt should be made to try a simpler message."</body>

<body package="Framework" selector="performUpdate:">performUpdate: aSymbol 
	"Send the argument, aSymbol, as a unary message to the receiver."

	^self perform: aSymbol</body>

<body package="Framework" selector="updateRequest">updateRequest
	"Default behavior is to grant update requests;  a subclass might want to override
	this behavior if it is in the middle of making another change."

	^ true</body>

<body package="Framework" selector="performUpdate:with:">performUpdate: aSymbol with: anObject 
	"Send the argument, aSymbol, as a keyword message with argument anObject the receiver"

	self perform: aSymbol with: anObject</body>

<body package="Framework" selector="update:with:">update: anAspectSymbol with: aParameter
		"Receive a change notice from an object of whom the receiver is a dependent.  The argument anAspectSymbol is typically a Symbol that indicates what change has occurred and aParameter is additional information. The default behavior is to do nothing;  a subclass might want to change itself in some way."

	^self update: anAspectSymbol

"Note that in this implementation, assumption is that the object does not respond to this protocol but an attempt should be made to try a simpler message."</body>

<body package="Framework" selector="update:">update: anAspectSymbol 
	"Receive a change notice from an object of whom the receiver is a dependent.  The argument anAspectSymbol is typically a Symbol that indicates what change has occurred.  The default behavior is to do nothing;  a subclass might want to change itself in some way."

	^self</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>external copying</category>

<body package="Framework" selector="gcCopyToHeap16">gcCopyToHeap16
	"Copy the receiver to the external heap.  Answer a segment pointer to the data that is registered for automatic garbage collection.  If the current platform does not support a segmented memory architecture or the allocation fails a primitive failed signal is raised."

	| aPointer |
	aPointer := self copyToHeap16.
	aPointer beGarbageCollectable.
	^aPointer</body>

<body package="Framework" selector="copyToHeap16">copyToHeap16
	"Copy the receiver to the external heap.  Answer a segmented pointer to the data.  If the current platform does not support a segmented memory architecture or the allocation fails a primitive failed signal is raised."

	^self copyToHeap: #malloc16:</body>

<body package="Framework" selector="copyToHeap">copyToHeap
	"Copy the receiver to the external heap.  Answer a pointer to the data."

	^self copyToHeap: #malloc:</body>

<body package="Framework" selector="gcCopyToHeap">gcCopyToHeap
	"Copy the receiver to the external heap.  Answer a pointer to the data that is registered for automatic garbage collection."

	| aPointer |
	aPointer := self copyToHeap.
	aPointer beGarbageCollectable.
	^aPointer</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>user interface</category>

<body package="Framework" selector="inspectorClasses">inspectorClasses
	"Answer a sequence of inspector classes that can represent the receiver in an
	inspector. The first page in the array is the one used by default in a new inspector."

	^Array with: Tools.Trippy.BasicInspector</body>

<body package="Framework" selector="inspectorActions">inspectorActions
	"Answer a collection of Action instances listing the common actions
	a user might want to perform on an object. They are added to the 
	inspector's Object menu."

	^#()</body>

<body package="Framework" selector="findGuiResourcesIn:">findGuiResourcesIn: aResourceContainer
	"Do nothing."</body>

<body package="Framework" selector="inspectorExtraAttributes">inspectorExtraAttributes
	"Subclasses may reimplement this to answer a sequence of
	DerivedAttribute or TextAttribute instances that should show up
	in the inspector in addition to named instance variables and
	indexed variables. See implementors for an example."

	^#()</body>

<body package="Framework" selector="inspectorCollaborators">inspectorCollaborators
	"Answer a collection of Collaborator instances listing the important other
	objects a person looking at this one might want to see. For example,
	collaborators of a view would be its model and the controller.
	Collaborators are added to the inspector's Go menu."

	^#()</body>

<body package="Framework" selector="browse">browse
	"Create and schedule a system class browser on the class of the object."

	SmalltalkWorkbench browseClass: self class instanceBehavior</body>

<body package="Framework" selector="basicInspectorClass">basicInspectorClass

	^Inspector</body>

<body package="Framework" selector="inspectorHierarchies">inspectorHierarchies
	"Answer a collection of instances of Hierarchy describing the hierarchies
	this object is a member of."

	^#()</body>

<body package="Framework" selector="inspect">inspect

		^PrimitiveObjectInspector openOn: self.</body>

<body package="Framework" selector="basicInspect">basicInspect
	"Create and schedule an Inspector in which the user can examine the
	receiver's variables.  This method should not be overridden in subclasses."

	self basicInspectorClass openOn: self</body>

<body package="Framework" selector="inspectorClass">inspectorClass

	^Inspector</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>external testing</category>

<body package="Framework" selector="isFixedArgument">isFixedArgument
	"Answer if the receiver, when passed as an argument through the 
	 DLL &amp; C Connect, represents data at a fixed address.  This is true
	 for objects created via the newInFixedSpace: primitive. Fail if the
	 receiver is immediate, since it has no data.  In this case the Smalltalk
	 code copes with the immediate case."

	&lt;primitive: 1041&gt;
	^self class hasImmediateInstances</body>

<body package="Framework" selector="hasFixedData">hasFixedData
	"Answer if the receiver's data resides at a fixed address. This is true
	 for objects created via the newInFixedSpace: primitive. Fail if the
	 receiver is immediate, since it has no data."

	&lt;primitive: 1041&gt;
	^false</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>initialize-release</category>

<body package="Framework" selector="release">release
	"Remove references to objects that may refer to the receiver. Answers self. 
	This message should be overidden by subclasses with any cycles, in which
	case the subclass should also include the expression super release."
	"NOTE: This method changes the standard definition to release the event table."

	self breakDependents.
	self releaseEventTable</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>event triggering</category>

<body package="Framework" selector="triggerEvent:withArguments:ifNotHandled:">triggerEvent: anEventNameSymbol withArguments: anArgumentCollection ifNotHandled: exceptionBlock
	"Trigger the event &lt;anEventNameSymbol&gt; using the elements of
	the &lt;anArgumentCollection&gt; as the arguments.  If the event is
	not handled, execute the &lt;exceptionBlock&gt;, The Answer is undefined"

	self myEventTable == nil ifTrue: [^exceptionBlock value].
	^(self eventTable
		at: anEventNameSymbol asSymbol
		ifAbsent: [^exceptionBlock value])
			evaluateWithArguments: anArgumentCollection</body>

<body package="Framework" selector="triggerEvent:ifNotHandled:">triggerEvent: anEventNameSymbol ifNotHandled: exceptionBlock
	"Trigger the event named &lt;anEventNameSymbol&gt;.  If the event is
	not handled, execute the &lt;exceptionBlock&gt;, The Answer is undefined"

	self myEventTable == nil ifTrue: [^exceptionBlock value].
	^(self eventTable
		at: anEventNameSymbol asSymbol
		ifAbsent: [^exceptionBlock value])
			evaluate</body>

<body package="Framework" selector="triggerEvent:with:with:">triggerEvent: anEventNameSymbol with: firstArgumentObject with: secondArgumentObject 
	"Trigger the event &lt;anEventNameSymbol&gt; using the &lt;firstArgumentObject&gt;
	and &lt;secondArgumentObject&gt; as the arguments.  Answer the
	value returned by the most recently defined event
	handler action."

	^self
		triggerEvent: anEventNameSymbol
		withArguments: (Array
			with: firstArgumentObject
			with: secondArgumentObject)</body>

<body package="Framework" selector="triggerEvent:with:">triggerEvent: anEventNameSymbol with: anArgumentObject
	"Trigger the event &lt;anEventNameSymbol&gt; using the given
	&lt;anArgumentObject&gt; as the argument.  Answer the value
	returned by the most recently defined event handler action."

	^self
		triggerEvent: anEventNameSymbol
		withArguments: (Array with: anArgumentObject)</body>

<body package="Framework" selector="triggerEvent:withArguments:">triggerEvent: anEventNameSymbol withArguments: anArgumentCollection
	"Trigger the event &lt;anEventNameSymbol&gt; using the
	elements of the &lt;anArgumentCollection&gt; as the arguments.
	Answer the value returned by the most recently
	defined event handler action."

	^(self actionForEvent: anEventNameSymbol)
		evaluateWithArguments: anArgumentCollection</body>

<body package="Framework" selector="triggerEvent:">triggerEvent: anEventNameSymbol
	"Trigger the event named &lt;anEventNameSymbol&gt;. Answer the value returned
	by the most recently defined event handler action."

	^(self actionForEvent: anEventNameSymbol) evaluate</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>dependents access</category>

<body package="Framework" selector="expressInterestIn:for:sendBack:">expressInterestIn: anAspect for: anObject sendBack: aSelector 
	"Arrange for anObject to receive a message named aSelector when
	I signal that my attribute anAspect has changed."

	| dt deps |
	dt := DependencyTransformer new.
	dt
		setReceiver: anObject
		aspect: anAspect
		selector: aSelector.
	deps := self myDependents.
	(deps class == DependentsCollection
		ifTrue: [deps includes: dt]
		ifFalse: [deps = dt]) ifTrue:
		[^self].
	self addDependent: dt</body>

<body package="Framework" selector="addDependent:">addDependent: anObject
	"Add anObject as one of the receiver's dependents."

	self myDependents: (self myDependents asDependentsWith: anObject).
	^anObject</body>

<body package="Framework" selector="dependents">dependents 
	"Answer a Collection of the objects that are dependent on the
	receiver, that is, the objects that should be notified if the receiver changes."

	^self myDependents asDependentsAsCollection</body>

<body package="Framework" selector="dependencyTransformersDo:">dependencyTransformersDo: aBlock
	"Evaluate aBlock for each of the receiver's dependents which is a dependency transformer."
 
	| dependents |
	dependents := self myDependents.
	dependents == nil ifTrue: [^self].
	dependents class == DependencyTransformer ifTrue:
		[aBlock value: dependents. 
		^self].
	dependents class == DependentsCollection ifTrue:
		[dependents do:
			[:each |
			each class == DependencyTransformer ifTrue:
				[aBlock value: each]]]</body>

<body package="Framework" selector="suspendInterestsFor:while:">suspendInterestsFor: anObject while: aBlock 
	"Evaluate aBlock so that none of the changes signalled by the receiver
	during the block evaluation reach anObject. This method allows to temporarily
	suspend change notifications requested by #onChangeSend:to:. Note that only
	the interests existing when entering the block are suspended. If any are added
	after entering the block, they would be active."

	| suspended |
	suspended := OrderedCollection new.
	self dependencyTransformersDo: 
		[:each | 
		(each receiver == anObject and: [each isSuspended not]) ifTrue: 
			[each suspended: true.
			suspended add: each]].
	^aBlock ensure: [suspended do: [:each | each suspended: false]]</body>

<body package="Framework" selector="removeDependent:">removeDependent: anObject
	"Remove the argument, anObject, as one of the receiver's dependents."

	self myDependents: (self  myDependents asDependentsWithout: anObject).
	^anObject</body>

<body package="Framework" selector="retractAllInterestsFor:">retractAllInterestsFor: anObject
	"Remove all dependents that notify the argument object
	of a change to any aspect of the receiver."
 
	self dependencyTransformersDo:
		[:each |
		each receiver == anObject ifTrue:
			[self removeDependent: each]]</body>

<body package="Framework" selector="retractInterestIn:for:">retractInterestIn: anAspect for: anObject
	"Undo a send of expressInterestIn:for:sendBack:"
 
	self dependencyTransformersDo:
		[:each |
		(each matches: anObject forAspect: anAspect) ifTrue:
			[self removeDependent: each]]</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>relationships</category>

<body package="Framework" selector="elementLabel:">elementLabel: hints 
	"This method returns a visual component used to represent myself in a 
	browser graph. The default is to return a Label with my string key"

	^Label with: (self stringKey: hints)
		attributes: (TextAttributes styleNamed: #systemDefault)</body>

<body package="Framework" selector="sortKey">sortKey
	"Returns a string used for sorting elements in a browser. By default returns the string key"

	^self stringKey: #(sort)</body>

<body package="Framework" selector="stringKey:">stringKey: hints 
	"A string used to represent myself in browsers, for example in a menu. The 
	default is to use my displayString"

	^self displayString</body>

<body package="Framework" selector="relatedBy:">relatedBy: token
	token == #isInstanceOfRel ifTrue: [^IdentitySet with: self class].
	^IdentitySet new</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>controlling</category>

<body package="Framework" selector="ifNil:ifNotNil:">ifNil: nilBlock ifNotNil: notNilBlock
	"If the receiver is not nil, answer the evaluation of aBlock (with the receiver as
	 its argument if it takes one), otherwise answer nil.
	 UndefinedObject redefines this to answer the evaluation of nilBlock, and hence
	 since here the receiver is not nil answer the evaluation of notNilBlock."

	^0 == notNilBlock numArgs
		ifTrue: [notNilBlock value]
		ifFalse: [notNilBlock value: self]</body>

<body package="Framework" selector="ifNotNil:ifNil:">ifNotNil: notNilBlock ifNil: nilBlock
	"If the receiver is not nil, answer the evaluation of notNilBlock (with the
	 receiver as its argument if it takes one), otherwise answer the evaluation
	 of nilBlock.  UndefinedObject redefines this to answer the evaluation of nilBlock,
	 and hence since here the receiver is not nil answer the evaluation of notNilBlock."

	^0 == notNilBlock numArgs
		ifTrue: [notNilBlock value]
		ifFalse: [notNilBlock value: self]</body>

<body package="Framework" selector="ifNotNil:">ifNotNil: aBlock
	"If the receiver is not nil, answer the evaluation of aBlock (with the receiver as
	 its argument if it takes one), otherwise answer nil.  Since the receiver is not nil,
	 answer aBlock's evaluation.  Passing the receiver to aBlock is handy for idioms
	 such as
		self toolBarSpec ifNotNil: [:spec | ...].
	UndefinedObject reimplements this to not evaluate aBlock."

	^0 == aBlock numArgs
		ifTrue: [aBlock value]
		ifFalse: [aBlock value: self]</body>

<body package="Framework" selector="ifNil:">ifNil: aBlock
	"Return the receiver if it is not nil, or evaluate the block
	and return the result if the receiver is nil."

	^self</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>private</category>

<body package="Framework" selector="handleFailedBecome:">handleFailedBecome: otherObject 
	"Called if the primBecome: primitive fails. This primitive can fail for
	one of the following reasons: 
	1. Either object is immutable (which includes immediate objects)
	2. Either object is a MethodContext 
	3. Either object is a BlockContext 
	4. If there is insufficient memory to perform the become. 
	In the first three cases, raise an error. In the latter case, attempt to 
	make space and try again."

	| recClass argClass  bytesInOop om overheadBytes recBytes argBytes |
	(self isImmutable
	or: [otherObject isImmutable]) ifTrue:
		[^self error: (#cannotBecomeObject &lt;&lt; #dialogs &gt;&gt; 'cannot use become: on immutable objects')].
	((recClass := self class) == MethodContext
	 or: [(argClass := otherObject class) == MethodContext]) ifTrue:
		[^self error: (#cannotBecomeMethod &lt;&lt; #dialogs &gt;&gt; 'cannot use become: on a MethodContext')].
	(recClass == BlockContext or: [argClass == BlockContext]) ifTrue:
		[^self error: (#cannotBecomeBlock &lt;&lt; #dialogs &gt;&gt; 'cannot use become: on a BlockContext')].

	om := ObjectMemory current.
	bytesInOop := om bytesPerOOP.
	overheadBytes := om bytesPerOTE + bytesInOop.	"Includes size-overflow field"
	recBytes := recClass isBits
					ifTrue: [self basicSize]
					ifFalse: [(self basicSize + recClass instSize) * bytesInOop].
	argBytes := argClass isBits
					ifTrue: [otherObject basicSize]
					ifFalse: [(otherObject basicSize + argClass instSize) * bytesInOop].
	ObjectMemory makeSpaceFor: overheadBytes + recBytes + overheadBytes + argBytes.
	^self becomeNoRetry: otherObject</body>

<body package="Framework" selector="copyToHeap:">copyToHeap: mallocSelector
	"Copy the receiver to the external heap.  The argument is a method selector that accepts one argument and determines how to allocate data for the receiver -- it is typically one of #malloc: or #malloc16:.  The selector's argument is the number of objects of the receiver's baseCType to allocate.  Answer a pointer to the data.  If the allocation fails a primitive failed signal is raised."

	| aPointer |
	aPointer := self baseCType perform: mallocSelector with: 1.
	aPointer contents: self.
	^aPointer</body>

<body package="Framework" selector="whileMutableDo:">whileMutableDo: aBlock
	"Evaluate aBlock while the receiver is temporarily mutable.
	 Answer the result of evaluating aBlock."
	^self isImmutable
		ifTrue:
			[self isImmutable: false.
			 aBlock ensure: [self isImmutable: true]]
		ifFalse:
			[aBlock value]</body>

<body package="Framework" selector="species">species
	"Answer the preferred class for reconstructing the receiver.  For example, 
	collections create new collections whenever enumeration messages such as 
	collect: or select: are invoked.  The new kind of collection is determined by 
	the species of the original collection.  Species and class are not always the 
	same.  For example, the species of Interval is Array."

	^self class</body>

<body package="Framework" selector="nilFields">nilFields
	"Store nil into all pointer fields of the receiver."

	self class isPointers ifFalse: [^self].
	1 to: self basicSize do:
		[:index | self basicAt: index put: nil].
	1 to: self class instSize do:
		[:index | self instVarAt: index put: nil].</body>

<body package="Framework" selector="allStrongOwnersNoRetry:">allStrongOwnersNoRetry: placeInWeakContainer
	"Answer a collection of all objects that reference the receiver prior to the
	 invocation of this primitive. This collection will be a WeakArray if the
	 argument is true and an Array otherwise. Fails if we cannot allocate a
	 collection large enough to contain all such objects or if the argument
	 is not a boolean."

	&lt;primitive: 408 errorCode: error&gt;
	^ObjectMemory allocationFailedSignal
		raiseRequestWith: (MessageSend
				receiver: self
				selector: #allStrongOwnersWeakly:
				argument: placeInWeakContainer)</body>

<body package="Framework" selector="subscriptBoundsErrorFor:index:">subscriptBoundsErrorFor: selector index: index
	"Raise a signal indicating that an improper index was used as an index in a send of selector with index."

	^(SubscriptOutOfBoundsError receiver: self selector: selector index: index value: nil) raiseRequest</body>

<body package="Framework" selector="becomeNoRetry:">becomeNoRetry: otherObject 
	"Swap the instance data and appropriate header information of the receiver and the
	argument, otherObject. In other words, transform the receiver into the argument and
	vice-versa.  Fail if either object is an immediate or a MethodContext or a
	BlockContext or if there is insufficient memory to perform the become. Answer
	with the argument which is now the semantic equivalent of the object that formerly
	denoted the receiver."

	&lt;primitive: 72 errorCode: errCode&gt;
	^(errCode ~~ nil
	   and: [errCode name = #'no modification'])
		ifTrue: [self noModificationErrorFor: #becomeNoRetry: index: nil value: otherObject]
		ifFalse: [self primitiveFailed]</body>

<body package="Framework" selector="allOwnersNoRetry:">allOwnersNoRetry: placeInWeakContainer
	"Answer a collection of all objects that reference the receiver prior to the
	invocation of this primitive. This collection will be a WeakArray if the
	argument is true and an Array otherwise. Fails if we cannot allocate a
	collection large enough to contain all such objects or if the argument
	is not a boolean."

	&lt;primitive: 403 errorCode: error&gt;
	^ObjectMemory allocationFailedSignal
		raiseRequestWith: (MessageSend
				receiver: self
				selector: #allOwnersWeakly:
				argument: placeInWeakContainer)</body>

<body package="Framework" selector="myDependents:">myDependents: dependentsOrNil
	"Set the receiver's dependents to aDependentsCollection"

	dependentsOrNil == nil
		ifTrue: [DependentsFields removeKey: self ifAbsent: []]
		ifFalse: [DependentsFields at: self put: dependentsOrNil]</body>

<body package="Framework" selector="improperStoreError">improperStoreError
	"Create an error notification that an improper store was attempted."

	self error: (#errImproperIndex &lt;&lt; #dialogs &gt;&gt; 'Improper store into indexable object')</body>

<body package="Framework" selector="mustBeBoolean">mustBeBoolean
	"Catches attempts to test truth of non-Booleans.  This message is sent from the VM."

	self notify: (#nonBoolReceiver &lt;&lt; #dialogs &gt;&gt; 'NonBoolean receiver--proceed for truth.').
	^true</body>

<body package="Framework" selector="breakDependents">breakDependents
	"Deallocate the soft field for the receiver's dependents."

	self myDependents: nil</body>

<body package="Framework" selector="myDependents">myDependents
	"Answer the receiver's dependents or nil."

	^DependentsFields at: self ifAbsent: [nil]</body>

<body package="Framework" selector="nonIntegerIndexError:">nonIntegerIndexError: index
	"Raise a signal indicating that an improper object was used as an index."

	^Object nonIntegerIndexSignal raiseWith: index</body>

<body package="Framework" selector="subscriptBoundsErrorFor:index:value:">subscriptBoundsErrorFor: selector index: index value: aValue
	"Raise a signal indicating that an improper index was used as an index in a send of selector with index and aValue."

	^(SubscriptOutOfBoundsError receiver: self selector: selector index: index value: aValue) raiseRequest</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>error handling</category>

<body package="Framework" selector="commentOnly">commentOnly
	"This message sets up a framework for the behavior of the class' subclasses.
	Raise a signal indicates that the subclass should have implemented this message."

	^self error: (#commentOnly &lt;&lt; #dialogs &gt;&gt; 'comment only')</body>

<body package="Framework" selector="errorSignal">errorSignal
	"Answer the Signal used for miscellaneous errors
	(self error:)."
	^self class errorSignal</body>

<body package="Framework" selector="subclassResponsibility">subclassResponsibility
	"This message sets up a framework for the behavior of the class' subclasses.
	Raise a signal indicates that the subclass should have implemented this message."

	^Object subclassResponsibilitySignal 
				raiseErrorString: (#errSubclassResponsibility &lt;&lt; #dialogs &gt;&gt; 'My subclass should have overridden one of my messages.')</body>

<body package="Framework" selector="noModificationErrorFor:index:value:">noModificationErrorFor: selector index: index value: value
	^(NoModificationError receiver: self selector: selector index: index value: value) raiseRequest</body>

<body package="Framework" selector="doesNotUnderstand:">doesNotUnderstand: aMessage 
	"The default behavior is to create a Notifier containing the 
	appropriate message and to allow the user to open a Debugger. 
	Subclasses can override this message in order to modify this behavior."

	| excpt resumeValue |
	excpt := Object messageNotUnderstoodSignal newException.
	excpt
		searchFrom: thisContext;
		parameter: aMessage;
		messageText: [| selectorString |
			selectorString :=
				[aMessage selector printString]
					on: Error
					do: [:ex |
						ex return:
							(#errSelectorNotPrintable &lt;&lt; #dialogs &gt;&gt; '** unprintable selector **')
							expandMacros asString].
			(#errNotUnderstood &lt;&lt; #dialogs &gt;&gt; 'Message not understood: &lt;1s&gt;')
				expandMacrosWith: selectorString];
		originator: self;
		makeSureResumable.
	resumeValue := excpt raiseSignal.
	^excpt reachedDefaultHandler
		ifTrue: [self perform: aMessage selector withArguments: aMessage arguments]
		ifFalse: [resumeValue]

	"3 zork."</body>

<body package="Framework" selector="hardHalt">hardHalt
	"This is a simple message to use for inserting breakpoints during debugging.
	 Unlike halt the notifier is opened directly without raising a signal."

	Notifier
		openContext: thisContext sender
		label: (#errHardHalt &lt;&lt; #dialogs &gt;&gt; 'Hard halt encountered.')
		proceedable: true

	"nil hardHalt."</body>

<body package="Framework" selector="primitiveFailed">primitiveFailed
	"Announce that a primitive has failed and there is no appropriate 
	Smalltalk code to run."

	self error: (#errPrimitiveFailed &lt;&lt; #dialogs &gt;&gt; 'a primitive has failed')</body>

<body package="Framework" selector="breakOn:label:">breakOn: aContext label: aString
	"This is a simple message to use for inserting breakpoints during debugging.
	The debugger is opened by raising a signal."

	BreakInterrupt
		raiseRequestWith: aContext
		errorString: aString</body>

<body package="Framework" selector="attemptToAssign:withIndex:">attemptToAssign: aValue withIndex: index
	^self noModificationErrorFor: #instVarAt:put: index: index value: aValue</body>

<body package="Framework" selector="halt">halt
	"This is a simple message to use for inserting breakpoints during debugging.
	The debugger is opened by raising a signal. This gives a chance to restore
	invariants related to multiple processes."

	Object haltSignal 
				raiseRequestWith: thisContext
				errorString: (#errHalt &lt;&lt; #dialogs &gt;&gt; 'Halt encountered.')

	"nil halt."</body>

<body package="Framework" selector="shouldNotImplement">shouldNotImplement
	"Announce that although the receiver inherits this message, it
	should not implement it."

	self error: (#errNotAppropriate &lt;&lt; #dialogs &gt;&gt; 'This message is not appropriate for this object')</body>

<body package="Framework" selector="halt:">halt: aString 
	"This message can be used for inserting breakpoints during debugging.
	It creates and schedules a Debugger with the argument, aString, as 
	the label. The debugger is opened by raising a signal. This gives a chance
	to restore invariants related to multiple processes."

	Object haltSignal 
				raiseRequestWith: thisContext
				errorString: aString

	"nil halt: 'Test of halt:.'."</body>

<body package="Framework" selector="error:">error: aStringOrMessage
	"Raise a non-proceedable signal that indicates an error with the argument as the message.
	This additional message is the one a subclass should override in order to
	change the handling of errors.
	Remove any trailing spaces from aString, since we know we don't
	want other strings appended to this one."

	| lastNonSpace aString|
	aString :=  aStringOrMessage asString.
	lastNonSpace := aString findLast: [:ch | ch ~= Character space].
	^self errorSignal raiseErrorString: (aString copyFrom: 1 to: lastNonSpace)

	"nil error: 'error message'."</body>

<body package="Framework" selector="notify:">notify: aString
	"Raise a proceedable signal with the argument as the message in order
	to request confirmation before a process can proceed."

	^Object notifySignal
				raiseRequestWith: thisContext
				errorString: aString

	"nil notify: 'confirmation message'."</body>

<body package="Framework" selector="messageNotUnderstoodSignal">messageNotUnderstoodSignal
	"Return the signal to be raised when the receiver doesn't understand 
	a message"

	^self class messageNotUnderstoodSignal</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>vw5i release support</category>

<body package="Framework" selector="notYetImplemented">notYetImplemented
	"marker for code that needs implementing before release"</body>

<body package="Framework" selector="isObsoleteProtocol">isObsoleteProtocol
	"marks obsolete stuff"</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>binary storage</category>

<body package="Framework" selector="isCodeReaderEquivalentTo:">isCodeReaderEquivalentTo: anObject
	^self class == anObject class
	 and: [self = anObject]</body>

<body package="Framework" selector="postLoad">postLoad

	^true</body>

<body package="Framework" selector="readGeneralStructureOn:">readGeneralStructureOn: aBinaryStorageReader

	aBinaryStorageReader fillInObject: self</body>

<body package="Framework" selector="postReadGeneralStructureOn:">postReadGeneralStructureOn: aBinaryStorageReader

	"no op"</body>

<body package="Framework" selector="representBinaryOn:">representBinaryOn: binWriter
	" By default, objects do nothing special
	to represent themselves in binary form. "

	^nil</body>

<body package="Framework" selector="storeGeneralAllocationOn:">storeGeneralAllocationOn: aBinaryStorageWriter

	self class isVariable ifTrue: [aBinaryStorageWriter storeLength: self basicSize].</body>

<body package="Framework" selector="isCodeReaderEquivalentReferenceTo:">isCodeReaderEquivalentReferenceTo: anObject
	^self class == anObject class
	and: [self = anObject]</body>

<body package="Framework" selector="isCodeReaderEquivalentTo:within:and:">isCodeReaderEquivalentTo: anObject within: firstMethod and: secondMethod
	^self isCodeReaderEquivalentTo: anObject</body>

<body package="Framework" selector="binaryRepresentationVersion">binaryRepresentationVersion
	" Answer a version identification for
	the particular representation that
	the receiver uses for representBinaryOn:.
	(The version identification need not
	be an integer, or even a number.)
	The default version identification
	for the initial BOSS representation is nil. "

	^nil</body>

<body package="Framework" selector="storeGeneralStructureOn:">storeGeneralStructureOn: aBinaryStorageWriter

	| oclass |
	oclass := self class.
	1 to: oclass instSize do: [:i | aBinaryStorageWriter trace: (self instVarAt: i)].
	oclass isVariable
		ifTrue: [1 to: self basicSize do: [:i | aBinaryStorageWriter trace: (self basicAt: i)]]</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>testing</category>

<body package="Framework" selector="isSymbol">isSymbol
	"Coerce Symbols to true and everything else to false.  Symbol
	overrides with ^true."

	^false</body>

<body package="Framework" selector="respondsToArithmetic">respondsToArithmetic
	"Answer whether the object responds to the numeric (#+, #-, #*, #/)
	protocol as defined in the class ArithmeticValue"

	^false</body>

<body package="Framework" selector="isNameSpace">isNameSpace
	"Is this a NameSpace?"

	^false</body>

<body package="Framework" selector="isSequenceable">isSequenceable
	"Answer true for SequenceableCollections and everything else to false.
	SequenceableCollection overrides with ^true"

	^false</body>

<body package="Framework" selector="isProtocolAdaptor">isProtocolAdaptor

	^false</body>

<body package="Framework" selector="isCharStyleCacheable">isCharStyleCacheable
	^true</body>

<body package="Framework" selector="isImmutable">isImmutable
	"Answer if the receiver is immutable.  This is always true of immediates.
	 Cannot fail."
	&lt;primitive: 1063&gt;
	^false</body>

<body package="Framework" selector="isInteger">isInteger
	"Coerces Integers to true and everything else to false.  Integer
	overrides with ^true"

	^false</body>

<body package="Framework" selector="isString">isString
	"Coerce String to true and everything else to false.  String
	overrides with ^true."

	^false</body>

<body package="Framework" selector="notNil">notNil
	"Coerce nil to false and everything else to true.  UndefinedObject 
	overrides with ^false"

	^true</body>

<body package="Framework" selector="refersToLiteral:">refersToLiteral: anObject
	"The receiver is a literal in compiled code.
	Answer whether the receiver is a reference to
	anObject.  Note that this implementation
	is only correct for non-Collections."

	^self class == anObject class and: [self = anObject]</body>

<body package="Framework" selector="isDataModel">isDataModel
	"Is this a Bernstein data model?"

	^false</body>

<body package="Framework" selector="isCharacters">isCharacters
	"Coerce CharacterArray to true and everything else to false.  CharacterArray
	overrides with ^true."

	^false</body>

<body package="Framework" selector="isBlockContext">isBlockContext
	^false</body>

<body package="Framework" selector="isExceptionHandler">isExceptionHandler
	"Answer if the receiver responds to the #handles: and
	#accepts: messages as required by the exception-handling
	machinery."

	^false</body>

<body package="Framework" selector="isExceptionCreator">isExceptionCreator
	"Answer whether the receiver understands the behavior
	of an ExceptionCreator. This includes #raiseSignal,
	#new, as well as all the behavior of an ExceptionHandler,
	such as #handles: and #accepts. An ExceptionCreator
	can create objects (via #new) that conform to the behavior
	of SignalledExceptions."

	^false</body>

<body package="Framework" selector="supersedesAsTextEmphasis:">supersedesAsTextEmphasis: aTextEmphasis 
	"Answer whether the receiver, acting as a text emphasis, would be likely to 
	undo or replace the effects of aTextEmphasis, if the receiver were applied 
	after aTextEmphasis.  The standard definition is conservative, but not
	foolproof."

	^self = aTextEmphasis</body>

<body package="Framework" selector="isBindingReference">isBindingReference

	^false</body>

<body package="Framework" selector="_isCompilerErrorHandler">_isCompilerErrorHandler

	^false</body>

<body package="Framework" selector="allowsSelfDefinition">allowsSelfDefinition
	"Answer true if the object replies to the message #definition
	with a string that can be evaluated to reconstruct the receiver
	in a new environment."

	^false</body>

<body package="Framework" selector="isNil">isNil
	"Coerce nil to true and everything else to false.  UndefinedObject 
	overrides with ^true"

	^false</body>

<body package="Framework" selector="isError">isError

	^false</body>

<body package="Framework" selector="isImmediate">isImmediate
	"Answer true if this object has immediate representation."
	"Currently, SmallInteger and Character are represented as
	immediate (or zero-sized storage) objects."

	^self class hasImmediateInstances</body>

<body package="Framework" selector="_isBehaviorOrProxy">_isBehaviorOrProxy

	^false</body>

<body package="Framework" selector="isVariableBinding">isVariableBinding
	"Answer whether the receiver can play the role of a static
	variable.  At the least it must respond to the messages #value
	and #value:.  It should also respond to #key."

	^false</body>

<body package="Framework" selector="isOverride">isOverride
	"Answer true if the receiver represents an Overridden object."

	^false</body>

<body package="Framework" selector="isLikeNameSpace">isLikeNameSpace
	"Does this support the most basic NameSpace behavior,
	such as that supported by classes."

	^false</body>

<body package="Framework" selector="isSignalledException">isSignalledException
	"Answer whether the receiver conforms to the behavior of a
	signalled Exception. This means that within an exception handler,
	the receiver can be queried about what sort of exception it is,
	and may be sent messages like #pass, #resume, #retry, or
	#return, to indicate its disposition."

	^false</body>

<body package="Framework" selector="isBehavior">isBehavior
	"Answer whether the object can be the 'class' of another object"

	^false</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>fileIn/Out</category>

<body package="Framework" selector="reverseByteOrder">reverseByteOrder
	" If the receiver is a byte-type object
	whose bytes need to be rearranged when
	moving from a big-endian platform to a
	little-endian platform or vice versa,
	do the rearrangement (in place).
	The default is to do nothing. "</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>comparing</category>

<body package="Framework" selector="~~">~~ anObject 
	"Answer true if the receiver and the argument are not the same object 
	(have the same object pointer) and false otherwise."

	&lt;primitive: 109&gt;
	^(self == anObject) not</body>

<body package="Framework" selector="hash">hash
	"Answer a SmallInteger that is equal to the hash value of 
	any object that is equal to (=) the receiver. 
	When two objects are not =, their hash values may or may not be the same.
	The hash value may change based on the receiver's contents."

	"If hash is redefined in a subclass, it may also be necessary to
	redefine the = method to maintain the semantics described above.

	Primitive 75 fails for immediate objects, so immediate subclasses such as
	SmallInteger must override this method."

	&lt;primitive: 75&gt;
	self primitiveFailed</body>

<body package="Framework" selector="identityHash">identityHash
	"Answer a SmallInteger that is equal to the identityHash of 
	any object that is == to the receiver. 
	When two objects are not ==, their identityHash values may or may not 
	be the same. The identityHash value does not change across the life
	of the object."

	"If identityHash is redefined in a subclass, the new implementation must
	answer the same identityHash when two objects are ==. Changing the
	== method has no effect on the execution machinery -- in effect, you
	cannot redefine == to echo a changed implementation of identityHash.

	Primitive 75 fails for immediate objects, so immediate subclasses such as
	SmallInteger must override this method."

	&lt;primitive: 75&gt;
	self primitiveFailed</body>

<body package="Framework" selector="=">= anObject 
	"Answer whether the receiver and the argument represent the same object.
	If = is redefined in any subclass, consider also redefining the message hash."

	^self == anObject</body>

<body package="Framework" selector="isEqualTo:within:and:">isEqualTo: anObject within: firstMethod and: secondMethod
	"Answer if the receiver is equal to anObject within a method.
	 Classes must agree for code to be semantically equivalent.
	 This method is used to compare CompiledCode instances which
	 need to compare a potentially circular structure.  The additional
	 arguments allow the potentially infinite recursion to terminate."

	^self class == anObject class
	and: [self = anObject]</body>

<body package="Framework" selector="~=">~= anObject 
	"Answer whether the receiver and the argument do not represent the same 
	object."

	^self = anObject == false</body>

<body package="Framework" selector="==">== anObject
	"Answer true if the receiver and the argument are the same object (have the same
	object pointer) and false otherwise.  Do not redefine the message == in any
	other class!  No Lookup."

	&lt;primitive: 110&gt;
	self primitiveFailed</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>class membership</category>

<body package="Framework" selector="isMemberOf:">isMemberOf: aClass 
	"Answer a Boolean as to whether the receiver is an instance of the class, aClass."

	^self class == aClass</body>

<body package="Framework" selector="isKindOf:">isKindOf: aClass 
	"Answer a Boolean as to whether the class, aClass, is a superclass or class of
	the receiver."

	^self class includesBehavior: aClass</body>

<body package="Framework" selector="changeClassToThatOf:">changeClassToThatOf: anObject 
	"Change the class of the receiver to the class of anObject. Fail if either the
	 receiver or anObject is immutable (which includes immediates), 
	 or if none of the following cases holds:
	1. The receiver and anObject are both byte-type.
	2. The receiver is any pointer-type object, anObject is a
		non-indexable pointer-type object, and the storage sizes (i.e. the
		number of named instance variables plus the number of indexed
		instance variables, if any) of the two objects are the same.
	3. The receiver is any pointer-type object, anObject is an indexable
		pointer-type object, and the storage size of the receiver is at least
		as large as the number of named instance variables of anObject.
	Compare with the adoptInstance: primitive."

	&lt;primitive: 535 errorCode: errCode&gt;
	^(errCode ~~ nil
	   and: [errCode name = #'no modification'])
		ifTrue: [self noModificationErrorFor: #changeClassToThatOf: index: nil value: anObject]
		ifFalse: [self primitiveFailed]</body>

<body package="Framework" selector="respondsTo:">respondsTo: aSymbol 
	"Answer a Boolean as to whether the method dictionary of the receiver's class 
	contains aSymbol as a message selector."

	^self class canUnderstand: aSymbol</body>

<body package="Framework" selector="changeClassTo:">changeClassTo: aClass
	"Change the class of the receiver to aClass."

	aClass adoptInstance: self.
	^self</body>

<body package="Framework" selector="class">class
	"Answer the object which is the receiver's class."

	&lt;primitive: 111&gt;
	self primitiveFailed</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>tracing</category>

<body package="Framework" selector="traceWalkFrom:">traceWalkFrom: aTracer

	| oclass |
	oclass := self class.
	oclass isBits ifTrue: [^self].
	1 to: oclass instSize do: [:i | aTracer trace: (self instVarAt: i)].
	oclass isVariable
		ifTrue: [1 to: self basicSize do: [:i | aTracer trace: (self basicAt: i)]]</body>

<body package="Framework" selector="traceFrom:">traceFrom: aTracer

	aTracer doTraceOfObject: self</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>message handling</category>

<body package="Framework" selector="perform:with:with:with:">perform: aSymbol with: firstObject with: secondObject with: thirdObject
	"Send the receiver the keyword message indicated by the arguments. The first
	 argument is the selector of the message.
	 Invoke messageNotUnderstood: if the selector is not understood by the receiver.
	 Fail the primitive if the looked-up method does not expect three arguments."

	&lt;primitive: 514&gt;
	^self perform: aSymbol withArguments: (Array
			with: firstObject
			with: secondObject
			with: thirdObject)</body>

<body package="Framework" selector="perform:">perform: aSymbol
	"Send the receiver the unary message indicated by the argument. The argument is
	 the selector of the message.
	 Invoke messageNotUnderstood: if the selector is not understood by the receiver.
	 Fail the primitive if the looked-up method does not expect zero arguments."

	&lt;primitive: 511&gt;
	^self perform: aSymbol withArguments: (Array new: 0)</body>

<body package="Framework" selector="perform:withArguments:">perform: selector withArguments: anArray
	"Send the receiver the message indicated by the arguments. The argument
	 selector is the selector of the message. The arguments of the message are
	 the elements of anArray.
	 Invoke messageNotUnderstood: if the selector is not understood by the receiver.
	 Fail the primitive if anArray is not an Array with the same number of elements as
	 the number of arguments expected by the looked-up method."

	&lt;primitive: 510&gt;
	^self primitiveFailed</body>

<body package="Framework" selector="perform:with:with:">perform: aSymbol with: firstObject with: secondObject
	"Send the receiver the keyword message indicated by the arguments. The first
	 argument is the selector of the message. The other arguments are the
	 arguments of the message to be sent.
	 Invoke messageNotUnderstood: if the selector is not understood by the receiver.
	 Fail the primitive if the looked-up method does not expect two arguments."

	&lt;primitive: 513&gt;
	^self perform: aSymbol withArguments: (Array with: firstObject with: secondObject)</body>

<body package="Framework" selector="performMethod:arguments:">performMethod: method arguments: args
	"Evaluate the first argument, a CompiledMethod, with the receiver as
	receiver.  The other argument is the list of arguments of the method.
	The number of arguments expected by the method must match the size of the
	Array."

	^method valueWithReceiver: self arguments: args</body>

<body package="Framework" selector="performMethod:with:">performMethod: method with: arg1
	"Evaluate the first argument, a CompiledMethod, with the receiver as
	receiver.  The other argument is the argument of the method. The method
	must be expecting one argument."

	^self performMethod: method arguments: (Array with: arg1)</body>

<body package="Framework" selector="performMethod:with:with:with:">performMethod: method with: arg1 with: arg2 with: arg3
	"Evaluate the first argument, a CompiledMethod, with the receiver as
	receiver.  The other arguments are the arguments of the method. The method
	must be expecting three arguments."

	^self performMethod: method arguments: (Array with: arg1 with: arg2 with: arg3)</body>

<body package="Framework" selector="performMethod:">performMethod: method
	"Evaluate the first argument, a CompiledMethod, with the receiver as
	receiver.  The method must be expecting no arguments."

	^self performMethod: method arguments: #()</body>

<body package="Framework" selector="performMethod:with:with:">performMethod: method with: arg1 with: arg2
	"Evaluate the first argument, a CompiledMethod, with the receiver as
	receiver.  The other arguments are the arguments of the method. The method
	must be expecting two arguments."

	^self performMethod: method arguments: (Array with: arg1 with: arg2)</body>

<body package="Framework" selector="perform:with:">perform: aSymbol with: anObject 
	"Send the receiver the keyword or binary message indicated by the 
	 arguments. The first argument is the selector of the message. The other 
	 argument is the argument of the message to be sent.
	 Invoke messageNotUnderstood: if the selector is not understood by the receiver.
	 Fail the primitive if the looked-up method does not expect one argument."

	&lt;primitive: 512&gt;
	^self perform: aSymbol withArguments: (Array with: anObject)</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>finalization</category>

<body package="Framework" selector="finalize">finalize
	"Finalize the object. This message is sent by WeakDictionary.
	The default is to do nothing. Subclasses might want to override 
	this method."

	^self</body>

<body package="Framework" selector="executor">executor
	"Answer an object to execute the finalization for the receiver.
	Subclasses might want to override this method."

	^self shallowCopy</body>

<body package="Framework" selector="mourn">mourn
	"This is a dummy finalization method provided to prevent the system locking up
	 when classes are changed from being weak or ephemeral to strong or vice versa."</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>tt-utilities</category>

<body package="Framework" selector="textRepresentation">textRepresentation
	^self printString.</body>

<body package="Framework" selector="needsMoreWork">needsMoreWork
	"Senders of this method require redesign.."</body>

<body package="Framework" selector="debugVersionOnly">debugVersionOnly
	"Senders of this method should be present
	in the development version only."</body>

<body package="Framework" selector="defunct">defunct
	"Place 'self defunct' at the beginning of methods which shouldn't be called any more."

	self halt: 'Defunct method called.'</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>Camp Smalltalk</category>

<body package="Framework" selector="sunitAddDependent:">sunitAddDependent: anObject
	self addDependent: anObject</body>

<body package="Framework" selector="sunitChanged:">sunitChanged: aspect
	self changed: aspect</body>

<body package="Framework" selector="sunitRemoveDependent:">sunitRemoveDependent: anObject
	self removeDependent: anObject</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>event accessing</category>

<body package="Framework" selector="removeAction:forEvent:">removeAction: anAction forEvent: anEventNameSymbol
	"Remove the first occurrence of &lt;anAction&gt; from the list of
	actions for the event named &lt;anEventNameSymbol&gt;."

	self
		removeActionsSatisfying: [:action | action = anAction]
		forEvent: anEventNameSymbol</body>

<body package="Framework" selector="removeAllActionsWithReceiver:">removeAllActionsWithReceiver: anObject
	"Remove all actions for all events in the receiver's event table
	that have &lt;anObject&gt; as their receiver."

	self eventTable keys do:
		[:event |
		self removeActionsWithReceiver: anObject forEvent: event]</body>

<body package="Framework" selector="hasActionForEvent:">hasActionForEvent: anEventNameSymbol
	"Answer whether the receiver has an action registered for the
	event named &lt;anEventNameSymbol&gt;."

	self myEventTable == nil ifTrue: [^false].
	^self eventTable includesKey: anEventNameSymbol asSymbol</body>

<body package="Framework" selector="eventsHandled">eventsHandled
	"Answer the events for which there are actions
	registered in the receiver's event table."

	^self eventTable keys</body>

<body package="Framework" selector="actionForEvent:">actionForEvent: anEventNameSymbol
	"Answer the action to evaluate when the event
	named &lt;anEventNameSymbol&gt; is triggered by the receiver."

	self myEventTable == nil ifTrue: [^nil].
	^self eventTable
		at: anEventNameSymbol asSymbol
		ifAbsent: [nil]</body>

<body package="Framework" selector="removeActionsSatisfying:forEvent:">removeActionsSatisfying: aBlock forEvent: anEventNameSymbol
	"Remove all actions for the event &lt;anEventNameSymbol&gt; that satisfy &lt;aBlock&gt;."

	self
		setActionList: ((self actionListForEvent: anEventNameSymbol) reject: aBlock)
		forEvent: anEventNameSymbol</body>

<body package="Framework" selector="actionListForEvent:">actionListForEvent: anEventNameSymbol
	"Answer an editable list of actions that get evaluated
	when the event named &lt;anEventNameSymbol&gt; is triggered."

	self myEventTable == nil ifTrue: [^ActionSequence new].
	^(self eventTable
		at: anEventNameSymbol asSymbol
		ifAbsent: [ActionSequence new])
			asActionSequence</body>

<body package="Framework" selector="canTriggerEvent:">canTriggerEvent: anEventNameSymbol
	"Answer &lt;true&gt; if the receiver can trigger an event named &lt;anEventNameSymbol&gt;."

	^self class canTriggerEvent: anEventNameSymbol</body>

<body package="Framework" selector="removeActionsWithReceiver:forEvent:">removeActionsWithReceiver: anObject forEvent: anEventNameSymbol
	"Remove all actions for the event named &lt;anEventNameSymbol&gt;
	in the receiver's event table which have &lt;anObject&gt;
	as their receiver."

	self
		removeActionsSatisfying:
			[ :anAction |
			(anAction respondsTo: #receiver)
				and: [anAction receiver == anObject]]
		forEvent: anEventNameSymbol</body>

<body package="Framework" selector="removeActionsForEvent:">removeActionsForEvent: anEventNameSymbol
	"Remove all actions for the event named &lt;anEventNameSymbol&gt;."

	| table |
	self myEventTable == nil ifTrue: [^self].
	table := self eventTable.
	table removeKey: anEventNameSymbol asSymbol ifAbsent: [].
	table isEmpty
		ifTrue: [self releaseEventTable]</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>private-events</category>

<body package="Framework" selector="myEventTable">myEventTable
	"Private - answer a Dictionary mapping event names to actions
	for the receiver, or nil if there is none."

	^EventHandlers at: self ifAbsent: nil</body>

<body package="Framework" selector="errorBadEvent:">errorBadEvent: eventName
	"Private - signal an unsupported event."

	^self error: ((#eventNotSupported &lt;&lt; #dialogs &gt;&gt; 'Event not supported: &lt;1s&gt;') expandMacrosWith: eventName)</body>

<body package="Framework" selector="myEventTable:">myEventTable: newTable
	"Private - answer a Dictionary mapping event names to actions
	for the receiver, or nil if there is none."

	newTable == nil
		ifTrue: [EventHandlers removeKey: self ifAbsent: nil]
		ifFalse: [EventHandlers at: self put: newTable]</body>

<body package="Framework" selector="errorBadSelector:">errorBadSelector: badSelector
	"Private - indicate that the message selector is not valid."

	self error: ((#errBadSelector &lt;&lt; #dialogs &gt;&gt; 'Message selector &lt;1p&gt; must be a Symbol.') expandMacrosWith: badSelector)</body>

<body package="Framework" selector="releaseEventTable">releaseEventTable
	"Private - break all connections to event handlers."

	self myEventTable: nil</body>

<body package="Framework" selector="setActionList:forEvent:">setActionList: actionSequence forEvent: eventName
	"Set the list of actions that get evaluated when
	the event named &lt;eventName&gt; is triggered by
	the receiver to &lt;actionSequence&gt;."

	| action |
	action := actionSequence asMinimalRepresentation.
	action isNil
		ifTrue: [self removeActionsForEvent: eventName]
		ifFalse:
			[self eventTableForEdit
				at: eventName asSymbol
				put: action]</body>

<body package="Framework" selector="eventTable">eventTable
	"Private - answer a Dictionary mapping event names to actions
	for the receiver."

	| eventHandlerTable |
	eventHandlerTable := self myEventTable.
	^eventHandlerTable isNil
		ifTrue: [self eventTableCreate]
		ifFalse: [eventHandlerTable]</body>

<body package="Framework" selector="eventTableCreate">eventTableCreate
	"Private - answer an empty event dictionary for use as an event table."

	^IdentityDictionary new: 2</body>

<body package="Framework" selector="eventTableForEdit">eventTableForEdit
	"Private - answer the table of event handlers for the receiver.
	Allocate if necessary so that updates can be stored."

	| eventHandlerTable |
	eventHandlerTable := self myEventTable.
	^eventHandlerTable isNil
		ifTrue: 
			[eventHandlerTable := self eventTableCreate.
			self myEventTable: eventHandlerTable.
			eventHandlerTable]
		ifFalse: [eventHandlerTable]</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>system primitives</category>

<body package="Framework" selector="allOwners">allOwners
	"Answer an Array of all objects that reference the receiver prior to the
	invocation of this method."

	^self allOwnersWeakly: false</body>

<body package="Framework" selector="beMutable">beMutable
	"Set the receiver to be mutable"
	self isImmutable: false.
	^self</body>

<body package="Framework" selector="instVarAt:">instVarAt: index
	"Answer with a fixed variable in an object.  The numbering of the variables
	corresponds to the named instance variables.  Fail if the index is not an
	Integer or is not the index of a fixed variable."

	&lt;primitive: 73&gt;
	"Access beyond fixed variables."
	^self basicAt: index - self class instSize</body>

<body package="Framework" selector="instVarAt:put:">instVarAt: anInteger put: anObject
	"Store a value into a fixed variable in the receiver.  The numbering of
	 the variables corresponds to the named instance variables.  Fail if
	 the index is not an Integer or is not the index of a fixed variable, or
	 if the receiver is immutable. Answer with the value stored as the result.
	 (Using this message violates the principle that each object has sovereign
	 control over the storing of values into its instance variables.)."

	&lt;primitive: 74&gt;
	self isImmutable ifTrue:
		[^self noModificationErrorFor: #instVarAt:put: index: anInteger value: anObject].
	"Access beyond fixed fields"
	^self basicAt: anInteger - self class instSize put: anObject</body>

<body package="Framework" selector="oneWayBecome:">oneWayBecome: anObject
	"Replace all references to the receiver by references to anObject, effectively making
	 the receiver become anObject, but not making anObject become the receiver."

	| owners tc ownerIndex |
	&lt;primitive: 108&gt;
	ownerIndex := (owners := self allOwnersWeakly: true) size.
	tc := thisContext.
	[ownerIndex &gt; 0] whileTrue:
		[| owner |
		owner := owners at: ownerIndex.
		ownerIndex := ownerIndex - 1.
		tc ~~ owner ifTrue:
			["In-lined owner replaceReferencesTo: self with: anObject for speed."
			| index |
			index := tc _objectSize: owner.
			[index &gt; 0] whileTrue:
				[self == (tc _object: owner at: index) ifTrue:
					[tc _object: owner at: index put: anObject].
				index := index - 1].
			index := (tc _objectClass: owner) instSize.
			[index &gt; 0] whileTrue:
				[(self == (tc _object: owner instVarAt: index)) ifTrue:
					[tc _object: owner instVarAt: index put: anObject].
				index := index - 1]]]</body>

<body package="Framework" selector="beImmutable">beImmutable
	"Set the receiver to be immutable"
	self isImmutable: true.
	^self</body>

<body package="Framework" selector="ownerAfter:">ownerAfter: anObject
	"Answer the next object after anObject which points at self (in some hidden ordering).
	 This primitive can be used with 'firstOwner' to enumerate all the objects which point at self.
	 For example see SystemDictionary&gt;quickPointersTo:do:."

	&lt;primitive: 198&gt;
	^nil</body>

<body package="Framework" selector="become:">become: otherObject 
	" Swap the state of the receiver with that of anObject.
	Be careful to preserve dependents. "

	| mine its myEvent itsEvent |
	mine := self myDependents.
	its := otherObject myDependents.
	myEvent := self myEventTable.
	itsEvent := otherObject myEventTable.
	self primBecome: otherObject.
	" Don't bother if neither object has dependents. "
	mine == its ifFalse:
		[self myDependents: mine.
		otherObject myDependents: its].
	myEvent == itsEvent ifFalse:
		[self myEventTable: myEvent.
		otherObject myEventTable: itsEvent].
	^self</body>

<body package="Framework" selector="nextInstance">nextInstance
	"Answer with the next instance after the receiver in the enumeration
	 of all instances of this class.  Fail if all instances have been
	enumerated."

	&lt;primitive: 78&gt;
	^nil</body>

<body package="Framework" selector="allStrongOwners">allStrongOwners
	"Answer an Array of all objects that reference the receiver strongly prior to the
	invocation of this method."

	^self allStrongOwnersWeakly: false</body>

<body package="Framework" selector="allOwnersWeakly:">allOwnersWeakly: placeInWeakContainer
	"Answer a collection of all objects that reference the receiver prior to the
	invocation of this primitive. This collection will be a WeakArray if the
	argument is true and an Array otherwise. Fails if we cannot allocate a
	collection large enough to contain all such objects or if the argument
	is not a boolean."

	&lt;primitive: 403 errorCode: error&gt;
	error name = #'bad argument'
		ifTrue: [^self error: (#errBooleanExpected &lt;&lt; #dialogs &gt;&gt; 'Boolean argument expected')].
	error name = #'allocation failed'
		ifTrue: 
			[error handleErrorFor: #oldSpace.
			^self allOwnersNoRetry: placeInWeakContainer].
	^self primitiveFailed</body>

<body package="Framework" selector="firstOwner">firstOwner
	"Answer some object which points at self.  This primitive can be used with 'ownerAfter: '
	 to enumerate all the objects which point at self.
	 For example see SystemDictionary&gt;quickPointersTo:do:."

	&lt;primitive: 197&gt;
	^nil</body>

<body package="Framework" selector="nextObject">nextObject
	"Answer with the next object following the receiver in
	the enumeration of all non-immediate objects. Fail if there is no such
	object or if the receiver is an immediate object. See ObjectMemory class
	someObject."

	&lt;primitive: 531&gt;
	^0</body>

<body package="Framework" selector="allStrongOwnersWeakly:">allStrongOwnersWeakly: placeInWeakContainer
	"Answer a collection of all objects that reference the receiver strongly
	 prior to the invocation of this primitive (i.e. exclude references from weak
	 indexable fields and ephemeron keys). This collection will be a WeakArray
	 if the argument is true and an Array otherwise. Fails if we cannot allocate a
	 collection large enough to contain all such objects or if the argument
	 is not a boolean."

	&lt;primitive: 408 errorCode: error&gt;
	error name = #'bad argument' ifTrue:
		[^self error: (#errBooleanExpected &lt;&lt; #dialogs &gt;&gt; 'Boolean argument expected')].
	error name = #'allocation failed' ifTrue: 
		[error handleErrorFor: #oldSpace.
		^self allStrongOwnersNoRetry: placeInWeakContainer].
	^self primitiveFailed</body>

<body package="Framework" selector="primBecome:">primBecome: otherObject 
	"Swap the instance data and appropriate header information of the receiver and the
	 argument, otherObject. In other words, transform the receiver into the argument and
	 vice-versa.  Fail if either object is an immediate or a MethodContext or a
	 BlockContext or if there is insufficient memory to perform the become, or if either
	 object is immutable. Answer with the argument which is now the semantic equivalent
	 of the object that formerly denoted the receiver."

	&lt;primitive: 72 errorCode: errCode&gt;
	^(errCode ~~ nil
	   and: [errCode name = #'no modification'])
		ifTrue: [self noModificationErrorFor: #primBecome: index: nil value: otherObject]
		ifFalse: [self handleFailedBecome: otherObject]</body>

<body package="Framework" selector="replaceReferencesTo:with:">replaceReferencesTo: firstObject with: secondObject
	"Replace all references to firstObject in the receiver by references to secondObject."

	| index |
	index := self basicSize.
	[index &gt; 0]
		whileTrue:
			[firstObject == (self basicAt: index)
				ifTrue: [self basicAt: index put: secondObject].
			index := index - 1].
	index := self class instSize.
	[index &gt; 0]
		whileTrue:
			[firstObject == (self instVarAt: index)
				ifTrue: [self instVarAt: index put: secondObject].
			index := index - 1]</body>

<body package="Framework" selector="isImmutable:">isImmutable: aBoolean
	"Set the receiver's immutability.   Answer if the receiver was
	 previously immutable.  Fail if the argument is not a boolean
	 or if the receiver is immediate and the argument is false."
	&lt;primitive: 1064 errorCode: error&gt;
	^self primitiveFailed</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>SLesson Base</category>

<body package="Framework" selector="flag:">flag: aSymbol

	"Used to place notes in the code."</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>accessing</category>

<body package="Framework" selector="basicSize">basicSize
	"Answer the number of indexable fields in the receiver. This value is the
	same as the largest legal subscript. Do not override in any subclass."

	&lt;primitive: 62&gt;
	"The number of indexable fields of fixed-length objects is 0"
	^0</body>

<body package="Framework" selector="basicAt:">basicAt: index
	"Answer the value of an indexable field in the receiver. Fail if the
	argument index is not an Integer or is out of bounds. Do not override this
	message in any subclass."

	&lt;primitive: 60&gt;
	index isInteger ifTrue: [^self subscriptBoundsErrorFor: #basicAt: index: index].
	index respondsToArithmetic
		ifTrue: [^self basicAt: index asSmallInteger]
		ifFalse: [^self nonIntegerIndexError: index]</body>

<body package="Framework" selector="at:">at: index
	"Answer the value of an indexable field in the receiver.  Fail if the
	argument index is not an Integer or is out of bounds."

	&lt;primitive: 60&gt;
	index isInteger ifTrue: [^self subscriptBoundsErrorFor: #at: index: index].
	index respondsToArithmetic
		ifTrue: [^self at: index asSmallInteger]
		ifFalse: [^self nonIntegerIndexError: index]</body>

<body package="Framework" selector="at:put:">at: index put: value
	"Store the argument value in the indexable field of the receiver indicated by
	 index. Fail if the index is not an Integer or is out of bounds. Fail if the
	 value is not of the right type for this kind of collection. Answer the
	 value that was stored."

	&lt;primitive: 61 errorCode: ec&gt;
	index isInteger ifTrue:
		[(index &gt;= 1 and: [index &lt;= self basicSize])
			ifTrue:
				[self isImmutable
					ifTrue: [^self noModificationErrorFor: #at:put: index: index value: value]
					ifFalse: [^self improperStoreError]]
			ifFalse: [^self subscriptBoundsErrorFor: #at:put: index: index value: value]].
	index respondsToArithmetic
		ifTrue: [^self at: index asSmallInteger put: value]
		ifFalse: [^self nonIntegerIndexError: index]</body>

<body package="Framework" selector="basicAt:put:">basicAt: index put: value
	"Store the second argument value in the indexable field of the receiver
	indicated by index. Fail if the index is not an Integer or is out of bounds. Or
	fail if the value is not of the right type for this kind of collection. Answer
	the value that was stored. Do not override in a subclass."

	&lt;primitive: 61&gt;
	index isInteger ifTrue:
		[(index &gt;= 1 and: [index &lt;= self basicSize])
			ifTrue:
				[self isImmutable
					ifTrue: [^self noModificationErrorFor: #basicAt:put: index: index value: value]
					ifFalse: [^self improperStoreError]]
			ifFalse: [^self subscriptBoundsErrorFor: #basicAt:put: index: index value: value]].
	index respondsToArithmetic
		ifTrue: [^self basicAt: index asSmallInteger put: value]
		ifFalse: [^self nonIntegerIndexError: index]</body>

<body package="Framework" selector="size">size
	"Answer the number of indexable fields in the receiver.  This value is the
	same as the largest legal subscript."

	&lt;primitive: 62&gt;
	"The number of indexable fields of fixed-length objects is 0"
	^0</body>

<body package="Framework" selector="yourself">yourself
	"Answer self."</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>event evaluating</category>

<body package="Framework" selector="evaluate">evaluate
	"Answer the result of evaluating the receiver, or the receiver itself if
	it does not have any execution semantics."

	^self</body>

<body package="Framework" selector="evaluateWithArguments:">evaluateWithArguments: anArray
	"Answer the result of evaluating the receiver, or the receiver itself if
	it does not have any execution semantics."

	^self</body>
</methods>

<methods>
<class-id>Core.Object</class-id> <category>external accessing</category>

<body package="Framework" selector="baseCType">baseCType
	"Answer the receiver's base type with respect to the external interface C language type machinery. Whenever possible we attempt to let the receiver's class dictate the external type required to hold instances. However, there are some situations where it is only the receiver's state provides enough information to determine this. Senders should read the comments for the various implementations of this method to ensure proper execution."

	^self class baseCType</body>

<body package="Framework" selector="fixedHeapAddress">fixedHeapAddress
        "Answer the address of a FixedSpace object.  Fail the primitive if the
         receiver is not a FixedSpace object.
         WARNING: The result is only valid as long as the receiver is not
         garbage-collected.  It is the programmer's responsibility to ensure
         that the result is only used for as long as the receiver is not
         garbage-collected.  Reading data through the pointer after this
         point will yield garbage data.  Writing through the pointer after
         this point may very probably corrupt the heap and cause VisualWorks
         to crash."
        &lt;primitive: 1044 errorCode: _ec&gt;
        ^nil</body>
</methods>


<methods>
<class-id>RobotWorldView class</class-id> <category>instance creation</category>

<body package="Framework" selector="world:">world: aRobotWorld
	^super new world: aRobotWorld.</body>
</methods>


<methods>
<class-id>RobotWorldView</class-id> <category>bounds changing</category>

<body package="Framework" selector="changedPreferredBounds:forComponent:">changedPreferredBounds: oldPreferredBoundsOrNil forComponent: aVisualPart
	self computePreferredBounds.
	self invalidateRectangle: oldPreferredBoundsOrNil repairNow: true.
	super changedPreferredBounds: oldPreferredBoundsOrNil forComponent: aVisualPart.</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>private - tokens</category>

<body package="Framework" selector="removeToken:">removeToken: aToken
	| view |
	self paths do: [ :p |
		(p model == aToken) ifTrue: [
			view:= p
		]
	].
	self paths remove: view.
	self tokensViews remove: view.
	self invalidateRectangle: view bounds</body>

<body package="Framework" selector="removeTokensViews">removeTokensViews
	self tokensViews do: [ :s |
		self paths remove: s.
		self invalidateRectangle: s bounds
	].
	self tokensViews: OrderedCollection new</body>

<body package="Framework" selector="addToken:">addToken: aToken
	| view  color|
	aToken addPoint: aToken position.
	aToken addPoint: (Point x: (aToken position x + 3) y: (aToken position y + 3)).

	aToken isArma ifTrue: [
		color:= ColorValue black
	]
	ifFalse: [
		color:= ColorValue white
	].
	view:= TokenView model: aToken color: color.
	self paths add: view.
	self tokensViews add: view.
	view container: self.
	self invalidateRectangle: view bounds</body>

<body package="Framework" selector="tokensViews">tokensViews
	^tokensViews</body>

<body package="Framework" selector="tokensViews:">tokensViews: aCollection
	tokensViews:= aCollection</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>private - paths</category>

<body package="Framework" selector="setUpPaths">setUpPaths
	self clearPaths.
	self world paths do:[:p | self addPath: p]</body>

<body package="Framework" selector="addPath:">addPath: anArray
	| view robot |
	robot:= anArray at:2.
	view:= PathView model: (anArray at:1) color: (self components detect:[:c | c component model = robot]) component color.
	self paths add: view.
	view container: self.
	self invalidateRectangle: view bounds.</body>

<body package="Framework" selector="clearAllPaths">clearAllPaths
	self clearPaths.
	self invalidate</body>

<body package="Framework" selector="clearPaths">clearPaths
	self paths notNil ifTrue:[self paths do:[:p | p release; container: nil]].
	self paths: OrderedCollection new</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>private - robots</category>

<body package="Framework" selector="removeRobot:">removeRobot: aRobot
	| view | 
	view:= self components detect: [:c | c component model = aRobot].
	self remove: view</body>

<body package="Framework" selector="setUpRobots">setUpRobots
	self clearRobots.
	self world robots do:[:r | self add: (RobotView model: r)]</body>

<body package="Framework" selector="clearRobots">clearRobots
	self components do:[:c | c release; container: nil].
	super initialize</body>

<body package="Framework" selector="addRobot:">addRobot: aRobot
	self add: (RobotView model: aRobot).</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>private - shots</category>

<body package="Framework" selector="removeShotViews">removeShotViews
	self shotViews do: [ :s |
		self paths remove: s.
		self invalidateRectangle: s bounds
	].
	self shotViews: OrderedCollection new</body>

<body package="Framework" selector="addShot:">addShot: aShot
		| view  |		
		view:= ShotView model: aShot color: ColorValue yellow.
		self paths add: view.
		self shotViews add: view.
		view container: self.
		self invalidateRectangle: view bounds</body>

<body package="Framework" selector="shotViews">shotViews
	^shotViews</body>

<body package="Framework" selector="shotViews:">shotViews: aCollection
	shotViews:= aCollection</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>initialize</category>

<body package="Framework" selector="initialize">initialize
	super initialize.
	self clearPaths.
	self shotViews: OrderedCollection new.
	self tokensViews: OrderedCollection new</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>private - accessing</category>

<body package="Framework" selector="setWorld:">setWorld: aWorld 
	world isNil ifFalse:[self removeDependencies].
	world:= aWorld.
	world isNil ifFalse:[self setDependencies].
	self worldChanged</body>

<body package="Framework" selector="paths">paths
	^paths.</body>

<body package="Framework" selector="paths:">paths: aPaths 
	paths:= aPaths</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>private - dependencies</category>

<body package="Framework" selector="setDependencies">setDependencies
	self world expressInterestIn: #robotAdded for: self sendBack: #addRobot:.
	self world expressInterestIn: #robotRemoved for: self sendBack: #removeRobot:.
	self world expressInterestIn: #newPath for: self sendBack: #addPath:.
	self world expressInterestIn: #pathsCleared for: self sendBack: #clearAllPaths.
	self world expressInterestIn: #newShot for: self sendBack: #addShot:.
	self world expressInterestIn: #newToken for: self sendBack: #addToken:.
	self world expressInterestIn: #removeToken for: self sendBack: #removeToken:.
	self world expressInterestIn: #removeShots for: self sendBack: #removeShotViews.
	self world expressInterestIn: #stopJuego for: self sendBack: #removeShotViews</body>

<body package="Framework" selector="release">release
	self changed: #closeWorld.
	self removeDependencies.
	self clearPaths.
	super release.
	self components do: [:v | v container:nil]</body>

<body package="Framework" selector="removeDependencies">removeDependencies
	self world retractInterestIn: #robotAdded for: self.
	self world retractInterestIn: #robotRemoved for: self.
	self world retractInterestIn: #newPath for: self.
	self world retractInterestIn: #pathsCleared for: self.
	self world retractInterestIn: #newShot for: self.
	self world retractInterestIn: #newToken for: self.
	self world retractInterestIn: #removeShots for: self.
	self world retractInterestIn: #stopJuego for: self</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>accessing</category>

<body package="Framework" selector="world">world
	^world.</body>

<body package="Framework" selector="world:">world: aWorld 
	self setWorld: aWorld</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>private</category>

<body package="Framework" selector="layoutComponentsForBounds:">layoutComponentsForBounds: newBounds
	| oldBounds |
	oldBounds:=preferredBounds.
	super layoutComponentsForBounds: newBounds.
	preferredBounds:=preferredBounds merge: self minBounds.
	oldBounds notNil ifTrue:[preferredBounds:=preferredBounds merge: oldBounds].
	self container setOrigin: (self preferredBounds origin abs)</body>

<body package="Framework" selector="invalidateRectangle:repairNow:forComponent:">invalidateRectangle: aRectangle repairNow: aBoolean	forComponent: aVisualComponent
	(self preferredBounds sharesSideWith: aRectangle)
		ifTrue: [self invalidateRectangle: self bounds repairNow: aBoolean.]
		ifFalse:[super invalidateRectangle: aRectangle repairNow: aBoolean forComponent: aVisualComponent].</body>

<body package="Framework" selector="worldChanged">worldChanged
	self setUpPaths.
	self setUpRobots.</body>

<body package="Framework" selector="minBounds">minBounds
	(self world tamano area == 0) ifTrue: [
		^(-600@-300) extent: 1200@600
	]
	ifFalse: [
		^(self world tamano origen) extent: (self world tamano largo)@(self world tamano alto)
	]</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>displaying</category>

<body package="Framework" selector="displayOn:">displayOn: aGraphicsContext
	self displayBackgroungOn: aGraphicsContext.
	self displayPathsOn:  aGraphicsContext copy.
	super displayOn: aGraphicsContext.</body>

<body package="Framework" selector="displayBackgroungOn:">displayBackgroungOn: aGraphicsContext
	| box x y x0 y0 x1 y1 deltaX deltaY |
	box:=self preferredBounds.
	x0:=box origin x.
	x:=(x0 / 100) truncated * 100.
	y0:=box origin y.
	y:=(y0 / 100) truncated * 100.
	deltaX:=box extent x // 100.
	deltaY:=box extent y // 100.
	x1:=box corner x.
	y1:=box corner y.
	aGraphicsContext paint: (ColorValue lightGray).
	aGraphicsContext displayRectangle: box.
	aGraphicsContext paint: (ColorValue darkGray).
	(deltaX+1) timesRepeat:[aGraphicsContext displayLineFrom: (x@y0) to: (x@y1).
							x:=x + 100].
	(deltaY+1) timesRepeat:[aGraphicsContext displayLineFrom: (x0@y) to: (x1@y).
							y:=y + 100]</body>

<body package="Framework" selector="displayPathsOn:">displayPathsOn: aGraphicsContext
	self paths do:[:pv | pv displayOn: aGraphicsContext].</body>
</methods>

<methods>
<class-id>RobotWorldView</class-id> <category>bounds accessing</category>

<body package="Framework" selector="computePreferredBounds">computePreferredBounds
	| oldBounds |
	oldBounds:=preferredBounds.
	super computePreferredBounds.
	preferredBounds:=preferredBounds merge: self minBounds.
	oldBounds notNil ifTrue:[preferredBounds:=preferredBounds merge: oldBounds].
	self container setOrigin: (self preferredBounds origin abs).
	^preferredBounds.</body>
</methods>


<methods>
<class-id>RobotWorldTextEditorController</class-id> <category>private</category>

<body package="Framework" selector="doItEnvironment">doItEnvironment

		| env |

		env:=NameSpace new.
		env name: 'RobotNameSpace'.
		"env at: 'Robot' put: Robot."
		env at: 'world'  put: self world.
		self world namedRobots keysAndValuesDo: [:key :value | env at: key put: value].
		^env.
</body>
</methods>

<methods>
<class-id>RobotWorldTextEditorController</class-id> <category>accessing</category>

<body package="Framework" selector="world">world

		^world.</body>

<body package="Framework" selector="world:">world: aWorld 

		world:=aWorld.</body>
</methods>


<methods>
<class-id>Battery class</class-id> <category>instance creation</category>

<body package="Framework" selector="capacity:">capacity: aCapacity

		^super new initialize: aCapacity.</body>

<body package="Framework" selector="new">new

		^self error: 'Batteries must be created sending #capacity: to the class'.</body>
</methods>


<methods>
<class-id>Battery</class-id> <category>private - accessing</category>

<body package="Framework" selector="capacity:">capacity: aCapacity
	capacity:= aCapacity.
	self changed: #capacity</body>
</methods>

<methods>
<class-id>Battery</class-id> <category>accessing</category>

<body package="Framework" selector="chargeYourself">chargeYourself
	self charge: self capacity.
	self changed: #capacity</body>

<body package="Framework" selector="charge">charge

		^charge.</body>

<body package="Framework" selector="charge:">charge: aCharge 
	charge:= aCharge.
	(self charge &lt;= 0) ifTrue:[ self changed: #dead ]</body>

<body package="Framework" selector="capacity">capacity

		^capacity.</body>
</methods>

<methods>
<class-id>Battery</class-id> <category>printing</category>

<body package="Framework" selector="printOn:">printOn: aStream

		aStream nextPutAll: 'Battery at '.
		(self charge * 100 / self capacity) rounded printOn: aStream.
		aStream nextPut: $%.</body>
</methods>

<methods>
<class-id>Battery</class-id> <category>initialize</category>

<body package="Framework" selector="initialize:">initialize: aCapacity

		self capacity: aCapacity.
		self charge: aCapacity.</body>
</methods>


<methods>
<class-id>Gun class</class-id> <category>instance creation</category>

<body package="Framework" selector="robot:">robot: aRobot
	^super new initialize: aRobot</body>
</methods>


<methods>
<class-id>Gun</class-id> <category>initialize-release</category>

<body package="Framework" selector="initialize:">initialize: aRobot
	robot:= aRobot.
	distancia:= 0.
	descarga:= 0
</body>
</methods>

<methods>
<class-id>Gun</class-id> <category>accessing</category>

<body package="Framework" selector="descarga:">descarga: aDescarga
	descarga:= aDescarga</body>

<body package="Framework" selector="distancia:">distancia: aDistancia
	distancia:= aDistancia</body>

<body package="Framework" selector="descarga">descarga
	^descarga</body>

<body package="Framework" selector="longLinea">longLinea
	^1</body>

<body package="Framework" selector="robot:">robot: aRobot
	robot:= aRobot</body>

<body package="Framework" selector="distancia">distancia
	^distancia</body>

<body package="Framework" selector="robot">robot
	^robot</body>
</methods>

<methods>
<class-id>Gun</class-id> <category>actions</category>

<body package="Framework" selector="shot">shot
	self robot isAlive ifTrue: [
		self robot world addShot: (self onShot) from: self robot
	]</body>
</methods>

<methods>
<class-id>Gun</class-id> <category>private</category>

<body package="Framework" selector="onShot">onShot
	^self subclassResponsibility</body>
</methods>


<methods>
<class-id>RobotState class</class-id> <category>instance creation</category>

<body package="Framework" selector="robot:">robot: aRobot

		^super new robot: aRobot.</body>
</methods>


<methods>
<class-id>RobotState</class-id> <category>robot functions</category>

<body package="Framework" selector="move:">move: aDistance

		^self subclassResponsibility.</body>
</methods>

<methods>
<class-id>RobotState</class-id> <category>state changes</category>

<body package="Framework" selector="liftBrush">liftBrush

		^self subclassResponsibility.</body>

<body package="Framework" selector="lowerBrush">lowerBrush

		^self subclassResponsibility.</body>
</methods>

<methods>
<class-id>RobotState</class-id> <category>testing</category>

<body package="Framework" selector="isBrushDown">isBrushDown

		^self subclassResponsibility.</body>

<body package="Framework" selector="isBrushUp">isBrushUp

		^self subclassResponsibility.</body>
</methods>

<methods>
<class-id>RobotState</class-id> <category>accessing</category>

<body package="Framework" selector="robot:">robot: aRobot 

		robot:=aRobot.</body>

<body package="Framework" selector="robot">robot

		^robot.</body>
</methods>


<methods>
<class-id>InstanceBehaviorInspector class</class-id> <category>resources</category>

<body package="Framework" selector="methodListMenu">methodListMenu
	"Tools.MenuEditor new openOnClass: self andSelector: #methodListMenu"

	&lt;resource: #menu&gt;
	^#(#{UI.Menu} #(
			#(#{UI.MenuItem} 
				#rawLabel: 
				#(#{Kernel.UserMessage} 
					#key: #SendIt 
					#defaultString: 'Sen&amp;d It' 
					#catalogID: #menus ) 
				#nameKey: #methodsSendIt 
				#value: #sendIt 
				#enablementSelector: #singleUnaryMethodIsSelected ) 
			#(#{UI.MenuItem} 
				#rawLabel: 
				#(#{Kernel.UserMessage} 
					#key: #_Remove 
					#defaultString: '&amp;Remove' 
					#catalogID: #menus ) 
				#value: #removeMethods 
				#enablementSelector: #canRemoveMethods ) ) #(1 1 ) nil ) decodeAsLiteralArray</body>
</methods>

<methods>
<class-id>InstanceBehaviorInspector class</class-id> <category>interface specs</category>

<body package="Framework" selector="windowSpec">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 
			#(#{Kernel.UserMessage} 
				#key: #UnlabeledCanvas 
				#defaultString: 'Unlabeled Canvas' 
				#catalogID: #labels ) 
			#bounds: #(#{Graphics.Rectangle} 512 384 936 710 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.SequenceViewSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0 0 0 0 0.4 0 0.4 ) 
					#name: #protocolList 
					#model: #protocolListHolder 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#requestValueChangeSelector: #updateRequest ) 
					#menu: #protocolListMenu 
					#multipleSelections: true 
					#useModifierKeys: true 
					#selectionType: #highlight ) 
				#(#{UI.SequenceViewSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.4 0 0 0 1 0 0.4 ) 
					#name: #methodList 
					#model: #methodListHolder 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#doubleClickSelector: #selectorDoubleClicked 
						#requestValueChangeSelector: #updateRequest ) 
					#menu: #methodListMenu 
					#multipleSelections: true 
					#useModifierKeys: true 
					#selectionType: #highlight ) 
				#(#{UI.TextEditorSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0 0 0.4 0 1 0 1 ) 
					#name: #text 
					#model: #textHolder 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: 
						#textAccepted: 
						#requestValueChangeSelector: 
						#textAcceptAllowed: ) 
					#isReadOnly: false 
					#tabRequiresControl: true ) ) ) )</body>
</methods>


<methods>
<class-id>InstanceBehaviorInspector</class-id> <category>resources</category>

<body package="Framework" selector="buildMethodListMenu">buildMethodListMenu

	| menu |
	menu := self class methodListMenu.
	menu
		augmentFrom: self class
		to: InstanceBehaviorInspector
		menuName: #methodList
		for: self.
	^menu</body>
</methods>

<methods>
<class-id>InstanceBehaviorInspector</class-id> <category>private-text</category>

<body package="Framework" selector="computeText">computeText

	^self methodListHolder selections isEmpty
		ifTrue:
			[self protocolListHolder selections isEmpty
				ifTrue:
					['']					
				ifFalse: 
					[self classObject sourceCodeTemplate]]
		ifFalse: 
			[self computeMethodSourceText]</body>
</methods>


<methods>
<class-id>Graphics.Rectangle class</class-id> <category>instance creation</category>

<body package="Framework" selector="left:right:top:bottom:">left: leftNumber right: rightNumber top: topNumber bottom: bottomNumber 
	"Answer an instance of the receiver whose left, right, top, and bottom coordinates are 
	determined by the arguments."

	^self origin: leftNumber @ topNumber corner: rightNumber @ bottomNumber</body>

<body package="Framework" selector="decodeFromLiteralArray:">decodeFromLiteralArray: anArray
	"Return an instance based on the information encoded in anArray."

	^(anArray at: 2) @ (anArray at: 3) corner: (anArray at: 4)@(anArray at: 5)</body>

<body package="Framework" selector="fromUser:phase:">fromUser: gridPoint phase: phasePoint 
	"Answer an instance of the receiver that is determined by having the 
	user designate the top left and bottom right corners. The gridding for 
	user selection is represented by gridPoint and phasePoint, where 
	gridPoint specifies the grid spacing and phasePoint specifies the 
	grid alignment."
	"Rectangle fromUser: 100@100 phase: 7@7."

	^Cursor crossHair showWhile: 
		[| originPoint rectangle |
		originPoint := Screen default
						dragShape: (0 @ 0 extent: gridPoint) asPointArray
						offset: 0 @ 0
						gridPhase: phasePoint
						gridSpacing: gridPoint
						boundedBy: nil
						whileButton: 0
						isDown: false.
		#{ScheduledControllers} ifDefinedDo: [:sc| sc checkForEvents].
		rectangle := Screen default
						resizeRectangle: (Rectangle origin: originPoint extent: gridPoint)
						minimumExtent: gridPoint
						resizeIncrement: gridPoint
						boundedBy: nil
						whileButton: 0
						isDown: true.
		#{ScheduledControllers} ifDefinedDo: [:sc| sc checkForEvents].
		rectangle]</body>

<body package="Framework" selector="origin:corner:">origin: originPoint corner: cornerPoint 
	"Answer an instance of the receiver whose corners (top left and bottom right) are
	determined by the arguments."

	^self new origin: originPoint corner: cornerPoint</body>

<body package="Framework" selector="left:top:width:height:">left: left top: top width: width height: height
	"Answer an instance of the receiver with the given top and left edge, width, and height."

	^self left: left right: left + width top: top bottom: top + height</body>

<body package="Framework" selector="fromUser:">fromUser: gridPoint
	"Answer an instance of the receiver that is determined by having the
	user designate the top left and bottom right corners.  The gridding for
	user selection is gridPoint."

	^self fromUser: gridPoint phase: 0@0

	"Rectangle fromUser: 100@100."</body>

<body package="Framework" selector="originFromUser:grid:">originFromUser: extentPoint grid: scalePoint
	"Answer an instance of the receiver that is determined by having the 
	user designate the top left corner.  The width and height are 
	determined by extentPoint.  The gridding for user selection is 
	scalePoint. Assume that the sender has determined an extent 
	that is a proper multiple of scalePoint.  Assume that a button is
	already down; the user is allowed to drag an outline of the rectangle
	while any button is down."

	^self originFromUser: extentPoint grid: scalePoint whileButton: 0 isDown: true</body>

<body package="Framework" selector="originFromUser:">originFromUser: extentPoint 
	"Answer an instance of the receiver that is determined by having the
	user designate the top left corner.  The width and height are determined
	by extentPoint.  The gridding for user selection is 1@1."

	^self originFromUser: extentPoint grid: 1 @ 1</body>

<body package="Framework" selector="origin:extent:">origin: originPoint extent: extentPoint 
	"Answer an instance of the receiver whose top left corner is originPoint and width by
	height is extentPoint."

	^self new origin: originPoint extent: extentPoint</body>

<body package="Framework" selector="fromUser">fromUser
	"Answer an instance of the receiver that is determined by having the
	user designate the top left and bottom right corners."

	^self fromUser: 1@1</body>

<body package="Framework" selector="originFromUser:grid:whileButton:isDown:">originFromUser: extentPoint grid: scalePoint whileButton: button isDown: aBoolean 
	"Answer an instance of the receiver that is determined by having the 
	user designate the top left corner while the specified button (1 = 
	left button, 2 = middle button, 3 = right button) is either down 
	(aBoolean is true) or up (aBoolean is false). If button = 0, the user 
	designates the origin while either any button is down (aBoolean is 
	true) or all are up (aBoolean is false). The width and height are 
	determined by extentPoint. The gridding for user selection is 
	scalePoint. Assume that the sender has determined an extent that 
	is a proper multiple of scalePoint. Assume that a button is already 
	down; the user is allowed to drag an outline of the rectangle while 
	any button is down."

	| position |
	position := Screen default
				dragShape: (self origin: 0 @ 0 extent: extentPoint) asPointArray
				offset: 0 @ 0
				gridPhase: 0 @ 0
				gridSpacing: scalePoint
				boundedBy: nil
				whileButton: button
				isDown: aBoolean.
	^self origin: position extent: extentPoint</body>

<body package="Framework" selector="vertex:vertex:">vertex: vertexPoint1 vertex: vertexPoint2 
	"Answer an instance of the receiver whose diagonally opposite vertices are specified by the arguments."

	^self
		origin: (vertexPoint1 min: vertexPoint2)
		corner: (vertexPoint1 max: vertexPoint2)</body>

<body package="Framework" selector="origin:width:height:">origin: originPoint width: width height: height
	"Answer an instance of the receiver whose top left corner is originPoint and width by height is as given."

	^self origin: originPoint corner: (originPoint x + width)@(originPoint y + height)</body>

<body package="Framework" selector="new">new
	"Override for backwards compatability"

	^self basicNew</body>
</methods>


<methods>
<class-id>Graphics.Rectangle</class-id> <category>testing</category>

<body package="Framework" selector="containsPoint:">containsPoint: aPoint 
	"Answer whether the argument aPoint is within the receiver."

	^origin &lt;= aPoint and: [aPoint &lt; corner]</body>

<body package="Framework" selector="regionIntersects:">regionIntersects: aRectangle
	"Answer whether the receiver's, display area intersects aRectangle under filling."

	^self intersects: aRectangle</body>

<body package="Framework" selector="contains:">contains: aRectangle 
	"Answer whether the receiver is equal to aRectangle or whether aRectangle 
	is contained within the receiver."

	^aRectangle origin &gt;= origin and: [aRectangle corner &lt;= corner]</body>

<body package="Framework" selector="intersects:">intersects: aRectangle 
	"Answer whether aRectangle intersects the receiver anywhere."

	^ origin &lt; aRectangle corner
		and: [aRectangle origin &lt;  corner
		and: [ origin &lt; corner
		and: [aRectangle origin &lt; aRectangle corner]]]</body>

<body package="Framework" selector="outlineIntersects:">outlineIntersects: aRectangle
	"Answer whether the receiver's display area intersects aRectangle 
	under stroking."

	"Eliminate the trivial failures"
	(super outlineIntersects: aRectangle)
		ifFalse:	[^false].
	^self class vertices: self asPointArray intersectsRectangle: aRectangle</body>

<body package="Framework" selector="canBeFilled">canBeFilled
	"Answer whether filling makes sense for this Geometric"

	^true</body>

<body package="Framework" selector="sharesSideWith:">sharesSideWith: aRectangle

		^(((self top = aRectangle top or:[self top = aRectangle bottom])
		 or:[(self bottom = aRectangle top or:[self bottom = aRectangle bottom])])
	 	 or:[(self left = aRectangle left or:[self left = aRectangle right])])
		 or:[(self right = aRectangle left or:[self right = aRectangle left])].</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>converting</category>

<body package="Framework" selector="asLayoutFrameWith:">asLayoutFrameWith: aRectangle
	"Answer a LayoutFrame appropriate for the receiver"

	^self asOffsetLayout</body>

<body package="Framework" selector="asAlignmentOrigin">asAlignmentOrigin
	"Answer a LayoutFrame appropriate for the receiver"

	^AlignmentOrigin new
		leftOffset: self left;
		topOffset: self top.</body>

<body package="Framework" selector="asPointArray">asPointArray
	"Answer a point array representing myself as a polyline."
	| polyline |

	polyline := Array new: 5.
	polyline
		at: 1 put: self topLeft;
		at: 2 put: self topRight;
		at: 3 put: self bottomRight;
		at: 4 put: self bottomLeft;
		at: 5 put: self topLeft.
	^polyline</body>

<body package="Framework" selector="asOffsetLayout">asOffsetLayout
	"Answer a LayoutFrame based on the reciever as offset values for the LayoutFrame."

	| layout |
	layout := LayoutFrame new.
	layout leftOffset: self left.
	layout rightOffset: self right.
	layout topOffset: self top.
	layout bottomOffset: self bottom.
	^layout</body>

<body package="Framework" selector="compute:whenRelativeTo:preferred:">compute: aRectangle whenRelativeTo: containingRectangle preferred: preferredRectangle
	"Answer a new instance of the receiver's class that computes aRectangle
	when sent  rectangleRelativeTo: containingRectangle preferred: preferredRectangle"

	^self asLayout 
		compute: aRectangle
		whenRelativeTo: containingRectangle
		preferred: preferredRectangle</body>

<body package="Framework" selector="literalArrayEncoding">literalArrayEncoding
	"Return a literal suitable for reconstituting the receiver."

	| a |
	a := Array new: 5.
	a at: 1 put: self class fullyQualifiedReference.
	a at: 2 put: self left literalArrayEncoding.
	a at: 3 put: self top literalArrayEncoding.
	a at: 4 put: self right literalArrayEncoding.
	a at: 5 put: self bottom literalArrayEncoding.
	^a</body>

<body package="Framework" selector="rectangleRelativeTo:preferred:">rectangleRelativeTo: aRectangle preferred: aPreferredRectangle
	"Answer a rectangular object that is relative to aRectangle based on
	the receiver's constraints and aPreferredRectangle."

	^self asLayout rectangleRelativeTo: aRectangle preferred: aPreferredRectangle</body>

<body package="Framework" selector="asFractionalLayout">asFractionalLayout
	"Answer a LayoutFrame based on the reciever as fractional values for the LayoutFrame."

	| layout |
	layout := LayoutFrame new.
	layout leftFraction: self left.
	layout rightFraction: self right.
	layout topFraction: self top.
	layout bottomFraction: self bottom.
	^layout</body>

<body package="Framework" selector="asPolyline">asPolyline
	"Answer a point array representing myself as a polyline."
	| polyline |

	polyline := Array new: 5.
	polyline
		at: 1 put: self topLeft;
		at: 2 put: self topRight;
		at: 3 put: self bottomRight;
		at: 4 put: self bottomLeft;
		at: 5 put: self topLeft.
	^Polyline vertices: polyline</body>

<body package="Framework" selector="asLayout">asLayout
	"Answer a LayoutFrame appropriate for the receiver as fractional values (if all values are between 0 and 1) or offset values otherwise."

	^((self left between: 0 and: 1)
		and: [(self top between: 0 and: 1)
		and: [(self right between: 0 and: 1)
		and: [self bottom between: 0 and: 1]]])
		ifTrue: [self asFractionalLayout]
		ifFalse: [self asOffsetLayout].</body>

<body package="Framework" selector="asOriginSizeLayoutWith:">asOriginSizeLayoutWith: aRectangle
	"Answer a LayoutSizedOrigin appropriate for the receiver"

	^LayoutSizedOrigin new
		leftOffset: self left;
		topOffset: self top;
		width: self width;
		height: self height</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>printing</category>

<body package="Framework" selector="printOn:">printOn: aStream 
	"Append to the argument aStream a sequence of characters that identifies the receiver.
	The general format is
		originPoint corner: cornerPoint."

	origin printOn: aStream.
	aStream nextPutAll: ' corner: '.
	corner printOn: aStream</body>

<body package="Framework" selector="storeOn:">storeOn: aStream
	"Append to the argument aStream a sequence of characters that is an expression 
	whose evaluation creates a rectangle similar to the receiver.  The general format
	for rectangles is
		( class-name origin: aNumber corner: aNumber)"


	aStream nextPut: $(;
		store: self class;
		nextPutAll: ' origin: ';
		store: origin;
		nextPutAll: ' corner: ';
		store: corner;
		nextPut: $).</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>rectangle functions</category>

<body package="Framework" selector="centeredIn:">centeredIn: aPoint

		^Rectangle origin: ((aPoint x - (self width // 2)) @ (aPoint y - (self height // 2))) extent:(self width @ self height).
</body>

<body package="Framework" selector="areasOutside:">areasOutside: aRectangle
	"Answer a Collection of Rectangles comprising the parts of the
	receiver that do not lie within aRectangle."

	| areas yOrigin yCorner |
		"Make sure the intersection is non-empty"
	(self intersects: aRectangle)
		ifFalse: [^Array with: self].
	areas := OrderedCollection new.
	aRectangle origin y &gt; origin y
		ifTrue: [areas add: (origin corner: corner x @ (yOrigin := aRectangle origin y))]
		ifFalse: [yOrigin := origin y].
	aRectangle corner y &lt; corner y
		ifTrue: [areas add: (origin x @ (yCorner := aRectangle corner y) corner: corner)]
		ifFalse: [yCorner := corner y].
	aRectangle origin x &gt; origin x 
		ifTrue: [areas add: (origin x @ yOrigin corner: aRectangle origin x @ yCorner)].
	aRectangle corner x &lt; corner x 
		ifTrue: [areas add: (aRectangle corner x @ yOrigin corner: corner x @ yCorner)].
	^areas</body>

<body package="Framework" selector="intersect:">intersect: aRectangle 
	"Answer a Rectangle that is the area in which the receiver overlaps with 
	aRectangle. Note, if the receiver and the argument do not intersect, then
	the resulting rectangle will be degenerate, i.e. it will have negative width 
	or height."
	^self species 
		origin: (origin max: aRectangle origin)
		corner: (corner min: aRectangle corner)</body>

<body package="Framework" selector="rectangleRelativeTo:">rectangleRelativeTo: aRectangle 
	"The receiver is being used as a relative rectangle.  If the receiver's left, right, top, and bottom
	are all &lt;= 1.0 then Answer a rectangle relative to aRectangle using the receiver's left, right, top,
	 and bottom as scaling factors otherwise just translate into the coordinate system of aRectangle."
	"Overloaded but usefull."

	| left right top bottom width height |
	width := aRectangle width.
	height := aRectangle height.
	(1.0 &gt;= self left and: [1.0 &gt;= self top and: [1.0 &gt;= self right and: [1.0 &gt;= self bottom]]])
		ifTrue: [left := aRectangle left + (width * self left).
				right := aRectangle left + (width * self right).
				top := aRectangle top + (height * self top).
				bottom := aRectangle top + (height * self bottom)]
		ifFalse: [left := aRectangle left + self left.
				right := aRectangle left + self right.
				top := aRectangle top + self top.
				bottom := aRectangle top + self bottom].
	^self class
		left: left rounded
		right: right rounded
		top: top rounded
		bottom: bottom rounded</body>

<body package="Framework" selector="insetBy:">insetBy: delta 
	"Answer a Rectangle that is inset from the receiver by delta.   
	 delta is a Rectangle, Point, or scalar."

	^delta insetRectangle: self</body>

<body package="Framework" selector="amountToTranslateWithin:">amountToTranslateWithin: aRectangle
	"Answer a Point, delta, such that the origin of the receiver translated 
	by delta will lie within aRectangle, and the translated rectangle's corner 
	will also lie within aRectangle, if it will fit ."

	| deltaX deltaY |
	deltaX := deltaY := 0.
	self right &gt; aRectangle right ifTrue: [deltaX := aRectangle right - self right].
	self bottom &gt; aRectangle bottom ifTrue: [deltaY := aRectangle bottom - self bottom].
	self left + deltaX &lt; aRectangle left ifTrue: [deltaX := aRectangle left - self left].
	self top + deltaY &lt; aRectangle top ifTrue: [deltaY := aRectangle top - self top].
	^deltaX @ deltaY</body>

<body package="Framework" selector="expandedBy:">expandedBy: delta 
	"Answer a Rectangle that is outset from the receiver by delta.   
	 delta is a Rectangle, Point, or scalar."

	^delta expandRectangle: self</body>

<body package="Framework" selector="merge:">merge: aRectangle 
	"Answer a Rectangle that contains both the receiver and  the
	argument aRectangle."

	^self species 
		origin: (origin min: aRectangle origin)
		corner: (corner max: aRectangle corner)</body>

<body package="Framework" selector="insetOriginBy:cornerBy:">insetOriginBy: originDeltaPoint cornerBy: cornerDeltaPoint 
	"Answer a Rectangle that is inset from the receiver by a given amount in the 
	origin and corner."

	^self species
		origin: origin + originDeltaPoint
		corner: corner - cornerDeltaPoint</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>truncation and round off</category>

<body package="Framework" selector="truncated">truncated
	"Answer a Rectangle whose origin and corner are truncated."

	^self species origin: origin truncated corner: corner truncated</body>

<body package="Framework" selector="rounded">rounded
	"Answer a Rectangle whose origin and corner are rounded."

	^self species origin: origin rounded corner: corner rounded</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>accessing</category>

<body package="Framework" selector="left">left
	"Answer the position of the receiver's left vertical line."

	^origin x</body>

<body package="Framework" selector="top">top
	"Answer the position of the receiver's top horizontal line."

	^origin y</body>

<body package="Framework" selector="center">center
	"Answer the point at the center of the receiver."

	^((origin x + corner x) // 2) @ ((origin y + corner y) // 2)</body>

<body package="Framework" selector="origin:corner:">origin: originPoint corner: cornerPoint
	"Set the points at the top left corner and the bottom right corner of the receiver."

	origin := originPoint.
	corner := cornerPoint</body>

<body package="Framework" selector="origin:extent:">origin: originPoint extent: extentPoint
	"Set the point at the top left corner of the receiver to be originPoint and
	set the width and height of the receiver to be extentPoint."

	origin := originPoint.
	corner := origin + extentPoint</body>

<body package="Framework" selector="extent:">extent: extentPoint 
	"Set the extent (width and height) of the receiver to be the 
	argument extentPoint."

	corner := origin + extentPoint</body>

<body package="Framework" selector="origin">origin
	"Answer the point at the top left corner of the receiver."

	^origin</body>

<body package="Framework" selector="corner">corner
	"Answer the point at the bottom right corner of the receiver."

	^corner</body>

<body package="Framework" selector="origin:">origin: originPoint 
	"Set the point at the top left corner of the receiver."

	origin := originPoint</body>

<body package="Framework" selector="corner:">corner: cornerPoint 
	"Set the point at the bottom right corner of the receiver."

	corner := cornerPoint</body>

<body package="Framework" selector="bottomLeft">bottomLeft
	"Answer the point at the left edge of the bottom horizontal line of the receiver."

	^origin x @ corner y</body>

<body package="Framework" selector="topLeft">topLeft
	"Answer the point at the top left corner of the receiver's top horizontal line."

	^origin</body>

<body package="Framework" selector="right:">right: anInteger 
	"Set the position of the receiver's right vertical line."

	corner x: anInteger</body>

<body package="Framework" selector="topCenter">topCenter
	"Answer the point at the center of the receiver's top horizontal line."

	^((origin x + corner x) // 2) @ origin y</body>

<body package="Framework" selector="left:">left: anInteger 
	"Set the position of the receiver's left vertical line."

	origin x: anInteger</body>

<body package="Framework" selector="extent">extent
	"Answer a Point representing the extent of the receiver, that is
	one whose x coordinate is the width and whose y coordinate is the height."

	^corner - origin</body>

<body package="Framework" selector="bottomCenter">bottomCenter
	"Answer the point at the center of the bottom horizontal line of the receiver."

	^((origin x + corner x) // 2) @ corner y</body>

<body package="Framework" selector="leftCenter">leftCenter
	"Answer the point at the center of the receiver's left vertical line."

	^self left @ self center y</body>

<body package="Framework" selector="bottomRight">bottomRight
	"Answer the point at the right edge of the bottom horizontal line of the receiver."

	^corner</body>

<body package="Framework" selector="bottom">bottom
	"Answer the position of the receiver's bottom horizontal line."

	^corner y</body>

<body package="Framework" selector="width:">width: widthInteger 
	"Change the receiver's right vertical line to make its width widthInteger."

	corner x: origin x + widthInteger</body>

<body package="Framework" selector="top:">top: anInteger 
	"Set the position of the receiver's top horizontal line."

	origin y: anInteger</body>

<body package="Framework" selector="topLeft:">topLeft: topLeftPoint 
	"Set the point at the top left corner of the receiver's top horizontal line."

	origin := topLeftPoint</body>

<body package="Framework" selector="height">height
	"Answer the height of the receiver."

	^corner y - origin y</body>

<body package="Framework" selector="area">area
	"Answer the receiver's area, the product of width and height."

	^self width * self height</body>

<body package="Framework" selector="rightCenter">rightCenter
	"Answer the point at the center of the receiver's right vertical line."

	^self right @ self center y</body>

<body package="Framework" selector="bottomRight:">bottomRight: bottomRightPoint 
	"Set the position of the right corner of the bottom horizontal line of the receiver."

	corner := bottomRightPoint</body>

<body package="Framework" selector="width">width
	"Answer the width of the receiver."

	^corner x - origin x</body>

<body package="Framework" selector="height:">height: heightInteger 
	"Change the receiver's bottom y to make its height 
	the argument heightInteger."

	corner y: origin y + heightInteger</body>

<body package="Framework" selector="right">right
	"Answer the position of the receiver's right vertical line."

	^corner x</body>

<body package="Framework" selector="topRight">topRight
	"Answer the point at the top right corner of the receiver's top horizontal line."

	^corner x @ origin y</body>

<body package="Framework" selector="bottom:">bottom: anInteger 
	"Set the position of the bottom horizontal line of the receiver."

	corner y: anInteger</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>copying</category>

<body package="Framework" selector="postCopy">postCopy

	super postCopy.
	origin := origin copy.
	corner := corner copy</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>transforming</category>

<body package="Framework" selector="moveTo:">moveTo: aPoint 
	"Change the corners of the receiver so that its top left position is aPoint."

	corner := corner + aPoint - origin.
	origin := aPoint</body>

<body package="Framework" selector="translatedBy:">translatedBy: amount 
	"Answer a new object translated by amount, which can be
	a Point or a scalar value."

	^self species origin: origin + amount corner: corner + amount</body>

<body package="Framework" selector="moveBy:">moveBy: aPoint 
	"Change the corner positions of the receiver so that its area translates by
	the amount defined by the argument, aPoint."

	origin := origin + aPoint.
	corner := corner + aPoint</body>

<body package="Framework" selector="scaledBy:">scaledBy: amount 
	"Answer a new object scaled by the argument amount, which can be
	a Point or a scalar value."

	^ self species vertex: origin * amount vertex: corner * amount</body>

<body package="Framework" selector="align:with:">align: aPoint1 with: aPoint2 
	"Answer a new Rectangle that is a translated by aPoint2 - aPoint1."

	^self translatedBy: aPoint2 - aPoint1</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>private</category>

<body package="Framework" selector="computeBounds">computeBounds
	"Answer the Rectangle which minimally bounds the coordinate region used
	by the receiver, independent of considerations such as line width."

	^self</body>

<body package="Framework" selector="insetRectangle:">insetRectangle: aRect
	^aRect species origin: aRect origin + origin 
					corner: aRect corner - corner</body>

<body package="Framework" selector="expandRectangle:">expandRectangle: aRect
	^aRect species origin: aRect origin - origin 
					corner: aRect corner + corner</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>comparing</category>

<body package="Framework" selector="=">= aRectangle 
	"Answer whether the receiver's species, origin and corner match those of
	the argument, aRectangle."

	self species = aRectangle species
		ifTrue: [^origin = aRectangle origin and: [corner = aRectangle corner]]
		ifFalse: [^false]</body>

<body package="Framework" selector="hash">hash
	^origin hash bitXor: corner hash</body>
</methods>

<methods>
<class-id>Graphics.Rectangle</class-id> <category>displaying</category>

<body package="Framework" selector="displayStrokedOn:">displayStrokedOn: aGraphicsContext
	"Stroke the receiver's edges on the supplied GraphicsContext."

	aGraphicsContext displayRectangularBorder: self</body>

<body package="Framework" selector="displayFilledOn:">displayFilledOn: aGraphicsContext
	"Stroke the receiver's edges on the supplied GraphicsContext."

	aGraphicsContext displayRectangle: self</body>
</methods>


<methods>
<class-id>Robot class</class-id> <category>instance creation</category>

<body package="Framework" selector="position:">position: aPosition

		^super new initialize; position: aPosition; yourself.</body>

<body package="Framework" selector="new">new

		^self error: 'Robots should be created using the message #named:position:'.</body>
</methods>


<methods>
<class-id>Robot</class-id> <category>printing</category>

<body package="Framework" selector="printOn:">printOn: aStream

		aStream nextPutAll: 'Robot'.
		aStream cr.
		aStream nextPutAll: 'at '.
		self position printOn: aStream.
		aStream cr.
		aStream nextPutAll: 'direction '.
		self direction printOn: aStream.</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>positioning</category>

<body package="Framework" selector="move:">move: aDistance
	| nextPoint |
	nextPoint:= self nextPosition: aDistance.

	"Si puede mover lo muevo"
	(self world tamano canMove: nextPoint) ifTrue: [
		(self battery charge &gt;= aDistance abs) ifTrue:[
			self state move: aDistance.
			self battery charge: self battery charge - (aDistance abs).
		]
	]</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>private - positioning</category>

<body package="Framework" selector="nextPosition:">nextPosition: aDistance
	^(self position + (Point r: aDistance theta: ((Float pi / 180) * (self direction negated - 90)))) rounded.</body>

<body package="Framework" selector="doMove:">doMove: aDistance

		self position: (self position + (Point r: aDistance theta: ((Float pi / 180) * (self direction negated - 90)))) rounded</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>direction</category>

<body package="Framework" selector="south">south

		direction:=180.</body>

<body package="Framework" selector="east">east

		direction:=270.</body>

<body package="Framework" selector="direction">direction

		^direction.</body>

<body package="Framework" selector="direction:">direction: aDirection 

		direction:=aDirection.
		self changed: #direction.</body>

<body package="Framework" selector="west">west

		direction:=90.</body>

<body package="Framework" selector="north">north

		direction:=0.</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>brush</category>

<body package="Framework" selector="isBrushUp">isBrushUp

		^self state isBrushUp.</body>

<body package="Framework" selector="isBrushDown">isBrushDown

		^self state isBrushDown.</body>

<body package="Framework" selector="brushDown">brushDown

		self state lowerBrush.</body>

<body package="Framework" selector="brushUp">brushUp

		self state liftBrush.</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>accessing</category>

<body package="Framework" selector="battery">battery

		^battery.</body>

<body package="Framework" selector="gun:">gun: aGun
	gun:= aGun</body>

<body package="Framework" selector="imagenSeter">imagenSeter
	 ^selectImg.</body>

<body package="Framework" selector="position:">position: aPosition 

		position:=aPosition.
		self changed: #position.</body>

<body package="Framework" selector="movement:">movement: aMovement
	movement:= aMovement</body>

<body package="Framework" selector="isAlive">isAlive
	^(self battery charge &gt; 0)</body>

<body package="Framework" selector="gun">gun
	^gun</body>

<body package="Framework" selector="position">position

		^position.</body>

<body package="Framework" selector="movement">movement
	^movement</body>

<body package="Framework" selector="world:">world: aWorld 

		world:=aWorld.</body>

<body package="Framework" selector="imagenSeter:">imagenSeter: anImage
	selectImg:=anImage.
	self changed:#image.</body>

<body package="Framework" selector="world">world

		^world.</body>

<body package="Framework" selector="shield:">shield: aShield
	shield:= aShield.</body>

<body package="Framework" selector="shield">shield
	^shield</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>initialize</category>

<body package="Framework" selector="initialize">initialize
	self battery: (Battery capacity: 1000).
	self state: (BrushUp robot: self).
	self position: 0@0.
	self north.</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>event accessing</category>

<body package="Framework" selector="receiveDisparo:">receiveDisparo: aShot
	self battery charge: self battery charge - (shield receiveDisparo: aShot)</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>path</category>

<body package="Framework" selector="startNewPath">startNewPath

		self currentPath: Path new.
		self recordPosition.
		self world addPath: self currentPath for: self.</body>

<body package="Framework" selector="recordPosition">recordPosition

		self currentPath addPoint: self position.</body>

<body package="Framework" selector="clearPaths">clearPaths
"
		self currentPath clear.
		self changed: #clearPaths with: self."</body>

<body package="Framework" selector="endPath">endPath

		self currentPath: nil.</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>actions</category>

<body package="Framework" selector="giroEnU">giroEnU
	(self direction &gt; 180)
		ifTrue: [	self direction: (self direction - 180) ]
		ifFalse: [ self direction: (self direction + 180) ]</body>

<body package="Framework" selector="randomMoveSteps">randomMoveSteps
	| random |
	random:= Random new.
	self move: (random next * 100) truncated</body>

<body package="Framework" selector="shot">shot
	self gun shot</body>

<body package="Framework" selector="move">move
	| oldPosition aRobot token |
	oldPosition:= self position.
	self movement move.

	"ver si choca"
	aRobot:= self world robotChoca: self hasta: oldPosition.
	(aRobot == nil) ifFalse: [
		self world chocarRobot: self with: aRobot
	].

	"ver si toma algun tokens"
	token:= self world robotTomaTokens: self hasta: oldPosition.
	(token == nil) ifFalse: [
		"si toma me fijo si es arma o vida e impemento"
		token isArma ifTrue: [
			self gun: token item.
			self gun initialize: self
		]
		ifFalse: [
			self battery chargeYourself
		].
		self world eliminarToken: token.
	]</body>

<body package="Framework" selector="randomDireccion">randomDireccion
	| random |
	random:= Random new.
	self direction: (random next * 300 + 1) truncated</body>
</methods>

<methods>
<class-id>Robot</class-id> <category>private - accessing</category>

<body package="Framework" selector="battery:">battery: aBattery 

		battery:=aBattery.</body>

<body package="Framework" selector="currentPath:">currentPath: aCurrentPath 

		currentPath:=aCurrentPath.</body>

<body package="Framework" selector="state">state

		^state.</body>

<body package="Framework" selector="currentPath">currentPath

		^currentPath.</body>

<body package="Framework" selector="state:">state: aState 

		state:=aState.</body>
</methods>


<methods>
<class-id>WorldTempRobotInspector class</class-id> <category>interface specs</category>

<body package="Framework" selector="unsegmentedSpec">unsegmentedSpec
	"Tools.UIPainter new openOnClass: self andSelector: #unsegmentedSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 
			#(#{Kernel.UserMessage} 
				#key: #UnlabeledCanvas 
				#defaultString: 'Unlabeled Canvas' 
				#catalogID: #labels ) 
			#bounds: #(#{Graphics.Rectangle} 562 362 869 697 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.SequenceViewSpec} 
					#properties: 
					#(#{UI.PropertyListDictionary} #dragOkSelector 
						#wantToDrag: #dragEnterSelector 
						#dragEntry: #dragOverSelector 
						#dragOver: #dragStartSelector 
						#doDrag: #dropSelector 
						#drop: #dragExitSelector 
						#dragExit: ) 
					#layout: #(#{Graphics.LayoutFrame} 0 0 0 0 0 0.4 0 1 ) 
					#name: #fieldList 
					#flags: 15 
					#model: #fieldListHolder 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#doubleClickSelector: #dive 
						#requestValueChangeSelector: #changeRequest ) 
					#multipleSelections: true 
					#useModifierKeys: true 
					#selectionType: #highlight ) 
				#(#{UI.TextEditorSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.4 0 0 0 1 0 1 ) 
					#name: #text 
					#model: #textHolder 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: 
						#textAccepted: 
						#requestValueChangeSelector: 
						#textAcceptAllowed: ) 
					#tabRequiresControl: true ) ) ) )</body>
</methods>


<methods>
<class-id>PathView class</class-id> <category>instance creation</category>

<body package="Framework" selector="model:color:">model: aModel color: aColor

		^(super model: aModel) color: aColor; yourself.</body>
</methods>


<methods>
<class-id>PathView</class-id> <category>displaying</category>

<body package="Framework" selector="displayOn:">displayOn: aGraphicsContext
	self color ifNil: [ self color: ColorValue yellow ].
	aGraphicsContext paint: self color.
	aGraphicsContext lineWidth: 3.
	aGraphicsContext displayPolyline: (self model points).</body>
</methods>

<methods>
<class-id>PathView</class-id> <category>bounds accessing</category>

<body package="Framework" selector="preferredBounds">preferredBounds
		
		| minX minY maxX maxY |
		
		minX:=maxX:=self model points first x.
		minY:=maxY:=self model points first y.
		self model points do:[:p | 
								minX:=minX min: p x.
								minY:=minY min: p y.
								maxX:=maxX max: p x.
								maxY:=maxY max: p y.
								].
		^((minX@minY) corner: (maxX@maxY)) expandedBy: 3.</body>
</methods>

<methods>
<class-id>PathView</class-id> <category>accessing</category>

<body package="Framework" selector="color:">color: aColor 

		color:=aColor.</body>

<body package="Framework" selector="color">color

		^color.</body>
</methods>


<methods>
<class-id>TokenView</class-id> <category>displaying</category>

<body package="Framework" selector="displayOn:">displayOn: aGraphicsContext
	aGraphicsContext paint: self color.
	aGraphicsContext lineWidth: 20.
	aGraphicsContext displayPolyline: (self model points)</body>
</methods>


<methods>
<class-id>Path class</class-id> <category>instance creation</category>

<body package="Framework" selector="new">new

		^super new initialize.</body>
</methods>


<methods>
<class-id>Path</class-id> <category>private - accessing</category>

<body package="Framework" selector="points:">points: aPoints 

		points:=aPoints.</body>
</methods>

<methods>
<class-id>Path</class-id> <category>accessing</category>

<body package="Framework" selector="points">points

		^points.</body>
</methods>

<methods>
<class-id>Path</class-id> <category>path functions</category>

<body package="Framework" selector="addPoint:">addPoint: aPoint

		self points add: aPoint.
		self changed: #pointAdded.</body>
</methods>

<methods>
<class-id>Path</class-id> <category>initialize</category>

<body package="Framework" selector="initialize">initialize

		self points: OrderedCollection new.</body>
</methods>


<methods>
<class-id>Shot class</class-id> <category>instance creation</category>

<body package="Framework" selector="new:">new: aGun
	^super new initialize: aGun</body>
</methods>


<methods>
<class-id>Shot</class-id> <category>initialize-release</category>

<body package="Framework" selector="initialize:">initialize: aGun
	gun:= aGun</body>
</methods>

<methods>
<class-id>Shot</class-id> <category>accessing</category>

<body package="Framework" selector="gun">gun
	^gun</body>
</methods>


<methods>
<class-id>NullGun</class-id> <category>actions</category>

<body package="Framework" selector="shot">shot</body>

<body package="Framework" selector="onShot">onShot
	^nil</body>
</methods>


<methods>
<class-id>RobotWorld class</class-id> <category>instance creation</category>

<body package="Framework" selector="new">new

		^super new initialize.</body>
</methods>


<methods>
<class-id>RobotWorld</class-id> <category>tools</category>

<body package="Framework" selector="defaultInpector">defaultInpector
	^(WorkspaceInspectorPage with: (WorldTempRobotInspector on: NameSpace new))</body>

<body package="Framework" selector="defaultProperties:">defaultProperties: aDefaultInspector
	defaultProperties:= aDefaultInspector</body>

<body package="Framework" selector="defaultProperties">defaultProperties
	^defaultProperties</body>

<body package="Framework" selector="defaultView">defaultView
	self tamano isInfinito ifTrue: [
		^(TranslatingWrapper on:(RobotWorldView world: self) at:(250@250))
	]
	ifFalse: [
		^(TranslatingWrapper on:(RobotWorldView world: self) at:(self tamano extremo))
	]</body>
</methods>

<methods>
<class-id>RobotWorld</class-id> <category>initialize</category>

<body package="Framework" selector="initialize">initialize
	self namedRobots: Dictionary new.
	self paths: OrderedCollection new.
	self shots: Dictionary new.
	self tokens: OrderedCollection new.
	moves:= Array new: 3.
	self moves at: 1 put: #makeMover; at: 2 put: #makeDisparar; at: 3 put: #makeDefender.
	self actualMove: 1.
	defaultProperties:= nil.
	self run: false</body>
</methods>

<methods>
<class-id>RobotWorld</class-id> <category>robot management</category>

<body package="Framework" selector="removeRobotNamed:">removeRobotNamed: aName

		| r |

		r:=self namedRobots removeKey: aName.
		r world: nil.
		self changed: #robotRemoved with: r.</body>

<body package="Framework" selector="getRobotName:">getRobotName: aRobot

		^self namedRobots keyAtValue: aRobot.</body>

<body package="Framework" selector="addRobot:named:">addRobot: aRobot named: aName

		self namedRobots at: aName put: aRobot.
		aRobot world: self.
		self changed: #robotAdded with: aRobot.</body>

<body package="Framework" selector="clearRobots">clearRobots

		self namedRobots keys do:[:name | self removeRobotNamed: name].</body>

<body package="Framework" selector="getRobotNamed:">getRobotNamed: aName

		^self namedRobots at: aName.</body>
</methods>

<methods>
<class-id>RobotWorld</class-id> <category>accessing</category>

<body package="Framework" selector="paths">paths

		^paths.</body>

<body package="Framework" selector="tokens">tokens
	^tokens</body>

<body package="Framework" selector="shots">shots
	^shots</body>

<body package="Framework" selector="robots">robots

		^self namedRobots values.</body>

<body package="Framework" selector="tamano:">tamano: aModelWorld
	tamano:= aModelWorld</body>

<body package="Framework" selector="run:">run: anObject
	run:= anObject</body>

<body package="Framework" selector="tamano">tamano
	(tamano == nil) ifTrue: [
		"Por defecto ilimitado"
		self tamano: (ModelWorld origen: 0@0 extremo: 0@0)
	].
	^tamano</body>

<body package="Framework" selector="run">run
	^run</body>

<body package="Framework" selector="initJuego">initJuego
	self namedRobots isEmpty ifTrue: [ ^self ].
	self run: true.
	[
		[self run] whileTrue: [
			(Delay forSeconds: 1) wait.
			self makeTurno.
		]
	] forkAt: 1</body>

<body package="Framework" selector="tokens:">tokens: aCollection
	tokens:= aCollection.</body>

<body package="Framework" selector="namedRobots">namedRobots

		^namedRobots.</body>

<body package="Framework" selector="clear">clear

		self clearPaths.
		self clearRobots.</body>

<body package="Framework" selector="stopJuego">stopJuego
	self run: false.
	self changed: #stopJuego.
	self shots: Dictionary new.</body>
</methods>

<methods>
<class-id>RobotWorld</class-id> <category>accesiong - world</category>

<body package="Framework" selector="robotChoca:hasta:">robotChoca: aRobot hasta: oldPosition
	| point |
	self namedRobots do: [ :r |
		(r isAlive) ifTrue: [
			(r == aRobot) ifFalse: [
				point:= r position pointNearestLine: oldPosition to: aRobot position.
				((point dist: r position) &lt;= 30) ifTrue: [ ^r ]
			]
		]
	].
	^nil</body>

<body package="Framework" selector="robotMasCercano:">robotMasCercano: aRobot
	| min cercano |
	min:= 10000.
	cercano:= nil.
	self namedRobots do: [ :r |
		(r == aRobot) ifFalse: [
			((aRobot position dist: r position) &lt; min) ifTrue: [
				cercano:= r.
				min:= (aRobot position dist: r position)
			]
		]
	].
	^cercano</body>

<body package="Framework" selector="robotsOnColum:">robotsOnColum: aXValue
	| robots |
	robots:= self namedRobots select: [ :r | r direction x == aXValue ].
	^robots</body>

<body package="Framework" selector="robotsOnRow:">robotsOnRow: aYValue
	| robots |
	robots:= self namedRobots select: [ :r | r direction y == aYValue ].
	^robots</body>

<body package="Framework" selector="robotsOn:">robotsOn: aPoint
	| robots |
	robots:= self namedRobots select: [ :r | r direction == aPoint ].
	^robots</body>

<body package="Framework" selector="robotTomaTokens:hasta:">robotTomaTokens: aRobot hasta: oldPosition
	"agarra un tokens si esta a menos de 10 puntos de distancia"
	| point |
	self tokens do: [ :t |
		point:= t position pointNearestLine: oldPosition to: aRobot position.
		((point dist: t position) &lt;= 10) ifTrue: [ ^t ]
	].
	^nil</body>
</methods>

<methods>
<class-id>RobotWorld</class-id> <category>path management</category>

<body package="Framework" selector="addPath:for:">addPath: aPath for: aRobot

		self paths add: aPath.
		self changed: #newPath with: (Array with:aPath with: aRobot).</body>

<body package="Framework" selector="addPath:">addPath: aPath
	^self error: 'NOOO'.
</body>

<body package="Framework" selector="clearPaths">clearPaths

		self paths: OrderedCollection new.
		self changed: #pathsCleared.</body>
</methods>

<methods>
<class-id>RobotWorld</class-id> <category>event accessing</category>

<body package="Framework" selector="addToken:">addToken: aToken
	self tokens add: aToken.
	self changed: #newToken with: aToken</body>

<body package="Framework" selector="chocarRobot:with:">chocarRobot: aRobot with: otherRobot
	[(aRobot position dist: otherRobot position) &lt; 5] whileTrue: [
		aRobot randomDireccion; randomMoveSteps.
		otherRobot randomDireccion; randomMoveSteps
	].
	aRobot battery charge: aRobot battery charge - 10.
	otherRobot battery charge: otherRobot battery charge - 10</body>

<body package="Framework" selector="clearTokens">clearTokens
	self tokens: OrderedCollection new</body>

<body package="Framework" selector="makeShot:from:">makeShot: aShot from: aRobot
	| cercano |
	aShot addPoint: (aRobot position + (Point r: aShot gun distancia theta: ((Float pi / 180) * (aRobot direction negated - 90)))) rounded.
	self changed: #newShot with: aShot.
	self namedRobots do: [ 
		:r | 
		(aRobot == r) ifFalse: [
			r isAlive ifTrue: [
				cercano:= r position pointNearestLine: (aShot points at: 1) to: (aShot points at: 2).
				((cercano dist: r position) &lt;= aShot gun distancia) ifTrue: [ r receiveDisparo: aShot ]
			]
		]
	]</body>

<body package="Framework" selector="addShot:from:">addShot: aShot from: aRobot
	self shots at: aRobot put: aShot.
	self changed: #newShot with: aShot</body>

<body package="Framework" selector="clearShots">clearShots
	self shots: Dictionary new</body>
</methods>

<methods>
<class-id>RobotWorld</class-id> <category>actions</category>

<body package="Framework" selector="addRandomTokens:">addRandomTokens: aNumber
	| random token point r_x r_y armas |
	self tamano isInfinito not.
	OrderedCollection new.
	aNumber timesRepeat: [
		random:= Random new.
		self tamano isInfinito ifTrue: [
			point:= Point x: ((random next * 750) rounded * self generateNegOPos) y: ((random next * 750) rounded * self generateNegOPos).
		]
		ifFalse: [
			"Debo obtener un punto dentro del rectangulo mundo"
			point:= 999999@999999.
			r_x:= 1000.
			r_y:= 1000.
			[self tamano canMove: point] whileFalse: [
				point x: (random next * r_x) rounded * self generateNegOPos.
				point y: (random next * r_y) rounded * self generateNegOPos.
				r_x:= r_x - 50.
				r_y:= r_y - 50.
			]
		].

		"Una vez obtenida una posicion valida para el token le asigno arma o carga"		
		((random next * 2) truncated == 0) ifTrue: [ 
			"Creo el token con arma"
			armas:= Gun subclasses asArray.
			token:= Token newWithArma: ((armas at: ((random next * armas size + 1) truncated)) new)
		]
		ifFalse: [
			"creo el token vacio, es de vida"
			token:= Token newWithCharge.
		].
		token position: point.
		self addToken:  token.
	]</body>

<body package="Framework" selector="makeMover">makeMover
	| order index |
	self changed: #removeShots.
	order:= self createOrderList.
	index:= 1.
	order size timesRepeat: [
		(self namedRobots values at: (order at: index)) move.
		index:= index + 1
	]</body>

<body package="Framework" selector="makeDefender">makeDefender
	self shots keysDo: [ :r |
		self makeShot: (self shots at: r) from: r
	]</body>

<body package="Framework" selector="makeDisparar">makeDisparar
	| order index |
	order:= self createOrderList.
	index:= 1.
	order size timesRepeat: [
		(self namedRobots values at: (order at: index)) shot.
		index:= index + 1
	]</body>

<body package="Framework" selector="makeTurno">makeTurno
	self perform: (self moves at: self actualMove).
	(self actualMove = 3)
		ifTrue: [ self actualMove: 1 ]
		ifFalse: [ self actualMove: self actualMove + 1 ].</body>
</methods>

<methods>
<class-id>RobotWorld</class-id> <category>private</category>

<body package="Framework" selector="moves">moves
	^moves</body>

<body package="Framework" selector="createOrderList">createOrderList
	| random numRobots order generate |
	random:= Random new.
	numRobots:= self namedRobots size.
	order:= List new.
	[order size = numRobots] whileFalse: [
		generate:= (random next * numRobots + 1) truncated.
		(order includes: generate) ifFalse: [ order add: generate ]
	].
	^order</body>

<body package="Framework" selector="shots:">shots: aCollection
	shots:= aCollection.</body>

<body package="Framework" selector="eliminarToken:">eliminarToken: aToken
	(aToken isNil) ifFalse:[
	self tokens remove: aToken.
	self changed: #removeToken with: aToken].</body>

<body package="Framework" selector="actualMove">actualMove
	^actual_move</body>

<body package="Framework" selector="actualMove:">actualMove: aNumber
	actual_move:= aNumber</body>

<body package="Framework" selector="generateNegOPos">generateNegOPos
	| random num |
	random:= Random new.
	num:= random next * 2.
	(num &gt; 1)
		 ifTrue: [ ^1 ]
		ifFalse: [ ^-1 ]
			</body>
</methods>

<methods>
<class-id>RobotWorld</class-id> <category>private - accessing</category>

<body package="Framework" selector="namedRobots:">namedRobots: aNamedRobots 

		namedRobots:=aNamedRobots.</body>

<body package="Framework" selector="paths:">paths: aPaths 

		paths:=aPaths.</body>
</methods>


<methods>
<class-id>NoRenamingInspector</class-id> <category>interface opening</category>

<body package="Framework" selector="postBuildWith:">postBuildWith: aBuilder

	| win |
	(aBuilder componentAt: #text) widget controller autoAccept: false.
	(win := aBuilder window) notNil
		ifTrue: [win icon: (Icon constantNamed: #inspector)].</body>
</methods>

<methods>
<class-id>NoRenamingInspector</class-id> <category>initialize-release</category>

<body package="Framework" selector="resetLabel">resetLabel
	"Reset the receiver's label"
	| win |
	(win := builder window) notNil
		ifTrue:
			[win icon: (Icon constantNamed: #inspector)].</body>
</methods>

<methods>
<class-id>NoRenamingInspector</class-id> <category>private</category>

<body package="Framework" selector="fieldMenu">fieldMenu
	"Inspector flushMenus"
	| m |
	m := Menu
		labels: 'inspect'
		values: #(inspectField).
	^m</body>
</methods>


<methods>
<class-id>ShotView</class-id> <category>displaying</category>

<body package="Framework" selector="displayOn:">displayOn: aGraphicsContext
	self color ifNil: [ self color: ColorValue yellow ].
	aGraphicsContext paint: self color.
	aGraphicsContext lineWidth: 5.
	aGraphicsContext displayPolyline: (self model points)</body>
</methods>


<methods>
<class-id>BrushUp</class-id> <category>robot functions</category>

<body package="Framework" selector="move:">move: aDistance

		self robot doMove: aDistance.</body>
</methods>

<methods>
<class-id>BrushUp</class-id> <category>state changes</category>

<body package="Framework" selector="liftBrush">liftBrush
		"Do nothing - brush is already up"</body>

<body package="Framework" selector="lowerBrush">lowerBrush

		self robot state: (InPlaceBrushDown robot: self robot).</body>
</methods>

<methods>
<class-id>BrushUp</class-id> <category>testing</category>

<body package="Framework" selector="isBrushDown">isBrushDown

		^false.</body>

<body package="Framework" selector="isBrushUp">isBrushUp

		^true.</body>
</methods>


<methods>
<class-id>Shield class</class-id> <category>instance creation</category>

<body package="Framework" selector="robot:">robot: aRobot
	^super new initialize: aRobot</body>
</methods>


<methods>
<class-id>Shield</class-id> <category>accessing</category>

<body package="Framework" selector="robot">robot
	^robot</body>
</methods>

<methods>
<class-id>Shield</class-id> <category>initialize-release</category>

<body package="Framework" selector="initialize:">initialize: aRobot
	robot:= aRobot</body>
</methods>

<methods>
<class-id>Shield</class-id> <category>actions</category>

<body package="Framework" selector="receiveDisparo:">receiveDisparo: aShot
	^self subclassResponsibility</body>
</methods>


<methods>
<class-id>NullShield</class-id> <category>actions</category>

<body package="Framework" selector="receiveDisparo:">receiveDisparo: aShot
	^aShot gun descarga</body>
</methods>


<methods>
<class-id>Movement class</class-id> <category>instance creation</category>

<body package="Framework" selector="robot:">robot: aRobot
	^super new initialize: aRobot</body>
</methods>


<methods>
<class-id>Movement</class-id> <category>testing</category>

<body package="Framework" selector="isMovementCircular">isMovementCircular
	^false</body>

<body package="Framework" selector="isMovementRepetitive">isMovementRepetitive
	^false</body>
</methods>

<methods>
<class-id>Movement</class-id> <category>initialize-release</category>

<body package="Framework" selector="initialize:">initialize: aRobot
	robot:= aRobot</body>
</methods>

<methods>
<class-id>Movement</class-id> <category>accessing</category>

<body package="Framework" selector="robot">robot
	^robot</body>
</methods>

<methods>
<class-id>Movement</class-id> <category>actions</category>

<body package="Framework" selector="doMove">doMove
	"Reimplementa la subclase"</body>

<body package="Framework" selector="move">move
	self robot isAlive ifTrue: [
		self doMove
	]</body>
</methods>


<methods>
<class-id>MovementRepetitive</class-id> <category>testing</category>

<body package="Framework" selector="isMovementRepetitive">isMovementRepetitive
	^true</body>
</methods>

<methods>
<class-id>MovementRepetitive</class-id> <category>initialize-release</category>

<body package="Framework" selector="initialize:">initialize: aRobot
	super initialize: aRobot.
	code:= '"Para referirse al Robot hagalo con robot."'</body>
</methods>

<methods>
<class-id>MovementRepetitive</class-id> <category>accessing</category>

<body package="Framework" selector="code:">code: aCode
	code:= aCode</body>

<body package="Framework" selector="code">code
	^code</body>
</methods>

<methods>
<class-id>MovementRepetitive</class-id> <category>actions</category>

<body package="Framework" selector="doMove">doMove
	(self code isEmpty) ifFalse: [	Compiler evaluate: self code for: self logged: false ]</body>
</methods>


<methods>
<class-id>NullMovement</class-id> <category>actions</category>

<body package="Framework" selector="doMove">doMove</body>
</methods>


<methods>
<class-id>MovementRandom</class-id> <category>actions</category>

<body package="Framework" selector="doMove">doMove
	self robot randomDireccion.
	self robot randomMoveSteps</body>
</methods>


<methods>
<class-id>RobotController class</class-id> <category>instance creation</category>

<body package="Framework" selector="new:">new: aInspector
	^super new initialize: aInspector</body>
</methods>


<methods>
<class-id>RobotController</class-id> <category>events</category>

<body package="Framework" selector="redButtonPressedEvent:">redButtonPressedEvent: event
	(self inspector == nil) ifFalse: [ (self inspector new: self) open ]</body>
</methods>

<methods>
<class-id>RobotController</class-id> <category>accessing</category>

<body package="Framework" selector="inspector">inspector
	^inspector</body>
</methods>

<methods>
<class-id>RobotController</class-id> <category>initialize-release</category>

<body package="Framework" selector="initialize:">initialize: aInspector
	inspector:= aInspector</body>
</methods>

<methods>
<class-id>RobotController</class-id> <category>control</category>

<body package="Framework" selector="isControlWanted">isControlWanted

		^self viewHasCursor.</body>

<body package="Framework" selector="isControlActive">isControlActive

		^self viewHasCursor.</body>
</methods>


<methods>
<class-id>MovementWithRadar</class-id> <category>actions</category>

<body package="Framework" selector="doMove">doMove
	| aRobot |
	aRobot:= self robot world robotMasCercano: self robot.
	aRobot ifNotNil: [
		((aRobot position x@0 dist: self robot position x@0) &lt; (0@aRobot position y dist: 0@self robot position y)) ifTrue: [
			"me muevo por el eje X"
			(aRobot position x &gt; self robot position x) ifTrue: [
				self robot east.
				self robot move: (aRobot position x - self robot position x)
			]
			ifFalse: [
				self robot west.
				self robot move: (self robot position x - aRobot position x)
			].
			(aRobot position y &gt; self robot position y)
					ifTrue: [ self robot south ]
					ifFalse: [ self robot north ]
		]
		ifFalse: [
			"me muevo por el eje Y"
			(aRobot position y &gt; self robot position y) ifTrue: [
				self robot north.
				self robot move: (aRobot position y - self robot position y)
			]
			ifFalse: [
				self robot south.
				self robot move: (aRobot position y - self robot position y)
			].
			(aRobot position x &gt; self robot position x)
					ifTrue: [ self robot east ]
					ifFalse: [ self robot west ]
		].
		((self robot position dist: aRobot position) &gt; self robot gun distancia) ifTrue: [
			self robot move: (self robot position dist: aRobot position) - self robot gun distancia + 10.
		]
	]</body>
</methods>


<methods>
<class-id>BrushDown</class-id> <category>state changes</category>

<body package="Framework" selector="lowerBrush">lowerBrush
		"Do nothing - the brush is already down"</body>

<body package="Framework" selector="liftBrush">liftBrush

		self robot state: (BrushUp robot: self robot).</body>
</methods>

<methods>
<class-id>BrushDown</class-id> <category>testing</category>

<body package="Framework" selector="isBrushDown">isBrushDown

		^true.</body>

<body package="Framework" selector="isBrushUp">isBrushUp

		^false.</body>
</methods>


<methods>
<class-id>InPlaceBrushDown</class-id> <category>robot functions</category>

<body package="Framework" selector="move:">move: aDistance

		self robot startNewPath.
		self robot state: (InMotionBrushDown robot: self robot).
		self robot state move: aDistance.</body>
</methods>


<methods>
<class-id>InMotionBrushDown</class-id> <category>robot functions</category>

<body package="Framework" selector="move:">move: aDistance

		self robot doMove: aDistance.
		self robot recordPosition.</body>
</methods>

<methods>
<class-id>InMotionBrushDown</class-id> <category>state changes</category>

<body package="Framework" selector="liftBrush">liftBrush

		self robot endPath.
		super liftBrush.</body>
</methods>


<methods>
<class-id>RobotView class</class-id> <category>resources</category>

<body package="Framework" selector="basicImage">basicImage
	"UIMaskEditor new openOnClass: self andSelector: #basicImage"

	&lt;resource: #image&gt;
	^(Image extent: 50@50 depth: 8 bitsPerPixel: 8 palette: (MappedPalette withColors: ((Array new: 184) at: 1 put: (ColorValue scaledRed: 8191 scaledGreen: 7662 scaledBlue: 7662); at: 2 put: (ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 6605); at: 3 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 6077); at: 4 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 6341); at: 5 put: (ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 5812); at: 6 put: (ColorValue scaledRed: 7926 scaledGreen: 7134 scaledBlue: 7134); at: 7 put: (ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 7134); at: 8 put: (ColorValue scaledRed: 7134 scaledGreen: 6869 scaledBlue: 5548); at: 9 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5284); at: 10 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 5548); at: 11 put: (ColorValue scaledRed: 6605 scaledGreen: 6341 scaledBlue: 5284); at: 12 put: (ColorValue scaledRed: 7134 scaledGreen: 6341 scaledBlue: 4756); at: 13 put: (ColorValue scaledRed: 5812 scaledGreen: 5548 scaledBlue: 5548); at: 14 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4227); at: 15 put: (ColorValue scaledRed: 6341 scaledGreen: 6077 scaledBlue: 4491); at: 16 put: (ColorValue scaledRed: 5812 scaledGreen: 5548 scaledBlue: 4227); at: 17 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 3699); at: 18 put: (ColorValue scaledRed: 6869 scaledGreen: 5812 scaledBlue: 4227); at: 19 put: (ColorValue scaledRed: 5812 scaledGreen: 4227 scaledBlue: 4227); at: 20 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 3434); at: 21 put: (ColorValue scaledRed: 5548 scaledGreen: 4491 scaledBlue: 2906); at: 22 put: (ColorValue scaledRed: 5020 scaledGreen: 4756 scaledBlue: 3170); at: 23 put: (ColorValue scaledRed: 4756 scaledGreen: 3963 scaledBlue: 2906); at: 24 put: (ColorValue scaledRed: 4756 scaledGreen: 3699 scaledBlue: 3170); at: 25 put: (ColorValue scaledRed: 4491 scaledGreen: 3699 scaledBlue: 2113); at: 26 put: (ColorValue scaledRed: 5020 scaledGreen: 4227 scaledBlue: 2378); at: 27 put: (ColorValue scaledRed: 4756 scaledGreen: 3434 scaledBlue: 2113); at: 28 put: (ColorValue scaledRed: 4227 scaledGreen: 2906 scaledBlue: 1849); at: 29 put: (ColorValue scaledRed: 4756 scaledGreen: 4227 scaledBlue: 2642); at: 30 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1321); at: 31 put: (ColorValue scaledRed: 3963 scaledGreen: 2113 scaledBlue: 1585); at: 32 put: (ColorValue scaledRed: 3170 scaledGreen: 2906 scaledBlue: 1585); at: 33 put: (ColorValue scaledRed: 2906 scaledGreen: 2378 scaledBlue: 1056); at: 34 put: (ColorValue scaledRed: 3170 scaledGreen: 1056 scaledBlue: 792); at: 35 put: (ColorValue scaledRed: 2906 scaledGreen: 1321 scaledBlue: 792); at: 36 put: (ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 528); at: 37 put: (ColorValue scaledRed: 1849 scaledGreen: 264 scaledBlue: 264); at: 38 put: (ColorValue scaledRed: 2113 scaledGreen: 264 scaledBlue: 0); at: 39 put: (ColorValue scaledRed: 2378 scaledGreen: 0 scaledBlue: 0); at: 40 put: ColorValue white; at: 41 put: (ColorValue scaledRed: 7926 scaledGreen: 7926 scaledBlue: 7398); at: 42 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7134); at: 43 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 5812); at: 44 put: (ColorValue scaledRed: 7134 scaledGreen: 6869 scaledBlue: 5284); at: 45 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 5020); at: 46 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 5812); at: 47 put: (ColorValue scaledRed: 7134 scaledGreen: 6341 scaledBlue: 4491); at: 48 put: (ColorValue scaledRed: 7134 scaledGreen: 5548 scaledBlue: 5284); at: 49 put: (ColorValue scaledRed: 6605 scaledGreen: 5812 scaledBlue: 4227); at: 50 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 4756); at: 51 put: (ColorValue scaledRed: 6341 scaledGreen: 4491 scaledBlue: 4491); at: 52 put: (ColorValue scaledRed: 6077 scaledGreen: 5548 scaledBlue: 3699); at: 53 put: (ColorValue scaledRed: 6341 scaledGreen: 5284 scaledBlue: 3699); at: 54 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 4491); at: 55 put: (ColorValue scaledRed: 5284 scaledGreen: 4227 scaledBlue: 3170); at: 56 put: (ColorValue scaledRed: 5284 scaledGreen: 3699 scaledBlue: 3699); at: 57 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 3170); at: 58 put: (ColorValue scaledRed: 4756 scaledGreen: 4227 scaledBlue: 2378); at: 59 put: (ColorValue scaledRed: 4227 scaledGreen: 2906 scaledBlue: 2906); at: 60 put: (ColorValue scaledRed: 4756 scaledGreen: 3170 scaledBlue: 2113); at: 61 put: (ColorValue scaledRed: 4227 scaledGreen: 3699 scaledBlue: 2113); at: 62 put: (ColorValue scaledRed: 3699 scaledGreen: 3170 scaledBlue: 1849); at: 63 put: (ColorValue scaledRed: 4227 scaledGreen: 2642 scaledBlue: 1849); at: 64 put: (ColorValue scaledRed: 3170 scaledGreen: 2642 scaledBlue: 1585); at: 65 put: (ColorValue scaledRed: 3699 scaledGreen: 1849 scaledBlue: 1849); at: 66 put: (ColorValue scaledRed: 3170 scaledGreen: 1849 scaledBlue: 1056); at: 67 put: (ColorValue scaledRed: 3434 scaledGreen: 1321 scaledBlue: 1321); at: 68 put: (ColorValue scaledRed: 3699 scaledGreen: 2113 scaledBlue: 1585); at: 69 put: (ColorValue scaledRed: 2906 scaledGreen: 1056 scaledBlue: 792); at: 70 put: (ColorValue scaledRed: 2378 scaledGreen: 1056 scaledBlue: 1321); at: 71 put: (ColorValue scaledRed: 2642 scaledGreen: 528 scaledBlue: 264); at: 72 put: (ColorValue scaledRed: 2378 scaledGreen: 528 scaledBlue: 528); at: 73 put: (ColorValue scaledRed: 2906 scaledGreen: 264 scaledBlue: 264); at: 74 put: (ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 264); at: 75 put: (ColorValue scaledRed: 2113 scaledGreen: 0 scaledBlue: 0); at: 76 put: (ColorValue scaledRed: 1849 scaledGreen: 264 scaledBlue: 0); at: 77 put: (ColorValue scaledRed: 1585 scaledGreen: 264 scaledBlue: 264); at: 78 put: (ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7926); at: 79 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 6869); at: 80 put: (ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 6077); at: 81 put: (ColorValue scaledRed: 7662 scaledGreen: 6341 scaledBlue: 6341); at: 82 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 5548); at: 83 put: (ColorValue scaledRed: 7398 scaledGreen: 5812 scaledBlue: 5812); at: 84 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 5284); at: 85 put: (ColorValue scaledRed: 6869 scaledGreen: 6341 scaledBlue: 4491); at: 86 put: (ColorValue scaledRed: 6869 scaledGreen: 5812 scaledBlue: 5020); at: 87 put: (ColorValue scaledRed: 6605 scaledGreen: 5812 scaledBlue: 3963); at: 88 put: (ColorValue scaledRed: 6869 scaledGreen: 4756 scaledBlue: 4756); at: 89 put: ColorValue magenta; at: 90 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 4227); at: 91 put: (ColorValue scaledRed: 6077 scaledGreen: 5284 scaledBlue: 3699); at: 92 put: (ColorValue scaledRed: 5812 scaledGreen: 5284 scaledBlue: 3963); at: 93 put: (ColorValue scaledRed: 5548 scaledGreen: 5020 scaledBlue: 3170); at: 94 put: (ColorValue scaledRed: 5284 scaledGreen: 4491 scaledBlue: 2642); at: 95 put: (ColorValue scaledRed: 5020 scaledGreen: 3699 scaledBlue: 3699); at: 96 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 2906); at: 97 put: (ColorValue scaledRed: 4491 scaledGreen: 3963 scaledBlue: 2642); at: 98 put: (ColorValue scaledRed: 4756 scaledGreen: 3963 scaledBlue: 2378); at: 99 put: (ColorValue scaledRed: 4491 scaledGreen: 3170 scaledBlue: 2113); at: 100 put: (ColorValue scaledRed: 4227 scaledGreen: 3434 scaledBlue: 2113); at: 101 put: (ColorValue scaledRed: 3434 scaledGreen: 3170 scaledBlue: 1849); at: 102 put: (ColorValue scaledRed: 3699 scaledGreen: 2378 scaledBlue: 2378); at: 103 put: (ColorValue scaledRed: 3434 scaledGreen: 2378 scaledBlue: 1321); at: 104 put: (ColorValue scaledRed: 3699 scaledGreen: 2113 scaledBlue: 1321); at: 105 put: (ColorValue scaledRed: 2906 scaledGreen: 1849 scaledBlue: 1056); at: 106 put: (ColorValue scaledRed: 3170 scaledGreen: 1585 scaledBlue: 1056); at: 107 put: (ColorValue scaledRed: 3699 scaledGreen: 1849 scaledBlue: 1585); at: 108 put: (ColorValue scaledRed: 2906 scaledGreen: 2642 scaledBlue: 1585); at: 109 put: (ColorValue scaledRed: 2378 scaledGreen: 1321 scaledBlue: 792); at: 110 put: (ColorValue scaledRed: 2113 scaledGreen: 792 scaledBlue: 264); at: 111 put: (ColorValue scaledRed: 2378 scaledGreen: 528 scaledBlue: 264); at: 112 put: (ColorValue scaledRed: 1585 scaledGreen: 264 scaledBlue: 0); at: 113 put: (ColorValue scaledRed: 1849 scaledGreen: 0 scaledBlue: 0); at: 114 put: (ColorValue scaledRed: 8191 scaledGreen: 7926 scaledBlue: 7926); at: 115 put: (ColorValue scaledRed: 7926 scaledGreen: 7398 scaledBlue: 7398); at: 116 put: (ColorValue scaledRed: 7662 scaledGreen: 7662 scaledBlue: 6077); at: 117 put: (ColorValue scaledRed: 7398 scaledGreen: 7134 scaledBlue: 5548); at: 118 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 5284); at: 119 put: (ColorValue scaledRed: 7134 scaledGreen: 6605 scaledBlue: 5020); at: 120 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 6077); at: 121 put: (ColorValue scaledRed: 6869 scaledGreen: 5284 scaledBlue: 5284); at: 122 put: (ColorValue scaledRed: 7398 scaledGreen: 6605 scaledBlue: 4756); at: 123 put: (ColorValue scaledRed: 6077 scaledGreen: 5812 scaledBlue: 4227); at: 124 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 4227); at: 125 put: (ColorValue scaledRed: 6341 scaledGreen: 5812 scaledBlue: 3963); at: 126 put: (ColorValue scaledRed: 6077 scaledGreen: 5284 scaledBlue: 3434); at: 127 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 4756); at: 128 put: (ColorValue scaledRed: 5812 scaledGreen: 4491 scaledBlue: 3170); at: 129 put: (ColorValue scaledRed: 5548 scaledGreen: 4756 scaledBlue: 3170); at: 130 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3434); at: 131 put: (ColorValue scaledRed: 5284 scaledGreen: 3434 scaledBlue: 3434); at: 132 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 3963); at: 133 put: (ColorValue scaledRed: 5020 scaledGreen: 4491 scaledBlue: 2642); at: 134 put: (ColorValue scaledRed: 4491 scaledGreen: 3170 scaledBlue: 3170); at: 135 put: (ColorValue scaledRed: 4491 scaledGreen: 3963 scaledBlue: 2378); at: 136 put: (ColorValue scaledRed: 4756 scaledGreen: 3699 scaledBlue: 2378); at: 137 put: (ColorValue scaledRed: 3963 scaledGreen: 3434 scaledBlue: 2113); at: 138 put: (ColorValue scaledRed: 4491 scaledGreen: 2642 scaledBlue: 2378); at: 139 put: (ColorValue scaledRed: 5812 scaledGreen: 5284 scaledBlue: 3699); at: 140 put: (ColorValue scaledRed: 3699 scaledGreen: 2906 scaledBlue: 1585); at: 141 put: (ColorValue scaledRed: 3963 scaledGreen: 2378 scaledBlue: 1849); at: 142 put: (ColorValue scaledRed: 3170 scaledGreen: 1849 scaledBlue: 1849); at: 143 put: (ColorValue scaledRed: 2906 scaledGreen: 2378 scaledBlue: 1585); at: 144 put: (ColorValue scaledRed: 3434 scaledGreen: 1056 scaledBlue: 1056); at: 145 put: (ColorValue scaledRed: 2906 scaledGreen: 1585 scaledBlue: 1056); at: 146 put: (ColorValue scaledRed: 2906 scaledGreen: 1321 scaledBlue: 1321); at: 147 put: (ColorValue scaledRed: 2378 scaledGreen: 1056 scaledBlue: 792); at: 148 put: (ColorValue scaledRed: 1849 scaledGreen: 528 scaledBlue: 528); at: 149 put: (ColorValue scaledRed: 2378 scaledGreen: 264 scaledBlue: 264); at: 150 put: (ColorValue scaledRed: 1585 scaledGreen: 0 scaledBlue: 0); at: 151 put: (ColorValue scaledRed: 8191 scaledGreen: 8191 scaledBlue: 7398); at: 152 put: (ColorValue scaledRed: 7926 scaledGreen: 7662 scaledBlue: 6869); at: 153 put: (ColorValue scaledRed: 7926 scaledGreen: 6605 scaledBlue: 6605); at: 154 put: (ColorValue scaledRed: 7662 scaledGreen: 7398 scaledBlue: 6077); at: 155 put: (ColorValue scaledRed: 7398 scaledGreen: 6869 scaledBlue: 6869); at: 156 put: (ColorValue scaledRed: 7662 scaledGreen: 7134 scaledBlue: 5020); at: 157 put: (ColorValue scaledRed: 6869 scaledGreen: 6077 scaledBlue: 4227); at: 158 put: (ColorValue scaledRed: 6341 scaledGreen: 6077 scaledBlue: 4756); at: 159 put: (ColorValue scaledRed: 6869 scaledGreen: 4491 scaledBlue: 4491); at: 160 put: (ColorValue scaledRed: 6341 scaledGreen: 5548 scaledBlue: 3963); at: 161 put: (ColorValue scaledRed: 6341 scaledGreen: 4756 scaledBlue: 4756); at: 162 put: (ColorValue scaledRed: 6605 scaledGreen: 6077 scaledBlue: 4491); at: 163 put: (ColorValue scaledRed: 5812 scaledGreen: 5020 scaledBlue: 3699); at: 164 put: (ColorValue scaledRed: 5284 scaledGreen: 4756 scaledBlue: 3170); at: 165 put: (ColorValue scaledRed: 5548 scaledGreen: 3963 scaledBlue: 3699); at: 166 put: (ColorValue scaledRed: 5020 scaledGreen: 4227 scaledBlue: 2642); at: 167 put: (ColorValue scaledRed: 4756 scaledGreen: 4227 scaledBlue: 2906); at: 168 put: (ColorValue scaledRed: 5284 scaledGreen: 3963 scaledBlue: 2642); at: 169 put: (ColorValue scaledRed: 4756 scaledGreen: 3434 scaledBlue: 2378); at: 170 put: (ColorValue scaledRed: 4227 scaledGreen: 2906 scaledBlue: 2113); at: 171 put: (ColorValue scaledRed: 3963 scaledGreen: 2642 scaledBlue: 2642); at: 172 put: (ColorValue scaledRed: 3963 scaledGreen: 3434 scaledBlue: 1849); at: 173 put: (ColorValue scaledRed: 3434 scaledGreen: 2906 scaledBlue: 1585); at: 174 put: (ColorValue scaledRed: 3699 scaledGreen: 2906 scaledBlue: 1321); at: 175 put: (ColorValue scaledRed: 3434 scaledGreen: 1849 scaledBlue: 1321); at: 176 put: (ColorValue scaledRed: 2642 scaledGreen: 2378 scaledBlue: 1585); at: 177 put: (ColorValue scaledRed: 3170 scaledGreen: 1321 scaledBlue: 792); at: 178 put: (ColorValue scaledRed: 2378 scaledGreen: 1056 scaledBlue: 528); at: 179 put: (ColorValue scaledRed: 2642 scaledGreen: 792 scaledBlue: 528); at: 180 put: (ColorValue scaledRed: 2378 scaledGreen: 792 scaledBlue: 792); at: 181 put: (ColorValue scaledRed: 1849 scaledGreen: 528 scaledBlue: 264); at: 182 put: (ColorValue scaledRed: 2642 scaledGreen: 0 scaledBlue: 0); at: 183 put: (ColorValue scaledRed: 2113 scaledGreen: 264 scaledBlue: 264); at: 184 put: (ColorValue scaledRed: 1321 scaledGreen: 0 scaledBlue: 0); yourself)) usingBits: (ByteArray fromPackedString: 'VE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE @@E!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!X@@AXVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XV@@@VE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE @@E!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!X@@AXVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XV@@@VE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE @@E!XVE!XVE!XVE!XVE!XVE!XVE!XVE ?O3&lt;?O5!XVE!XVE!XVE!XVE!XVE!XVE!XVE!X@@AXVE!XVE!XVE!XVE!XVE!XVE!XO3&lt;?_W5\DG4?O3=XVE!XVE!XVE!XVE!XVE!XVE!XV@@@VE!XVE!XVE!XVE!XVE!XVC&lt;?O75=WJU"Y&amp;M]_UXPO3&lt;?VE!XVE!XVE!XVE!XVE!XVE @@E!XVE!XVE!XVE!XVE ?O3==DG5]X6Y,[6=/[H,XWAB\U#&lt;?O5!XVE!XVE!XVE!XVE!X@@AXVE!XVE!XVE!XVC&lt;?DEXP H^K$KQ/%YVU-6=/[YB-)W5TK ,?O5!XVE!XVE!XVE!XV@@@VE!XVE!XVE!XVC&lt;G]!B%"6!-[9VU%WA0%YVU%YVU[;E(X1QT%0(?VE!XVE!XVE!XVE @@E!XVE!XVE!XVE ?@".",RRU%YU0\IU0%WA0R$)0\IVU[;Q,LD&gt;WO5!XVE!XVE!XVE!X@@AXVE!XVE!XVE!XO0QS#D.U%YU0R$)0\IVU\D)J\GA0%YV7R8\G%#=XVE!XVE!XVE!XV@@@VE!XVE ?O3&lt;?O48+($YG$YVU%WA0%WBU%YVU\GA0\IT$"RV2L@FWO3&lt;?O3&lt;?VE!XVE @@E!XVE ?]D9OL0]OBJ:5PH%@%YU0\IU0%YVU%YU0\GBQ(E]BIVHH%%L*%""](3=XVE!X@@AXVE!XO2()@3LGS0!A-TBIYYVU\GBU\IVU%YU0\GAK$U]WP"U"A9X3AIZV''U0?VE!XV@@@VE!XVC&lt;GJWYYS"06RH&gt;B)HJB$[YJR$)J\D)JR$)G)EBX&amp;EJTRU(AJUPASR$MO5!XVE @@E!XVE ?&amp;T:!]GM6,KVB''*B L!I@\IU0R+Y0\IV3^@T@\WE1*+X[T9X3]IX)CS=XVE!X@@AXVE!XO4=3VT8+_9QBK2=RT"=8L+NU\GAF\IVU!P@''I2\''I7^SRU*WJ@^VJE$?VE!XV@@@VE!XVC&lt;DVWQOB4EJD)"X&amp;I"XT(I0R$)0,D)JR+LFI2]MI2]1YT,[A9X3@R%5O5!XVE @@E!XVE ?]G)NJ1QFQI!2@@@@\%BQIKIIPZ!)IKQKMR\''I2\''I25KRY&gt;W%3MN]#=XVE!X@@AXVE!XO3@3\7Y''R!I2\)(-_#U^%RRR,QZ_*T24%TT5_ 17&amp;''E1#[ZGJ"$3&amp;UP?VE!XV@@@VE!XVC&gt;#L7T+P2ZEW!^*$YNU%WBU%YT"E9J7%WA0%YVR#S(7M4@%E")N R(KO5!XVE @@E!XVE ?V8 ,](MHR''A0\GA0\GA0%YVU%X67%WA0\GA0\GA0R$)JRSE3BE&lt;CB3=XVE!X@@AXVE!XO0^F''7$G,BY0R7A0\GA0\GBU%YVQ%WA0R''A0\GA0\GA0R*$H@%2]S''T?VE!XV@@@VE!XVC&lt;G^(Y9]#X&amp;R$)0\GA0\D)J\GBU,7A0\GA0\GA0\GA0\F9;TUFD%2$MO5!XVE @@E!XVE ?^ &lt;=LEQS,+UJ\GA0\GA0\GA0\D.6I"YJ\GA0\GA0R$)C] %=C"$)UC=XVE!X@@AXVE!XO3E:!*YTT3,&amp;R''A0\IVU\GBU\IVUR4)J\IVU\IUJR$(%V7%QXUL)S%P?VE!XV@@@VE!XVC&gt;!C%&lt;]L@5URD)J\GBU-9VU-9V7-;^7-9VU%WA0-+X%,B.[U!%TS7PPO5!XVE @@E!XVE  *:M OS"\A6(&amp;R''BU-;^U%[^7-;^7%YVU%YV7\GAJI#XK&amp;6DYL05\+S=XVE!X@@AXVE!XHJ,UXC5_''@\^I$)0-;^7%YV7%[^7-9VU%YVU-9U0R"X6B9-!NX)&lt; J4?VE!XV@@@VE!XVE ?O3&lt;?+G00UT &amp;R+^7%YU0\GB7-9U0R''AK%[^U\D)DJ7$PO3&lt;?O3&lt;?VE!XVE @@E!XVE!XVE!XVH9__@\^Q''BU-;^U%YV7-;^7%YVU%YV7%T,#M%Q9O3=XVE!XVE!XVE!X@@AXVE!XVE!XVE!XOSLPDQ*.QD.U%YU0\IV7%T-KR;Y0[&amp;&amp;.EI1VU#=XVE!XVE!XVE!XV@@@VE!XVE!XVE!XVJ&gt;&amp;XU4SDW&lt;&gt;Z$%0\GBU-9VU\BT!Y1,4U!NDGA0?VE!XVE!XVE!XVE @@E!XVE!XVE!XVE ?O3&lt;=!(Z#U%XZ*V%K%YU0[&amp;(&gt;)5Y=(6FF+C&lt;?VE!XVE!XVE!XVE!X@@AXVE!XVE!XVE!XVE ?O3&lt;?OC2DD:DT*J%AN3,SDE1!!(",O3=XVE!XVE!XVE!XVE!XV@@@VE!XVE!XVE!XVE!XVE ?O6,?OX &lt; EZ_EEXSWVL&lt;OZ0?O5!XVE!XVE!XVE!XVE!XVE @@E!XVE!XVE!XVE!XVE!XVE ?O3&lt;?G8 =!HBFX8",G3&lt;?VE!XVE!XVE!XVE!XVE!XVE!X@@AXVE!XVE!XVE!XVE!XVE!XVE!XO3&lt;?G36HOVP?O3=XVE!XVE!XVE!XVE!XVE!XVE!XV@@@VE!XVE!XVE!XVE!XVE!XVE!XVE!XO3&lt;?O3&lt;?O5!XVE!XVE!XVE!XVE!XVE!XVE!XVE @@E!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!X@@AXVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XV@@@VE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE @@E!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!X@@AXVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XV@@@VE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE @@E!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!XVE!X@@@b'))</body>

<body package="Framework" selector="image">image
	^OpaqueImage figure: self basicImage shape: self mask.</body>

<body package="Framework" selector="mask">mask
	"UIMaskEditor new openOnClass: self andSelector: #mask"

	&lt;resource: #image&gt;
	^(Image extent: 50@50 depth: 1 bitsPerPixel: 1 palette: CoveragePalette monoMaskPalette usingBits: (ByteArray fromPackedString: '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O @@@@@@@@G?0@@@@@@@C??8@@@@@@A???&lt;@@@@@@_???&lt;@@@@@C????8@@@@@O???? @@@@@????&gt;@@@@A??????8@@@O??????0@@@???????@@@C??????&lt;@@@O??????0@@@???????@@@C??????&lt;@@@O??????0@@@???????@@@C??????&lt;@@@O??????0@@@???????@@@C??????&lt;@@@O??????0@@@???????@@@C??????&lt;@@@O??????0@@@???????@@@A??????8@@@@_????0@@@@@????&gt;@@@@@C????8@@@@@O????@@@@@@O???0@@@@@@O??&lt;@@@@@@@O??@@@@@@@@G?0@@@@@@@@G&lt;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@a'))</body>

<body package="Framework" selector="greenImage">greenImage
	&lt;resource: #image&gt;
	^Image
		extent: 50 @ 50
		depth: 6
		bitsPerPixel: 8
		palette: (Graphics.MappedPalette withColors: (#(#(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 0 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 5010 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 6327 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 5814 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 3437 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 2890 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 2376 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 5814 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6617 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4497 3950 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 7934 6874)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 4240 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5557 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3950 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 3693 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6327 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7387 5814)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 5814 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2633 2376 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4497 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 5814 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 0 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6874 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7677 6617)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3950 3437 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4240 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 5300 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7677 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6617 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 6617 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 4240 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 2633 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6327 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 6070 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4497 3693 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5010 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4753 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 2376 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3693 3180 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 3180 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6874 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7677 6874)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4497 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 0 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 8191 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 0 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5814 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 2890 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5010 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 4753 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 2633 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 4497 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 7387)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4497 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 6327 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 7934 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 5557 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3693 2376))) collect: [:t1 | (t1 at: 1) value perform: (t1 at: 2)
						withArguments: (t1 at: 3)]))
		usingBits: (ByteArray fromPackedString: 'EQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQT@@ATUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTU@@@UEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEP@@EQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQT@@ATUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTU@@@UEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEP@@EQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQT@@ATUEQTUEQTUEQTUEQTUEQTUEQTUEQT_G1&lt;_G1TUEQTUEQTUEQTUEQTUEQTUEQTUEQTU@@@UEQTUEQTUEQTUEQTUEQTUEQTUG1&lt;_F!(ACA(_G1&lt;UEQTUEQTUEQTUEQTUEQTUEQTUEP@@EQTUEQTUEQTUEQTUEQTUEQ&lt;_G1(Z@Q$+J0PSF!PLG1&lt;_EQTUEQTUEQTUEQTUEQTUEQT@@ATUEQTUEQTUEQTUEQT_G1&lt;ZCA(SAB,+J2,+J2,"@P0!EA&lt;_G1TUEQTUEQTUEQTUEQTU@@@UEQTUEQTUEQTUEQ&lt;_CAPLLS$+J2,+J2,+J2,+J2,+FQ(BC2@_G1TUEQTUEQTUEQTUEP@@EQTUEQTUEQTUEQ&lt;(G@0YJ2,+J2,+J2,+J2,+J2,+J2,+ACLBJSX_EQTUEQTUEQTUEQT@@ATUEQTUEQTUEQT_M1X0J2,+J2,+J2,+J2,+J2,+J2,+J2,+@1,)G1TUEQTUEQTUEQTU@@@UEQTUEQTUEQTUG1@HJ2,+J2,+J2,+J2,+J2,+J2,+J2,+J2,(MA&lt;UEQTUEQTUEQTUEP@@EQTUEQT_G1&lt;_G0(VLB,+J2,+J2,+J2,+J2,+J2,+J2,+J2,+@1\)G1&lt;_G1&lt;_EQTUEQT@@ATUEQT_KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KA&lt;UEQTU@@@UEQTUG20,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0_EQTUEP@@EQTUEQ&lt;,K@@@@@@,KB0@@@@@@B0,@@@@@B0,K@@@@@@@KB0@@@@@@B0,KB0,G1TUEQT@@ATUEQT_KB0@KB0,@B0,@B0,K@@,K@@,KB0@KB0@KB0,@B0,KB0@KB0,KB0,KA&lt;UEQTU@@@UEQTUG20,@B0,K@@,K@@,KB0@KB0@KB0,@B0,@B0,K@@,KB0,@B0,KB0,KB0_EQTUEP@@EQTUEQ&lt;,K@@,KB0@KB0@KB0,@B0,@B0,K@@,K@@,KB0@KB0,K@@,KB4,KB0,G1TUEQT@@ATUEQT_KB0@KB0,@B0,@B0,K@@,K@@,KB0@KB0@KB0,@B0,KB0@KB0-KR0,KA&lt;UEQTU@@@UEQTUG20,@B0,K@@,K@@,KB0@KB0@KB0,@B0,@B0,K@@,KB0,@B0,KR4-KB0_EQTUEP@@EQTUEQ&lt;,K@@@@@@,KB0@KB0,@B0,@@@@@B0,K@@,KB0@KB0,K@@,KB4-KR4,G1TUEQT@@ATUEQT_KB0@@B0,KB0,@B0,K@@,K@@,KB0@KB0@KB0,@B0,KB0@KB0-KR4,KA&lt;UEQTU@@@UEQTUG20,@B0@KB0,K@@,KB0@KB0@KB0,@B0,@B0,K@@,KB0,@B0,KR4,KB0_EQTUEP@@EQTUEQ&lt;,K@@,@B0,KB0@KB0,@B0,@B0,K@@,K@@,KB0@KB0,K@@,KB4,KB0,G1TUEQT@@ATUEQT_KB0@KB0@KB0,@B0,K@@,K@@,KB0@KB0@KB0,@B0,KB0@KB0,KB0,KA&lt;UEQTU@@@UEQTUG20,@B0,@B0,K@@,KB0@KB0@KB0,@B0,@B0,K@@,KB0,@B0,KB0,KB0_EQTUEP@@EQTUEQ&lt;,K@@,KB0@KB0@@@@@@B0,@@@@@B0,K@@@@@@@KB0,K@@,KB0,KB0,G1TUEQT@@ATUEQTFKB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KA&lt;UEQTU@@@UEQTUA"0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0,KB0_EQTUEP@@EQTUEQT_G1&lt;_AR8CA2,+J2,+J2,+J2,+J2,+J2,+J2,+J2,+E!4LG1&lt;_G1&lt;_EQTUEQT@@ATUEQTUEQTUERT5K" +J2,+J2,+J2,+J2,+J2,+J2,+J2,+J0H]G1&lt;UEQTUEQTUEQTU@@@UEQTUEQTUEQTUI# LDR,+J2,+J2,+J2,+J2,+J2,+J2,+J2DTEA&lt;UEQTUEQTUEQTUEP@@EQTUEQTUEQTUEQH^CQL#DR,+J2,+J2,+J2,+J2,+J2,+EBL*B0,_EQTUEQTUEQTUEQT@@ATUEQTUEQTUEQT_G1&lt;&amp;BP$$EB,+J2,+J2,+J2,+J1PZI@4IAQ&lt;_EQTUEQTUEQTUEQTU@@@UEQTUEQTUEQTUEQT_G1&lt;_C 8*H2,+J2,+J2,+C@DMBQ EG1&lt;UEQTUEQTUEQTUEQTUEP@@EQTUEQTUEQTUEQTUEQT_G3H_I! NLQP+J1P#D0PNI T_G1TUEQTUEQTUEQTUEQTUEQT@@ATUEQTUEQTUEQTUEQTUEQT_G1&lt;_K1 &amp;J#DIAA EK1&lt;_EQTUEQTUEQTUEQTUEQTUEQTU@@@UEQTUEQTUEQTUEQTUEQTUEQTUG1&lt;_K2XXI"\_G1&lt;UEQTUEQTUEQTUEQTUEQTUEQTUEP@@EQTUEQTUEQTUEQTUEQTUEQTUEQTUG1&lt;_G1&lt;_G1TUEQTUEQTUEQTUEQTUEQTUEQTUEQT@@ATUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTU@@@UEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEP@@EQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQT@@ATUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTU@@@UEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEP@@EQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQT@@ATUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTU@@@b')</body>

<body package="Framework" selector="deadImage">deadImage
	"Tools.UIMaskEditor new openOnClass: self andSelector: #deadImage"

	&lt;resource: #image&gt;
	^(Image extent: 50@50 depth: 8 bitsPerPixel: 8 palette: (Graphics.MappedPalette withColors: (#(#(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 1316 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6327 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3950 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 6070 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 7934 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7934 6327)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5557 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7387 5814)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7387 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5010 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3950 2120 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 2890 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6874 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 6874 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4753 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 4497 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 2376 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 6327 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3693 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4240 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 4240 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 6070 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 5814 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4497 3693 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3437 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7677 6617)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2376 803 513)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5557 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 2890 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2120 256 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2376 0 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 4240 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 6874 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 1060 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6327 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 6327 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7934 7387)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 7934 7130)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 2890 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 5557 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5300 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7130 5814)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 2633 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6874 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 3693 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 4240 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 1060 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 5814 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 3693 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3180 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2376 803 256)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3693 3180 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 2633 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1863 256 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2120 0 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4240 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 1863 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 2633 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 5814 5814)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 3693 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4497 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 7934)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 6327 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 5814 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3950 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4497 3950 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 7934 6874)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 5814 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 0 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5814 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7677 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2376 513 256)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 5300 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5300 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7130 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1573 256 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 5010 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 2376 1316)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3693 1863 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6617 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3693 2120 1316)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4497 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 1863 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 1573 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2376 1316 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4497 3180 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 3437 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7387 7387)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2120 803 256)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5814 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 3180 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1863 0 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3693 2890 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 7130 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 2376 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6617 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 6617 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4497 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 7934 7934)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 1573 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3693 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4497 3950 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 5814 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3950 3437 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7677 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2376 256 256)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4753 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 5300 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5300 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 0 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7130 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1573 0 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 4753 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4753 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 4497 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4497 3180 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 7387)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 6070 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5557 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3950 2633 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7387 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 6874 6874)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5010 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3693 2890 1316)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 2890 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7130 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2633 2376 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4240 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 4240 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 3950 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 6070 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 6070 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3437 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2376 1060 513)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2633 803 513)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7677 6874)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3950 3437 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 2890 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1863 513 256)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2120 256 256)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2633 0 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1316 0 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4753 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 1863 1316)) ) collect: [:each | (each at: 1) value perform: (each at: 2) withArguments: (each at: 3)])) usingBits: (ByteArray fromPackedString: 'QTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTT@@DUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUE@@AEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQP@@QTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTT@@DUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUE@@AEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQP@@QTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTT@@DUEQTUEQTUEQTUEQTUEQTUEQTUEQTT+J2,+J4UEQTUEQTUEQTUEQTUEQTUEQTUEQTUE@@AEQTUEQTUEQTUEQTUEQTUEQTUEJ2,+[F1MA&amp;0+J2-EQTUEQTUEQTUEQTUEQTUEQTUEQP@@QTUEQTUEQTUEQTUEQTUEQR,+J61,SXAVS%]R[DPFJ2,+QTUEQTUEQTUEQTUEQTUEQTT@@DUEQTUEQTUEQTUEQTT+J2-,A&amp;1RU49USD1LUU4WSPZCQB,+J4UEQTUEQTUEQTUEQTUE@@AEQTUEQTUEQTUEQR,+A$PF\VU]YH-L\GA0#$1LVVQ&lt; F0?H0D+J4UEQTUEQTUEQTUEQP@@QTUEQTUEQTUEQR,LX@Z@WUMYSGA0\E1\\GA0\GA.[&amp;9.U0&lt;?"AD+QTUEQTUEQTUEQTT@@DUEQTUEQTUEQTT+AB1;!&amp;90\GA\WGA\\E1\M3]\[&amp;9.[&amp;9.LD^HJ4UEQTUEQTUEQTUE@@AEQTUEQTUEQTUEJ0]P[&amp;9.[''A\M3]\WGA0WC].[&amp;9.[&amp;9.[&amp;8L]R-EQTUEQTUEQTUEQP@@QTUEQTT+J2,+J4L,[&amp;9.[&amp;9.\E1\\E10\GA.[&amp;9.[&amp;9.[&amp;9.LA&amp;HJ2,+J2,+QTUEQTT@@DUEQTT+W$MGJ@1GCV9.[&amp;9.[&amp;9.WGA\\GA.[&amp;9.[&amp;9.[&amp;9.[%XM]U@*]RU6#2-EQTUE@@AEQTUEJ2(&amp;AR LQ69.[&amp;9.[&amp;9.[&amp;9.WGA.[&amp;9.[&amp;9.[&amp;9.[!5VCGT(A7U5]$4+QTUEQP@@QTUEQR,LI&amp;AFP2A.[&amp;9.[&amp;9.[&amp;9.[&amp;9.[&amp;9.[&amp;9.[&amp;9.[#-*L4$YI#&lt;YO"XUJ4UEQTT@@DUEQTT+^TNDW&amp;% @F9.[&amp;9.[&amp;9.[&amp;9.[&amp;9.[&amp;9.[&amp;9.[&amp;9.^H0\TGT(W''T&amp;ER-EQTUE@@AEQTUEJ4])Q"H"H"H"H"H"H&amp;8"H"H"H&amp;8"H"H"H"H"["H"H"H"H$&amp;HIP15ITX+QTUEQP@@QTUEQR,GQ%8"H"H"H"H"H"I.H"H"H"I.H"H"H"H"H"H"H"H"H"H\CGT(FRY/J4UEQTT@@DUEQTT+W&amp;]CH"H"H"H"H"H"["H"[&amp;9.["H"[&amp;9.H"H"H"H"H"H"H''^H"B!CXB-EQTUE@@AEQTUEJ3@(ZRH"H!=XVBH"H&amp;8"H&amp;9.H&amp;8"H&amp;9.\BH"Z2H"^&amp;9#H"I%J"X(^S&lt;+QTUEQP@@QTUEQR.OJF&lt;"H"I4OAH"H"I0H"H"H"I.H"I.[&amp;8"H''@"H"\-KRH"@")C\"(AJ4UEQTT@@DUEQTT+R&amp;  H"H"M51\WBH"["H"H"H"["H"[&amp;9.H"I\H"I\M3\"H"Q)CS4E@R-EQTUE@@AEQTUEJ01&amp;]2H"H!9\M%0"H&amp;8"H"H"H&amp;8"H"H"H"H"["H"WE1\H"HMAD56P6&lt;+QTUEQP@@QTUEQR,LY6X"H"H^M3\"H"I.H"I.[&amp;9.H"H"H"H"H&amp;8"H%1\WBH"R4-""BXUJ4UEQTT@@DUEQTT+Y1,4H"H"!(4"H"H"["H"[&amp;9.["H"[&amp;9.H"I.H"I\M2H"H !,@2X&amp;O2-EQTUE@@AEQTUEJ2Q''Y"H"H"H"H"H"H&amp;8"H"H"H&amp;8"H&amp;9.["H"["H"H"H"H&amp;EKPU@&amp;P3&lt;+QTUEQP@@QTUEQR.D@34"H"H"H"H"H"I.H"H"H"I.H"I.[&amp;8"H&amp;8"H"H"H"I&gt;QAL?Q58FJ4UEQTT@@DUEQTTP"X=BMBJCCF9.[&amp;9.[&amp;9.\H:N[&amp;9.[&amp;9.[&amp;9.[&amp;9.[# A_$DSJAUM_B-EQTUE@@AEQTUEDH$NP#P= 00J[&amp;9.[&amp;9.\GBN\H9.#&amp;9.[&amp;9.[&amp;9.[&amp;88@W9AK&amp;5Z\W0+QTUEQP@@QTUEQTT+J2,+_U(0PF9.[&amp;9.\GA\WE2N#''A\[&amp;9.[&amp;9.[&amp;8/KFDFJ2,+J2,+QTUEQTT@@DUEQTUEQTUEQU&lt;=V 0J[&amp;9.#(90\GBN#(:N\GA0\F9.[#XZNC=!J2-EQTUEQTUEQTUE@@AEQTUEQTUEQTUEMB FE!!.K3Y0\GA\WGBN\CX6M(1\RF:PC8MDQB-EQTUEQTUEQTUEQP@@QTUEQTUEQTUEQW&gt;APUHIE''L5S3M\WE10#''A0WA4!TQ0)Q@%"EAP+QTUEQTUEQTUEQTT@@DUEQTUEQTUEQTT+J2,4Y&amp;ZOQDPX"%P6\GA\RD&lt;5 $Q,#4E&amp;_R,+QTUEQTUEQTUEQTUE@@AEQTUEQTUEQTUEQTT+J2,+LSE"BXPO!X(9L#HIA$5AY&amp;!=J2-EQTUEQTUEQTUEQTUEQP@@QTUEQTUEQTUEQTUEQTT+J3(+MF 1\TQ7C4PIT%\1MG4+J4UEQTUEQTUEQTUEQTUEQTT@@DUEQTUEQTUEQTUEQTUEQTT+J2,+B6 4X''E&amp;U6!=B2,+QTUEQTUEQTUEQTUEQTUEQTUE@@AEQTUEQTUEQTUEQTUEQTUEQTUEJ2,+B3Q(ME,+J2-EQTUEQTUEQTUEQTUEQTUEQTUEQP@@QTUEQTUEQTUEQTUEQTUEQTUEQTUEJ2,+J2,+J4UEQTUEQTUEQTUEQTUEQTUEQTUEQTT@@DUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUE@@AEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQP@@QTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTT@@DUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUE@@AEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQP@@QTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTT@@DUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUEQTUE@@@b'))</body>

<body package="Framework" selector="tpooImage">tpooImage
	&lt;resource: #image&gt;
	^Image
		extent: 50 @ 50
		depth: 7
		bitsPerPixel: 8
		palette: (Graphics.MappedPalette withColors: (#(#(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6874 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7677 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 6874 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 3180 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4497 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5010 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6617 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 6617 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7387 5814)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7387 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 7934 6874)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 3437 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5557 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6327 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 7130 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 6327 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 7934 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7934 6327)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 7934)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4753 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 6070 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 6874 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 0 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4497 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 5814 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 2633 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3950 3437 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4240 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 5010 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 4240 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7130 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7677 6617)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2633 2376 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4497 3950 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4753 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 4497 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5300 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 6070 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6874 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7677 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 6070 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3693 2890 1316)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 2890 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4497 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5010 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 5814 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 0 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7130 5814)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5814 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 2633 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5557 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6874 6327 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7130 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3693 3180 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 6070 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7387 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7934 7387)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 7934 7130)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4240 3693 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6327 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 5814 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3950 3437 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 4240 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 4753 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 4753 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5557 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 2376 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 7387)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4497 3180)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 5300 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 6070 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6617 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5814 5300 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 2890 1316)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3180 2890 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5010 4240 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 4240 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 5814 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 6327 5300)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7130 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7677 6874)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 2376 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4753 3950 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4497 3950 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 5557 3693))) collect: [:t1 | (t1 at: 1) value perform: (t1 at: 2)
						withArguments: (t1 at: 3)]))
		usingBits: (ByteArray fromPackedString: 'K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.@@@.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K @@K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.@@@.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K @@K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8.K"8.K"8.K"8.K"8YFQ$YFR8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.@@@.K"8.K"8.K"8.K"8.K"8.K"8.FQ$YQ$X\L4XYFQ$.K"8.K"8.K"8.K"8.K"8.K"8.K @@K"8.K"8.K"8.K"8.K"8.K!$YFTX0LC@0LC@WQ"43FQ$YK"8.K"8.K"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8.K"8YFQ%FL4X0LC@0LC@0LC@0LCL%KQ$YFR8.K"8.K"8.K"8.K"8.@@@.K"8.K"8.K"8.K!$YL243PC@0LC@0LC@0LC@0LC@0SDX4CS0YFR8.K"8.K"8.K"8.K @@K"8.K"8.K"8.K!$@A#MLLC@0LC@0LC@0LC@0LC@0LC@0B2L4TT&lt;YK"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8YDBXELC@0LC@0LC@0LC@0LC@0LC@0LC@0F@EQFR8.K"8.K"8.K"8.@@@.K"8.K"8.K"8.FP 0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@@QA$.K"8.K"8.K"8.K @@K"8.K"8YFQ$YFP(&amp;LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0FA=QFQ$YFQ$YK"8.K"8@@B8.K"8YC (AUP@ALC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@BQD /QC$TD1$.K"8.@@@.K"8.FR&lt;:DUT@@S@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LDQUBDQDEA0YK"8.K @@K"8.K!$@N X1B#@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@_N#P_D#)GFR8.K"8@@B8.K"8YN@((C#@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LDQUC$P:Q1$.K"8.@@@.K"8.FPD''LP(0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LCAQNPADNSDYK"8.K @@K"8.K!$HLP8ALAXVE!XVE#@VE!XVE!X0E!XVE!XVLAXVE!XVE#@0LDQUG3(^FR8.K"8@@B8.K"8YC$8JI#@VE!XVE!X0E!XVE!XVLAXVE!XVE#@VE!XVE!X0LC@0TUTJA!$.K"8.@@@.K"8.FQ!UI3@0LC@VE#@0LAXVLC@VE#@VE#@0E!X0E!X0LAXVLC@0LC)UNCPYK"8.K @@K"8.K!$SUQ80LC@0E!X0LC@VE!XVE!X0E!X0LAXVLAXVLC@VE#@0LC@JPR&lt;&lt;FR8.K"8@@B8.K"8YIA(ULC@0LAXVLC@0E!XVE!XVLAXVLC@VE#@VE#@0E!X0LC@0@ PQOA$.K"8.@@@.K"8.FP@!C@\0LC@VE#@0LAXVLC@0LC@VE#@0E!X0E!X0LAXVLC@0DA0TB!8YK"8.K @@K"8.K!$@S"DGLC@0E!X0LC@VE#@0LC@0E!XVE!XVLAXVE!XVE#@0LE@+TS)GFR8.K"8@@B8.K"8YS$H6FC@0LAXVLC@0E!X0LC@0LAXVE!XVE#@VE!XVE!X0L@%FM3(:MA$.K"8.@@@.K"8.FP=NHT44LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LCAPT4 :B#PYK"8.K @@K"8.K!$(M0QJFD\0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@5KQ,4@P83FR8.K"8@@B8.K"9CO!MTM$T%LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0MUL[UT\\JQ$.K"8.@@@.K"8.P38"UCXDIS@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0OCUSO4$=PB$YK"8.K @@K"8.K"8YFQ$YJ#40LC@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0L@\3FQ$YFQ$YK"8.K"8@@B8.K"8.K"8.K%HDOS@0LC@0LC@0LC@0LC@0LC@0LC@0LC@0LCPGFQ$.K"8.K"8.K"8.@@@.K"8.K"8.K"8.M%T3LC@0LC@0LC@0LC@0LC@0LC@0LC@0LBT-KQ$.K"8.K"8.K"8.K @@K"8.K"8.K"8.K"AMT1\,LC@0LC@0LC@0LC@0LC@0LC@0LB0+GQ4YK"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8YFQ$6HS@0LC@0LC@0LC@0LC@0LC@0LEL!J!$YK"8.K"8.K"8.K"8.@@@.K"8.K"8.K"8.K"8YFQ$YN3,0LC@0LC@0LC@0LCASHQ(*FQ$.K"8.K"8.K"8.K"8.K @@K"8.K"8.K"8.K"8.K"8YFSHYM!(;LC@0LC@0LC@;M"(YFR8.K"8.K"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8.K"8.K"8YFQ$YR3@0LD@!B1(*R1$YK"8.K"8.K"8.K"8.K"8.K"8.@@@.K"8.K"8.K"8.K"8.K"8.K"8.FQ$YR3XZM LYFQ$.K"8.K"8.K"8.K"8.K"8.K"8.K @@K"8.K"8.K"8.K"8.K"8.K"8.K"8.FQ$YFQ$YFR8.K"8.K"8.K"8.K"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.@@@.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K @@K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.@@@.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K @@K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8@@B8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.K"8.@@@b')</body>

<body package="Framework" selector="cnaranja">cnaranja
	"Tools.UIMaskEditor new openOnClass: self andSelector: #cnaranja"

	&lt;resource: #image&gt;
	^(Image extent: 50@38 depth: 9 bitsPerPixel: 16 palette: (Graphics.MappedPalette withColors: (#(#(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 6520 5589)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 6745 5974)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7773 7420 7034)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7869 7612 7420)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7901 7741)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3629 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3661 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3693 417)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 3693 513)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3983 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3340 0)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 4497 1927)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 4400 1927)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 5814 4464)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 6070 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7612 6070 4529)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 6584 5492)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 6584 5524)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7612 7323 6649)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7612 7259 6713)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7741 7259)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3661 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3726 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3854 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 3983 1092)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3693 385)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 3918 1124)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 4914 2826)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 4818 2955)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 5075 3212)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 5364 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 5814 4529)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7805 7420 7066)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7612 7516 7163)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7773 7709 7484)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7901 7934 7805)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3693 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3693 417)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3726 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3758 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3597 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3950 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 4175 1638)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7034 4207 1638)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7548 4400 1606)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 4497 1766)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3693 449)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 4400 2087)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7034 3918 1252)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6970 4432 2152)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 4400 1927)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 3918 1156)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 6424 5075)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 6777 6038)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7612 7002 6360)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7773 7548 7002)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8062 8158 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8094 8191 8062)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 3693 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3693 417)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 3726 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3950 1124)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6938 3726 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3950 1092)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6584 4786 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 4657 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7002 4914 3019)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7709 7773 7548)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8062 8158 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8030 8158 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8062 8191 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3661 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3693 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7580 3629 385)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 3983 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 3758 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 3950 1252)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7034 4657 2601)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8158 8030)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 5396 3790)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 6617 5589)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 6841 6167)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7805 7741 7516)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8126 8191 8094)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8030 8191 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7516 3693 417)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3790 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3693 578)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3726 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3950 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 3950 1124)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3758 449)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6681 4207 2087)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 4432 2087)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6970 4497 2184)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8094 8191 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3726 546)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3726 449)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 3726 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7644 7098 6327)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7580 7066 6424)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7741 7580 7098)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7741 7516 7163)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7709 7484 7227)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8126 8158 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8158 8094)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8062 8191 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8094 8191 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3758 417)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3790 449)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 4689 2312)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 5235 3051)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 5878 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 6103 4978)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7580 7034 6488)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7644 7098 6360)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8126 8191 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8094 8191 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8191 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3790 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3758 513)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3726 546)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3758 578)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3983 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3693 546)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 3758 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7002 4946 3115)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 5203 3404)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 4272 1702)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8158 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7644 7098 6392)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7612 7066 6456)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7709 7580 7195)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7901 7805 7452)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7966 7966 7901)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8191 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8126 8191 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8158 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8126 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3790 546)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3983 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 4015 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 4304 1509)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 4529 1927)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 4657 2633)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7805 7098 6263)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7612 7098 6456)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8191 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8158 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3758 546)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3790 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 3790 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 4304 1734)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 4529 1927)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 4015 995)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 4272 1702)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 5010 2698)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3790 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 3726 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 5685 4175)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 6392 5460)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 6392 5396)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7580 7130 6488)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7901 7387 6584)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7901 7998 7998)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7998 7966 7934)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8030 7998 7869)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 3758 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3854 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3790 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6970 4047 1445)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3983 1284)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6970 4529 2312)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6938 4304 1895)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 5492 3533)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 6520 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7644 7098 6488)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7869 7805 7580)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 3886 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3790 546)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3790 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 4272 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3854 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 3854 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3758 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6938 4015 1541)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3790 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 4336 1734)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 5235 3469)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 4336 1702)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 5717 4175)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 5781 4272)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 6231 5075)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7644 7130 6488)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7548 3533 96)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 3822 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7516 3726 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3822 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3790 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3758 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3790 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 3790 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 4240 1702)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7002 4336 1863)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3822 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 3822 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 5557 3629)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3822 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 5685 4272)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3790 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7644 7130 6520)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7612 7163 6520)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7130 6488)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7966 8126 7901)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3533 385)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 3597 353)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3854 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3790 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3854 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7002 4111 1445)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3822 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3854 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3886 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 5075 2858)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3822 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 4561 2248)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3790 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 4015 1284)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3758 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3822 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 6681 5814)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7709 7130 6488)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7612 7387)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7837 7837 7677)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8062 8062 7901)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3629 449)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3822 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3822 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3822 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3854 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3758 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 4593 1991)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3854 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3822 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 5524 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 6970 6392)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7163 6520)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3629 321)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3597 289)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3597 353)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3854 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3854 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3854 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3854 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3886 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3822 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3886 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 4079 1477)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3854 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 4143 1381)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3822 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 4561 2344)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 4818 2730)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7034 5043 3244)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 5460 3983)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7644 6552 5171)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 6456 5492)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 4304 1638)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3822 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 5524 3950)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3629 289)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3854 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 4336 1830)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 8094 8062)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3629 353)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3597 417)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3886 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3822 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3854 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3854 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3854 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3886 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3854 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3790 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3822 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 4432 1573)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3822 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3854 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 4593 2023)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 5332 3340)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7516 6070 4464)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7516 3822 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3822 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3629 385)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3886 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7548 6713 5814)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3854 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7195 6552)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7741 7163 6520)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7773 7644 7355)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3661 353)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3597 289)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 3629 449)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3629 289)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3693 321)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3854 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3854 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3822 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3854 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3854 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3854 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3822 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3822 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 4079 1477)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 4753 2505)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 5749 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3886 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7066 4079 1541)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3886 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3886 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7644 6745 5717)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7516 3822 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3854 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7741 7195 6520)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7773 7644 7387)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7837 7612 7355)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7773 7934 7773)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 3629 417)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3661 546)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3854 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3822 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3886 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3854 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3854 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 3886 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 3918 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3790 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 4850 2794)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 5043 3276)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 5364 3597)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 5332 3308)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 5589 4047)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 3886 1027)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3854 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3886 995)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3822 1027)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3854 995)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 6456 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7805 7484 6874)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7901 7644 7291)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 3661 642)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 3693 481)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3886 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3854 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 3854 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 3822 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3822 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 4400 1766)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3886 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 3854 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3629 289)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3822 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 3886 1092)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6841 3950 1284)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 3886 995)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 3886 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7195 6038 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7580 6327 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3886 1027)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7227 3886 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7516 6970 6360)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7741 7644 7484)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7869 7677 7323)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7837 7612 7420)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 3661 513)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 3629 417)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 3886 1124)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7484 3822 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7387 4175 1220)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7002 4368 2087)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 3918 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7163 3886 1060)) ) collect: [:each | (each at: 1) value perform: (each at: 2) withArguments: (each at: 3)])) usingBits: (ByteArray fromPackedString: '@QLAD0DS@QLAD0DS@QLAD0DS@GP@W0@8@C$@T0DS@IP@U@EH@S4@W@@_@GHA]PB&amp;@GTAD0DS@QL@U@AC@@D@P@@N@M\@"@BH@QL@] BG@F$@"PDS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0BH@DT@H@DL@K8@3@C[@OD@]0CE@S,@WPAM@UL@F0DH@P\@J B)@LX@-@A^@P(AJPAR@F(AD0BT@IPAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0B''@R,@\PA&gt;@M4@A @E@ETAR0E"@M0@* BW@C,AK0C9@QPAK @G@F0@?@E#@N&lt;@N0C:@C0@3PEU@A@@!@AT@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@DPAD0A&amp;@MH@$@E:@QTAE@A-@O4AE0D4@SLAMPD3@QXAF@DY@SX@? DZ@Q(AFPC?@O0AF0EL@T,A@@CG@BT@&gt;0E @B,@GPE]@QL@"@BT@IT@" DS@QLAD0DS@QLAD0DS@QLAD0BV@TX@+ CX@D\@2@D\@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@O8@&lt;@A8@S@@6P@M@IP@%@BU@ITAD0DS@QLAD0DS@QLAD0DS@QL@;@DI@SDAX D7@QXA@@DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPE;@Q4@U @Q@QL@] BT@QLAD0DS@QLAD0DS@GX@!0A+@JDA^@C&lt;@Q(AF C&lt;@QXAFPDY@Q$AFPDY@Q(A@PEM@T8@2PE9@AT@R@CJ@E\@I BX@S AM0DY@Q$AFPDY@Q$AFPDY@Q$AF DB@G$A@0CU@QLAD0DS@QLAD0DS@QLAD0AF@QL@( AX@J,AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD7@SLAS0B5@B$@PPD&lt;@I,AA@@,@Q&lt;A_@AY@SLAFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@B\@B0E6@QLAD0DS@QLAD0DS@QL@%@E4@E(@%0DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AL0EK@N8@&amp;PE1@AP@$ C!@F&lt;@M0@4@I8@#@C0@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD9@B AU@B(@QLAD0DS@QL@% DS@F\@&amp; AI@U@AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q8AN @H@RLAD0AP@PTAY0E^@JP@4@B7@PXAFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AR0D^@VD@0@BH@IPAD0A(@IP@H0@\@SHAY@C&gt;@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD6@E,@#0BE@@PAB0@X@RPAW0@O@RHAH@D^@SLAFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@SLAR0D9@L,@(0BH@H\@Z A4@OXARPDX@UDAT DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$@6 @I@TH@)PC3@D(@^ EV@AH@,@A;@PDAFPD3@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD3@T,AX0B6@C4@Y@BH@H @0 EJ@ODAYPD@@VXAFPDY@SLAL0D7@RDAFPDY@Q$AFPDY@O8@#PA.@H8@E BK@M8ACP@-@I0AC E(@S\AFPDY@Q$AFPDY@Q$AFPDY@V$AS DY@Q$AFPDY@O0AL0E*@W4@: B1@C8@1@C/@SLAR0D3@Q$AFPD3@Q\AIPD3@Q$AFPDY@Q$AFPDY@N8@I@A @SLAFPDY@G(@K CN@Q$AFPDY@Q$AFPDY@Q$AFPDY@RXAI DZ@O8AFPDY@T,@E0E+@S$@70@J@DH@=0DO@B&lt;@R0DP@G0AL0DY@Q$AF CJ@T8AM0DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD&amp;@S\@8@B8@Q$AFPD&gt;@NH@FPC-@K$@80A0@QLAD0C+@CT@S0B]@C(AI0A!@K(@+@@?@V AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AF EK@J4@L@C$@F@@&gt; A"@CDAU0@6@HXAD0DS@QLAD0DS@IPAKP@@@G&lt;AO0B;@W@@9PDF@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@O8@3 @2@LD@_PB@@A8@:@B3@QLAD0DS@QLAD0DS@QL@] BH@GT@"@A5@@H@)@@S@D0A@PDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDQ@I&lt;@C@@!@ED@YPA5@QLAD0BI@QLAD0DS@QLAD0DS@IP@$PAN@F$@%@BT@QLAQP@3@Q(AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AJ@B&lt;@QH@H BT@GT@] BA@IX@%@DS@QLAD0DS@QLAD0DS@QLAD0DS@QL@% DS@R0@L0DZ@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$@9 B=@@L@% BV@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0C8@CLAF DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD7@NX@/P@C@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QL@&gt;@@3@Q(AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AM0C&amp;@K4@@0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@O @F DZ@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@S\@9 B=@@LAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0C8@A(AF DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD7@NX@/P@C@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QL@5@@Z@S AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AM0C&amp;@K4@@0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@MP@F D8@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@S\@9 B=@@LAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0CT@A(AN@DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD7@NX@/P@C@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QL@5 @Z@S AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AM0C&amp;@K4@@0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@N$@F D8@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@S\@9 B=@@LAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0CV@A(AN@DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD7@NX@/P@C@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QL@00@Z@S AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AM0C&amp;@K4A]0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@KHA^ D8@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@S\@9 B=@W\AD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0B2@W(AN@DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD7@NX@/PE7@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QL@$0E,@S AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AM0C&amp;@K4A]0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@HHAV@EY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@S\@9 B=@W\AD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0A3@T@AN DY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPDY@Q$AFPD7@NX@/PE7@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QL@X0EA@TLAF DZ@Q(AF DZ@Q(AF DZ@Q(AF DZ@Q(AF DZ@Q(AF DZ@Q(AF DZ@Q(AF DZ@Q(AN@C2@K&lt;A]0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@QLAD0DS@HLA[PE.@W8A_ E&gt;@W&lt;A[0E?@WHAV E2@U,AV0E\@WLAQ@D*@PP@30DD@MD@=@CQ@OT@40C''@OT@(@B/@T\AD0DS@QLAD0DS@QLAD0DS@QLb'))</body>

<body package="Framework" selector="cazul">cazul
	"Tools.UIMaskEditor new openOnClass: self andSelector: #cazul"

	&lt;resource: #image&gt;
	^CachedImage on: (Image extent: 50@38 depth: 9 bitsPerPixel: 16 palette: (Graphics.MappedPalette withColors: (#(#(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3950 4914 5942)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2473 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(513 2441 4432)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4432 5428 6295)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(321 2473 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4464 995 1284)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2087 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3340 1349 2055)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6970 7195 7387)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 7484 7612)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3404 1445 1895)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2216 4432)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1413 1766 3565)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4978)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2376 5043)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5492 1702 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6809 1156 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1316 3147 4978)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1573 1734 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2409 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5910 2633 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5942 1220 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 1734 4336)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6199 1060 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(353 2409 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(321 2441 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5139 5910 6488)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5717 6360 6809)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6167 6552 6841)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6295 6809 7130)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2858 1092 2152)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2087 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2216 4561)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2120 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 1092 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2184 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(385 2409 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1445 3083 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5332 3083 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 7966 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5267 5974 6327)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5974 6584 7034)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2087 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2120 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2184 4561)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2280 4529)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 7420 7612)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(706 2666 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6681 1220 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5685 2794 1027)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1734 3372 5075)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5492 3597 1092)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2120 3629 5107)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2505 3886 5139)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1188 2955 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(995 2858 4978)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(353 2441 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(353 2473 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5460 6070 6745)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2376 1477 2312)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 6809 7163)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2344 1606 2890)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2184 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2120 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6263 1188 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6649 642 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1027 2987 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6006 2505 1027)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3276 1316 2248)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1413 3180 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1734 3437 5043)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1284 3212 5043)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2505 3822 5235)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(449 2473 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(321 2473 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(353 2473 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6777 6006 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3629 4818 5814)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4850 5717 6392)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6392 6777 7163)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2120 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2216 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6970 7259 7452)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3533 1316 2023)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(481 2409 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 2280 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1477 3115 4978)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5749 3661 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1445 3212 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2184 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2248 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2601 4143 5524)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2248 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 4336 5717)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3083 4336 5524)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6681 7002 7323)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3244 4497 5878)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6360 6809 7163)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3019 1124 2087)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2184 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3437 1349 2120)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2152 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7291 7516 7580)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5846 1413 995)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1220 2923 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5749 2955 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6006 3501 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7837 7934 7966)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7966 7966 7805)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8191 8062)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8094 8158 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8094 8191 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2280 3661 5010)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(385 2537 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5717 3693 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7259 7516 7612)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3661 4786 5878)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3629 4850 5846)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4336 5267 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8158 8094)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7580 7966 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4946 5717 6360)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2730 1316 2216)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2216 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4882 1509 1220)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6552 995 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5396 2023 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1220 2987 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7805 7966 7998)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8158 8094)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8191 8094)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8158 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 8062)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1220 1766 3308)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 1959 4336)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2280 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2312 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2248 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2248 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2344 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(835 2826 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3661 1477 1830)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 3276 995)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8191 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 8094)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 4753 610)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8126 8191 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5621 4175 1220)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5621 3758 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2216 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(770 2794 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6488 6103 1124)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3469 4529 5717)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3758 1445 1766)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8126 8158 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1060 3019 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8126 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6392 6841 7195)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5460 6199 6777)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1606 1702 3019)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2280 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2248 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6970 7323 7516)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(128 2248 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1027 3019 4978)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1220 2987 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 3629 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8191 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 8126)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8158 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6135 2505 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8126 8191 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8158 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6745 6038 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6103 6649 7066)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2409 1509 2441)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(160 2376 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2184 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2248 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(835 2794 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6713 7130 7323)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2312 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2280 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7677 7741 7773)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7966 7966)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8158 8191 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8191 8158)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1830 3437 5139)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8191 8158 8191)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2312 1541 2537)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1124 1830 3437)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6392 6906 7227)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2312 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3565 1477 2023)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2409 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5300 1606 835)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6970 1252 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2280 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7998 8030 7869)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7869 7998 8030)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1766 3469 5203)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2280 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(867 2762 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4978 1606 1156)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2376 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7323 7548 7677)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3790 4850 5846)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4400 5364 6070)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2537 1413 2473)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2376 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2312 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2280 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6231 1477 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2087 4336)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 1060 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5749 3308 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5942 3180 674)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7934 7998 7998)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1124 3051 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2344 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 7580 7644)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6456 6874 7227)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 7548 7677)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4400 5364 6103)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 1991 4464)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 1959 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2409 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2409 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2280 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2344 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6295 1252 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(417 2120 3918)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(706 1991 3758)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7966 7966 8030)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7355 7580 7677)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2376 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6584 4914 353)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6103 4689 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(224 2344 4561)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(160 2312 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5878 6424 6970)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2120 4368)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2409 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2376 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(578 2601 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6006 1284 1220)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5974 2280 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2344 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 963 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5332 1702 803)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(610 2601 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2312 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6135 2344 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2152 4336)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6456 6906 7259)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2376 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(224 2344 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(160 2376 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8094 8191 321)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2055 4464)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3404 1092 2023)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2376 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2344 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2344 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2409 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2376 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2280 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2376 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2441 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(128 2376 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2409 4721)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5685 2794 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2890 4175 5524)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5171 2923 1124)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2152 3565 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3276 4368 5621)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2409 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2376 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3790 4882 5942)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2344 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5075 1220 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6552 6906 7195)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4657 5621 6360)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 7612 7644)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(256 2344 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(224 2344 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(192 2376 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5557 6231 6874)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6199 6745 7066)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2087 4464)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(867 1991 3693)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(128 2344 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2376 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2376 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2344 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 7612 7677)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(289 2441 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5974 3019 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2409 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2344 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2409 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2376 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4272 1445 1509)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6938 674 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2441 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2409 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7709 7837 7837)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5364 1798 738)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(578 2633 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(738 2601 4561)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2376 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(256 2376 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(192 2409 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(160 2376 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5235 6038 6745)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6231 6745 7066)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2184 4368)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2344 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2280 4272)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 7420 7516)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6392 1445 770)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2376 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(353 2409 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2409 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2409 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(128 2344 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2376 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2344 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2376 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2409 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3565 1413 2280)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2376 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6070 931 931)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3790 4850 6038)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 7355 7580)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 1991 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4689 963 1606)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7420 7612 7709)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3854 1060 1670)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5107 5781 6488)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6552 6906 7259)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(224 2409 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(192 2409 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6231 6777 7066)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(192 2248 4175)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2055 4561)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2376 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2409 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2409 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2376 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2376 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2441 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(706 2666 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2376 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4818 1445 1027)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2441 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5267 2312 1060)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2409 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 3629 706)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2409 3758 5171)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1060 1830 3726)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(192 2344 4753)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(128 2344 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2344 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2344 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2184 4432)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2023 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8126 8191 417)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5139 5781 6488)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(160 2152 4304)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(128 2376 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2409 4786)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(289 2376 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(224 2441 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6327 6681 7098)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6295 6745 7066)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2055 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1060 1959 3629)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2473 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2409 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(867 2569 4561)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5846 1959 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6295 1413 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5203 3629 1188)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1670 3308 5043)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7452 7677 7677)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7709 7901 7869)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2409 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2409 4818)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(642 2666 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3147 4497 5749)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3308 4529 5557)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7098 7452 7580)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(256 2441 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4464 5396 6231)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5653 6360 6777)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6263 6777 7098)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2055 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(192 2184 4304)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(3501 1220 1959)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2120 4561)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2087 4593)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2376 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(513 2441 4400)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2409 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2409 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1124 2923 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1316 3115 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(1284 3147 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5332 3854 867)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(5492 3983 1252)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 1991 4689)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2344 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2409 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6360 5878 1188)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2152 4529)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(256 2184 4240)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2473 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(289 2441 4625)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(256 2441 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6199 6552 6745)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(2794 1541 2376)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2055 4657)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(32 2184 4497)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2152 4561)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(64 2376 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2441 4946)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6617 481 963)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6713 449 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(6777 963 995)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(8062 8126 8030)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7002 835 899)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2441 4850)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(96 2409 4882)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(128 2344 4914)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(0 2409 4978)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(160 2216 4336)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(4400 1060 1252)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(513 2055 4143)) #(#{Graphics.ColorValue} #scaledRed:scaledGreen:scaledBlue: #(7130 7484 7580)) ) collect: [:each | (each at: 1) value perform: (each at: 2) withArguments: (each at: 3)])) usingBits: (ByteArray fromPackedString: '@[XA- F6@[XA- F6@[XA- F6@J @[PB''@K$A- F6@[XA- A+@@@A 0DU@C(@-@FH@L\@$@F6@K(@[@A&amp;@YHAE@C!@[XA- F6@[X@. F6@J\@)0F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@K(@T EX@QH@Z@CA@MH@H@F/@TX@,0@Q@X\@.0@2@Y&lt;@K0B @H\@,@F @F@AH D*@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- B8@L@A$PE-@VXAI@F.@KDAB@D''@R AJPD)@KH@X0AP@B(@T@AQ@H @=@EG@P$@J0C#@OL@P A]@S8AP0F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@HDA- @H@UH@2PD+@PT@A BI@P\AI EG@P(AX@DJ@NPAKPEH@T AI0DG@P\AQ0EH@P(AKPEH@Y$AQPD(@FLA%@D$@H0@V0E6@N,@*@BP@H&lt;@$ F6@[XA- F6@[XA- F6@[XA- F6@@$@U C#@BD@40EG@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AB0B!@W8@! DX@[X@. BB@H&lt;A- F6@[XA- F6@[XA- F6@[X@2@@5@A&lt;AW0EH@T AR@EH@T AR@EH@T AR@EH@T\AXPE"@VHAX E!@T\AQ0E!@T\AR@EH@T AR@EH@T AR@EH@T AR@D''@P0A%P@Z@[X@. BP@[XA- F6@[XA- F6@K$@*@F6@D4AW EI@T(AR@EH@T AR@EH@T AR0DM@P8A @E#@NTA PEL@MHAB0DK@T$A PE!@X@A,PEM@VHAKPEH@T AR@EH@T AR@E$@NX@= AO@[X@ 0F6@[XA- F6@[XA- B''@[X@S E@@MLAR@EH@T AR@EH@T AR@EN@R8AYPF2@TH@+0@G@ELAA @^@FHA% CB@@(AS0E?@@4AC0DP@V@AR@EH@T AR@EH@T AR@EH@C8@IP@.@[XA- F6@[XA- F6@[XA- @)@Y(@5@EH@T AR@EH@T AR@EH@T AK0D-@Y,@B0A:@ET@_ CU@V0@; BQ@QD@H A@@A@@AP@L@@8AC0D0@T AR@EH@T AR@EH@T AR@E_@BD@R@B@@[XA- F6@J$@  F6@JHA'' A;@T,AR@EH@T AR@EH@T AR@EH@R4AY0BJ@MD@_ F"@N @LP@''@PPA]PA8@BX@=0@O@ZDAZ@E.@X@A  EH@T AR@EH@T AR@EH@T ASPEM@Y\@]@F6@[XA- A.@J A"P@4@[@A''@EK@T AR@EH@T AR@EH@T AR@EP@V$@=PB&gt;@V(A!@CW@TP@P0D,@M$@Z DS@XX@%0C/@SDAIPF@@R4AR@EH@T AR@EH@T AR@EH@T AR@C''@B0@^PF6@HP@[0A.@X8A&amp;@F]@T8AA0EH@T AR@EH@T AR@EH@T APPD/@V,@"0@;@G4@L@F5@SH@PPF3@[PA-0FE@F$@_@B?@VLA.@D''@T AR@EH@T AR@EH@T AR@EH@T AR@B5@EP@+ F6@[X@@0C"@T0ACPCC@OPAR@EH@R4AR@EH@P(AR@EH@SLAI0DJ@R4@KPA$@LP@$0@3@E\@) CX@O @1PEQ@AHAM@@S@V&lt;AXPEH@T AX@E @T AR@EH@T AX@E$@U@ARP@F@CXAT0@(@MXA(0DV@M(A\@F$@T AR@D-@VDA&amp;0D''@T AR@EH@T AR@E1@[$AWPBM@AP@* BN@D0@+PBT@AT@OPF]@R4AR@EH@T AR@EH@SPAM@E"@SPAR@EH@Q\AA0D5@T$@90@V@G@A+@A5@E @H0ET@C&lt;@&gt;PEH@T AL@BU@Q$AT@EH@T AR@EH@T AZ0F:@[,@:PEU@O(@Y0C;@Q(@E0F-@LX@D0F%@T AR@EH@T AR@D5@Q,@2 B6@T AR@D''@WH@YPBF@[0@Q A6@[XA- D6@OH@&amp;@B%@WLAW AY@E(@% A1@Q\AR@EH@T AR@EH@X(AK0D''@[H@: F=@GHA) D7@DP@W@D5@X,A" EH@T AR@EH@T A  DY@S @?@C=@ITA]@F''@DT@30E&lt;@M,A- B9@[XA- F6@[XAU B^@E8@20D9@Q4A#@D)@T AR@EH@T AR@EH@QXAKPE_@Y,@!PCL@O8@&amp;PE7@[,AR@EI@T AR@EH@T AR@EH@T @(PAG@M@A*@@7@X4@F0B7@[XA- F6@[XA- F6@[XA- B:@[XA- F6@X&lt;AG@A_@D$ABPEH@T AR@EH@T AR@EH@T AX@D:@OP@''0EW@[8A PE @T AR@EH@T AR@EH@T AR@EH@JD@7@F?@A0@\0F6@[XA- BZ@[XA- F6@[XA- F6@J @*0BR@G\@. F6@[XAVPAJ@M4AR@EH@T AR@EH@T AR@EH@T8A^@EM@L4@?0B&lt;@@DA^PEH@T AR@EH@T AR@EH@T AR@B!@I,AG F6@[X@*@BO@J0@''@F6@[XA- F6@[XA- F6@K$@.PB9@K$A- F6@P@@N@C]@T AR@EH@T AR@EH@T AR@D-@R4AW0E @Z$AX@E$@T AR@EH@T AR@EH@T AR@EH@T @(PB[@M8A- F6@J\@. F6@K4A- F6@[XA- F6@[XA- F6@[XA- F6@[XA- C_@BP@7PEH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@JD@&amp;0C,@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[X@70@X@M4AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@B!@I,@;@F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@I4@F@C]@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T @(PB[@N0A- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- B]@A @7PEH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@JD@&amp;0C,@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[X@''P@X@N4AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@B!@I,@;@F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@FDA^ DA@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T @(PB[@N0A- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- @&lt;@W(A@PEH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@JD@&amp;0C,@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[X@GPD;@PDAR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@B!@I,@;@F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@YLAN0DA@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T @(PB[@N0A- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- FS@S,A@PEH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@JD@&amp;0C,@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA$0D;@PDAR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@B!@I,@;@F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@U0AG0DA@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T @(PB[@N0A- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- D?@O@AM@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@JD@&amp;0C,@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XAH0C0@SPAR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@B!@I,@8@F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@RLA@ DV@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T @(PB[@N@A- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- D?@R@@9PEH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@T AR@EH@JD@&amp;0C @[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XAO0C1@MHAJ@D(@T\AJ@EG@T\AQ0EG@T\AQ0EG@T\AQ0EG@T\AQ0EG@T\AQ0EG@T\AQ0EG@T\AQ0B2@JP@3 F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@[XA- F6@W4@@ @D@C$@NP@9@C$@R0@Y@Z(A* F*@W,A$@F+@Z,AV D&lt;@S0AV0EZ@S0AO@DC@RDA@0DC@S4@(0A?@L8A- F6@[XA- F6@[XA- F6@[Xb'))</body>
</methods>

<methods>
<class-id>RobotView class</class-id> <category>private - accessing</category>

<body package="Framework" selector="index">index
	Index isNil ifTrue:[Index:=0].
	Index:=Index+1.
	Index:=Index rem: self colorArray size.
	^Index+1</body>

<body package="Framework" selector="imagesArray">imagesArray
	| images |
	(images := Array new: 3) at: 1 put: #basicImage; at: 2 put: #greenImage; at: 3 put: #tpooImage.
	^images </body>

<body package="Framework" selector="colorArray">colorArray
	| res |
	res:=Array new:10.
	res at:1  put: ColorValue navy.
	res at:2  put: ColorValue black.
	res at:3  put: ColorValue brown.
	res at:4  put: ColorValue darkCyan.
	res at:5  put: ColorValue darkGreen.
	res at:6  put: ColorValue darkRed.
	res at:7  put: ColorValue olive.
	res at:8  put: ColorValue orange.
	res at:9  put: ColorValue red.
	res at:10 put: ColorValue salmon.
	^res.</body>
</methods>


<methods>
<class-id>RobotView</class-id> <category>displaying</category>

<body package="Framework" selector="displayOn:">displayOn: aGraphicsContext
	self image displayOn: aGraphicsContext at:(self preferredBounds origin).</body>
</methods>

<methods>
<class-id>RobotView</class-id> <category>update</category>

<body package="Framework" selector="updateDirection">updateDirection
	self oldDirection: self model direction.
	self updateImage: self model direction.</body>

<body package="Framework" selector="update:">update: anAspect
	(anAspect == #position) ifTrue: [self updatePosition].
	(anAspect == #direction) ifTrue: [self updateDirection].
	(anAspect == #image) ifTrue: [self updateImage].
	(anAspect == #model) ifTrue: [self updateModel].
	(anAspect == #dead) ifTrue: [ 
		self symbolImage: #deadImage.
		self updateImage
	].
	self invalidateRectangle: self bounds repairNow: true</body>

<body package="Framework" selector="updatePosition">updatePosition
	self oldPosition: self model position.
	self updateBounds.
	self invalidateRectangle: self bounds repairNow: true.</body>

<body package="Framework" selector="updateView">updateView
	self model notNil ifTrue:[
		(self oldPosition ~= self model position) ifTrue:[^self updatePosition].
		(self oldDirection ~= self model direction)	ifTrue:[^self updateDirection]
	]</body>

<body package="Framework" selector="updateImage">updateImage
	self updateImage: self model direction.</body>
</methods>

<methods>
<class-id>RobotView</class-id> <category>controller accessing</category>

<body package="Framework" selector="defaultController">defaultController
	| rc |
	rc:= RobotController new initialize: (self model world defaultProperties).
	^rc.</body>
</methods>

<methods>
<class-id>RobotView</class-id> <category>update - private</category>

<body package="Framework" selector="updateBounds">updateBounds
	| oldBounds |
	oldBounds:= self preferredBounds.
	self preferredBounds: (self image preferredBounds centeredIn: self model position).
	self changedPreferredBounds: oldBounds.</body>

<body package="Framework" selector="updateImage:">updateImage: aDirection

	symbolImage isNil ifTrue: [self symbolImage: #basicImage].
	self image: (OpaqueImage figure: ((self class perform: self symbolImage)
				rotatedByDegrees: aDirection)
			shape: (self class mask
					rotateByDegrees: aDirection
					to: self class mask copyEmpty
					interpolate: false)).
	self invalidate.
	^self</body>
</methods>

<methods>
<class-id>RobotView</class-id> <category>accessing</category>

<body package="Framework" selector="color:">color: aColor 
	color:=aColor.</body>

<body package="Framework" selector="model:">model: aRobot
      aRobot imagenSeter isNil ifTrue:[symbolImage :=#basicImage.]
							  ifFalse:[symbolImage := aRobot imagenSeter.].

	super model: aRobot.
	self model battery addDependent: self.
	self color: (self class colorArray at: self class index).
	self updateImage: aRobot direction.
	self oldDirection: aRobot direction.
	self oldPosition: aRobot position.
	self updateBounds.
	self launchThread.</body>

<body package="Framework" selector="color">color
	^color</body>

<body package="Framework" selector="symbolImage">symbolImage
	^symbolImage</body>

<body package="Framework" selector="symbolImage:">symbolImage: aSymbol
	symbolImage:= aSymbol</body>
</methods>

<methods>
<class-id>RobotView</class-id> <category>release</category>

<body package="Framework" selector="release">release
	self updateThread terminate.
	^super release.</body>
</methods>

<methods>
<class-id>RobotView</class-id> <category>private</category>

<body package="Framework" selector="launchThread">launchThread
	self updateThread: ([[true] whileTrue:[(Delay forMilliseconds: 20) wait. self updateView]] fork).</body>
</methods>

<methods>
<class-id>RobotView</class-id> <category>private - accessing</category>

<body package="Framework" selector="oldDirection">oldDirection
	^oldDirection.</body>

<body package="Framework" selector="updateThread">updateThread
	^updateThread</body>

<body package="Framework" selector="preferredBounds:">preferredBounds: aRectangle
	preferredBounds:= aRectangle</body>

<body package="Framework" selector="image">image
	^image.</body>

<body package="Framework" selector="oldPosition">oldPosition
	^oldPosition</body>

<body package="Framework" selector="oldDirection:">oldDirection: anOldDirection 
	oldDirection:=anOldDirection</body>

<body package="Framework" selector="updateThread:">updateThread: anUpdateThread 
	updateThread:= anUpdateThread</body>

<body package="Framework" selector="oldPosition:">oldPosition: anOldPosition 
	oldPosition:= anOldPosition</body>

<body package="Framework" selector="image:">image: anImage 
	image:=anImage.</body>
</methods>

<methods>
<class-id>RobotView</class-id> <category>bounds accessing</category>

<body package="Framework" selector="preferredBounds">preferredBounds
	^preferredBounds.</body>
</methods>


<methods>
<class-id>Token class</class-id> <category>instance creation</category>

<body package="Framework" selector="newWithArma:">newWithArma: aGun
	^self new initialize: aGun</body>

<body package="Framework" selector="newWithCharge">newWithCharge
	^self new initialize</body>
</methods>


<methods>
<class-id>Token</class-id> <category>initialize-release</category>

<body package="Framework" selector="initialize">initialize
	super initialize.
	self item: nil.
self asignado:nil.</body>

<body package="Framework" selector="initialize:">initialize: aGun
	super initialize.
	self item: aGun</body>
</methods>

<methods>
<class-id>Token</class-id> <category>accessing</category>

<body package="Framework" selector="asignado:">asignado: aRobot
	asignado:=aRobot.</body>

<body package="Framework" selector="isArma">isArma
	^(self item == nil) not</body>

<body package="Framework" selector="asignado">asignado
	^asignado.</body>

<body package="Framework" selector="isCharge">isCharge
	^(self item isNull)</body>

<body package="Framework" selector="position">position
	^position</body>

<body package="Framework" selector="position:">position: aPosition
	position:= aPosition</body>

<body package="Framework" selector="item">item
	^item</body>

<body package="Framework" selector="item:">item: aItem
	item:= aItem</body>
</methods>


<methods>
<class-id>ModelWorld class</class-id> <category>instance creation</category>

<body package="Framework" selector="origen:extremo:">origen: aOrigen extremo: aExtremo
	^super new origen: aOrigen extemo: aExtremo</body>
</methods>


<methods>
<class-id>ModelWorld</class-id> <category>testing</category>

<body package="Framework" selector="canMove:">canMove: position
	self isInfinito ifTrue: [
		^true
	]
	ifFalse: [
		^(self rectangle containsPoint: position)
	]</body>

<body package="Framework" selector="isInfinito">isInfinito
	^(self area = 0)</body>
</methods>

<methods>
<class-id>ModelWorld</class-id> <category>accessing</category>

<body package="Framework" selector="largo">largo
	^(self extremo x - self origen x)</body>

<body package="Framework" selector="rect">rect
	^rect</body>

<body package="Framework" selector="extremo">extremo
	^rect corner</body>

<body package="Framework" selector="area">area
	^rect area</body>

<body package="Framework" selector="alto">alto
	^(self extremo y - self origen y)</body>

<body package="Framework" selector="rectangle">rectangle
	^rect</body>

<body package="Framework" selector="origen">origen
	^rect origin</body>
</methods>

<methods>
<class-id>ModelWorld</class-id> <category>initialize</category>

<body package="Framework" selector="origen:extemo:">origen: aOrigen extemo: aExtremo
	rect:= Rectangle new origin: aOrigen corner: aExtremo </body>
</methods>


<methods>
<class-id>GunLaser class</class-id> <category>initialize creation</category>

<body package="Framework" selector="new:">new: aRobot
	^super new initialize: aRobot</body>
</methods>


<methods>
<class-id>GunLaser</class-id> <category>private</category>

<body package="Framework" selector="onShot">onShot
	| shot |
	shot:= Shot new: self.
	shot addPoint: self robot position.
	^shot</body>
</methods>

<methods>
<class-id>GunLaser</class-id> <category>initialize-release</category>

<body package="Framework" selector="initialize:">initialize: aRobot
	robot:= aRobot.
	distancia:= 200.
	descarga:= 25.</body>
</methods>



<initialize>
<variable-id>Core.Object.DependentsFields</variable-id>
</initialize>

<initialize>
<variable-id>Core.Object.EventHandlers</variable-id>
</initialize>

<initialize>
<class-id>Core.Object</class-id>
</initialize>

</st-source>
