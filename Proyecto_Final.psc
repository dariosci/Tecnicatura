Proceso Menu_De_Comida
    // Definición de variables
    Definir opcionMenu, opcionCombo, opcionBebida Como Entero; 
    Definir precioComida, precioBebida Como Real;
    Definir nombreCombo, nombreBebida Como Cadena;
    Definir entrada Como Cadena;  
	
    // Inicialización de variables
    opcionMenu <- 0;
    opcionCombo <- 0;
    opcionBebida <- 0;
    precioComida <- 0;
    precioBebida <- 0;
    nombreCombo <- "";
    nombreBebida <- "";
	
	// Mostrar arte ASCII del lobo (presumiblemente una imagen)
    Escribir bienvenida;
    Esperar Tecla;
    Limpiar Pantalla;
	Escribir integrantes;
	Esperar Tecla;
	Limpiar Pantalla;
    Escribir lobo;
    Esperar 2 Segundos;
    Limpiar Pantalla;
	
    // Bucle principal del menú
    Repetir
        // Mostrar opciones del menú principal
        Escribir "===============================";
        Escribir "        MENU PRINCIPAL         ";
        Escribir "===============================";
        Escribir "1. Combos de Hamburguesas";
        Escribir "2. Combos de Sándwiches";
        Escribir "3. Combos de Pizzas";
        Escribir "4. Personalizar Pedido";
        Escribir "5. Salir";
        Escribir "===============================";
		
        // Solicita la opción al usuario
        Escribir "Ingrese una opción (1-5):";
        Leer entrada;
		
        // Validación de entrada
        Si entrada = "1" O entrada = "2" O entrada = "3" O entrada = "4" O entrada = "5" Entonces
            opcionMenu <- ConvertirANumero(entrada);
        Sino
            Escribir "Opción inválida. Ingrese un número entre 1 y 5.";
            opcionMenu <- 0;
            Esperar 1.5 Segundos;
        FinSi;
		
        Limpiar Pantalla;
		
        
        Segun opcionMenu Hacer
            1:
                // Seleccionar combo de hamburguesa
                SeleccionarCombo(1, opcionCombo, precioComida, nombreCombo);
            2:
                // Seleccionar combo de sándwich
                SeleccionarCombo(2, opcionCombo, precioComida, nombreCombo);
            3:
                // Seleccionar combo de pizza
                SeleccionarCombo(3, opcionCombo, precioComida, nombreCombo);
            4: 
                // Personalizar pedido (p. ej., ingredientes, tipo de comida, etc.)
                SeleccionarPersonalizarPedido(nombreBebida, precioBebida);
            5:  
                // Mensaje de despedida
                Escribir "Gracias por visitar Escuadrón Lobo. ¡Hasta pronto!";
        FinSegun;
		
        
        Si opcionMenu >= 1 Y opcionMenu <= 3 Entonces // Si se eligió un combo (1 a 3), se solicita bebida y se imprime ticket
            SeleccionarBebida(nombreBebida, precioBebida);				
            TicketCombos(opcionMenu, nombreCombo, nombreBebida, precioComida, precioBebida);	   
			
            // Preguntar si desea realizar otra compra
            Escribir "";
            Escribir "¿Desea realizar otra compra? (S/N):";
            Leer entrada;
            Si Mayusculas(entrada) <> "S" Entonces
                opcionMenu <- 5; // Salir del bucle
            Sino
                Limpiar Pantalla; // Volver al menú
            FinSi;
        FinSi;
		
        // Si se eligió la opción de personalizar pedido, también preguntar si desea continuar
        Si opcionMenu = 4 Entonces
            Esperar 2 Segundos;
            Escribir "";
            Escribir "¿Desea realizar otra compra? (S/N):";
            Leer entrada;
            Si Mayusculas(entrada) <> "S" Entonces
                opcionMenu <- 5; // Salir
            Sino
                Limpiar Pantalla; // Repetir menú
            FinSi;
        FinSi
		
    Hasta Que opcionMenu = 5; // Condición de salida del menú

FinProceso

SubProceso SeleccionarCombo(tipoCombo, opcionCombo Por Referencia, precioComida Por Referencia, nombreCombo Por Referencia)
    // Variables internas para entrada y validación
	Definir entradacombo Como caracter;
    Definir validocombo Como Logico;
    validocombo <- Falso;
	
	// Bucle hasta que el usuario seleccione un combo válido
    Repetir
       
        Segun tipoCombo Hacer
            1:
				Escribir "===============================";
                Escribir "----- COMBOS DE HAMBURGUESAS -----";
				Escribir "===============================";
                Escribir "1. Combo Clásico         - $5.00";
				Escribir "  -Papas Fritas";
                Escribir "2. Combo BBQ             - $5.50";
				Escribir "  -Empanadas";
                Escribir "3. Combo Doble Carne     - $6.50";
				Escribir "  -Nuggets de pollo";
                Escribir "4. Combo Veggie          - $5.25";
				Escribir "  -Ensalada clasica";
                Escribir "5. Combo Picante         - $5.75";
				Escribir "  -Aros de cebolla ";
				Escribir "===============================";
            2:
				Escribir "===============================";
                Escribir "----- COMBOS DE SÁNDWICHES -----";
				Escribir "===============================";
                Escribir "1. Combo Milanesa        - $6.00";
				Escribir "  -Papas Fritas";
                Escribir "2. Combo Pollo Clásico   - $5.75";
				Escribir "  -Empanadas";
                Escribir "3. Combo Club Suprema    - $6.50";
				Escribir "  -Nuggets de pollo";
                Escribir "4. Combo Bife de Chorizo - $7.25";
				Escribir "  -Aros de cebolla ";
                Escribir "5. Combo Bondiola        - $7.00";
				Escribir "  -Empanadas   ";
				Escribir "===============================";
            3:
				Escribir "===============================";
                Escribir "----- COMBOS DE PIZZAS -----";
				Escribir "===============================";
                Escribir "1. Combo Clásico         - $7.00";
				Escribir "  -Papas Fritas";
                Escribir "2. Combo Napolitano      - $7.50";
				Escribir "  -Empanadas";
                Escribir "3. Combo Familiar        - $10.00";
				Escribir "  -Nuggets de pollo";
                Escribir "4. Combo Veggie          - $7.25";
				Escribir "  -Ensalada clasica";
                Escribir "5. Combo Cuatro Quesos   - $8.00";
				Escribir "  -Aros de cebolla ";
				Escribir "===============================";
        FinSegun;
		Escribir "Seleccione un combo (1-5):";
		Leer entradacombo;
		
		// Validación de entrada (verifica si está entre 1 y 5)
		Si entradacombo = "1" O entradacombo = "2" O entradacombo = "3" O entradacombo = "4" O entradacombo = "5" Entonces
			opcionCombo <- ConvertirANumero(entradacombo);
			validocombo <- Verdadero;
		Sino
			validocombo <- Falso;
		FinSi;
		
		
		
        Segun tipoCombo Hacer
			
            1:// Asignación del nombre del combo y su precio según la opción y el tipo de combo seleccionado
                Segun opcionCombo Hacer
                    1: 
						nombreCombo <- "Combo Clásico";        
						precioComida <- 5.00; 
                    2: 
						nombreCombo <- "Combo BBQ";            
						precioComida <- 5.50; 
                    3: 
						nombreCombo <- "Combo Doble Carne";    
						precioComida <- 6.50; 
                    4: 
						nombreCombo <- "Combo Veggie";         
						precioComida <- 5.25; 
                    5: 
						nombreCombo <- "Combo Picante";        
						precioComida <- 5.75; 
                    De Otro Modo:
                        Escribir "Opción inválida. Intente de nuevo.";
                FinSegun;
            2:
                Segun opcionCombo Hacer
                    1: 
						nombreCombo <- "Combo Milanesa";       
						precioComida <- 6.00; 
                    2: 
						nombreCombo <- "Combo Pollo Clásico"; 
						precioComida <- 5.75; 
                    3: 
						nombreCombo <- "Combo Club Suprema";   
						precioComida <- 6.50; 
                    4: 
						nombreCombo <- "Combo Bife de Chorizo";
						precioComida <- 7.25; 
                    5: 
						nombreCombo <- "Combo Bondiola";      
						precioComida <- 7.00; 
                    De Otro Modo:
                        Escribir "Opción inválida. Intente de nuevo.";
                FinSegun;
            3:
                Segun opcionCombo Hacer
                    1: 
						nombreCombo <- "Combo Clásico";        
						precioComida <- 7.00; 
                    2: 
						nombreCombo <- "Combo Napolitano";     
						precioComida <- 7.50;
                    3: 
						nombreCombo <- "Combo Familiar";      
						precioComida <- 10.00;
                    4: 
						nombreCombo <- "Combo Veggie";         
						precioComida <- 7.25; 
                    5: 
						nombreCombo <- "Combo Cuatro Quesos"; 
						precioComida <- 8.00; 
                    De Otro Modo:
                        Escribir "Opción inválida. Intente de nuevo.";
                FinSegun;
        FinSegun;
		
		
        Si validocombo = Falso Entonces // Si la opción ingresada fue inválida, espera y limpia la pantalla antes de repetir
            Esperar 1.5 Segundos;
            Limpiar Pantalla;
        FinSi;
		
    Hasta Que validocombo = Verdadero;
	
    Limpiar Pantalla;
	
FinSubProceso


SubProceso SeleccionarPersonalizarPedido(nombreBebida, precioBebida)
	
	// Declaración de variables
	Definir tipoComida Como Entero;
	Definir tipoCarne Como Caracter;
	Definir tipoPan Como Cadena;
	Definir tipoIngredientes Como Cadena;
	Definir precio Como Real;
	Definir precioAcom Como Real;
	Definir ensalada, aderezos Como Cadena;
	Definir acompanamientoTexto Como Cadena;
	Definir tipoMasa, tipoSalsa, tipoQueso, seleccionados Como Cadena;
    Definir precioSalsa, precioQueso Como Real;
	Definir entradaPer como cadena;
	
	// Inicialización de precios
	precioAcom <- 0;
	Precio <- 0;
	precioSalsa <- 0;
    precioQueso <- 0;
	
	// Menú para elegir qué tipo de comida se quiere personalizar
	Repetir
		Escribir "===============================";
		Escribir "Seleciona Pedido a personalizar";
		Escribir "===============================";
		Escribir "1. Personalizar Hamburguesas";
		Escribir "2. Personalizar  Sándwiches";
		Escribir "3. Personalizar  Pizzas";
		Escribir "-------------------------------";
		Escribir "Ingrese una opción (1 a 3):";
		Leer entradaPer;
		
		// Validación de la opción ingresada
		Si entradaPer = "1" O entradaPer = "2" O entradaPer = "3" Entonces
			tipoComida <- ConvertirANumero(entradaPer);
			Limpiar Pantalla;
		Sino
			Escribir "Opción inválida. Intente de nuevo.";
			Esperar 1.5 Segundos;
			tipoComida <- 0;
			Limpiar Pantalla;
		FinSi;
	Hasta Que tipoComida >= 1 Y tipoComida <= 3;
	Limpiar Pantalla;
	
	
	Segun tipoComida Hacer
		1: // Hamburguesa
			PersonalizarHamburguesa(precio, tipoPan, tipoCarne);
			SeleccionarEnsaladasYAderezos(tipoComida, ensalada, aderezos);
		2: // Sándwich
			PersonalizarSandwich(tipoPan, tipoCarne, precio); // Personalización del sándwich
			SeleccionarEnsaladasYAderezos(tipoComida, ensalada, aderezos);
		3: // Pizza
			PersonalizarPizza(tipoMasa, tipoSalsa, tipoQueso, precioSalsa, precioQueso, seleccionados);
	FinSegun;
	
	
	SeleccionarAcompanamiento(precioAcom , acompanamientoTexto );// Selección de acompañamiento y bebida (común para todos los tipos)
	SeleccionarBebida(nombreBebida, precioBebida);
	
	// Generación del ticket de acuerdo al tipo de comida personalizada
	Si tipoComida = 1 O tipoComida = 2 Entonces
		TicketHamburguesaYSandwich(tipoComida, tipoPan, tipoCarne, ensalada, aderezos, acompanamientoTexto, Precio, precioAcom, precioBebida, nombreBebida);
	SiNo
		TicketPizza(tipoMasa, tipoSalsa, precioSalsa, tipoQueso, precioQueso, seleccionados, acompanamientoTexto, precioAcom, precioBebida, nombreBebida);
	FinSi

FinSubProceso


SubProceso PersonalizarHamburguesa(Precio Por Referencia, tipoPan Por Referencia, tipoCarne Por Referencia)
    Definir opcionPan, opcionCarne Como Entero;
    Definir entradaHambur Como Cadena;
	Definir validoHambur Como Logico;
	
	
    validoHambur <- Falso; // Se inicializa la variable de validación
	
    // --- Selección del tipo de pan ---
    Repetir
        Limpiar Pantalla;
		Escribir "===============================";
        Escribir "   ----- TIPOS DE PAN -----";
		Escribir "===============================";
        Escribir "1. Pan semillas sésamo";
        Escribir "2. Pan brioche";
        Escribir "3. Pan artesanal";
        Escribir "4. Pan integral redondo";
		Escribir "===============================";
        Escribir "Seleccione el tipo de pan (1 a 4):";
        Leer entradaHambur;
		
        // Validación de la entrada del usuario
        Si entradaHambur = "1" O entradaHambur = "2" O entradaHambur = "3" O entradaHambur = "4" Entonces
            opcionPan <- ConvertirANumero(entradaHambur);
            validoHambur <- Verdadero;
        Sino
            Escribir "Opción inválida. Intente de nuevo.";
            validoHambur <- Falso;
			Esperar 1.5 Segundos;
        FinSi;
		
    Hasta Que validoHambur = Verdadero;
	
    
    Segun opcionPan Hacer
        1: tipoPan <- "Pan semillas sésamo";
        2: tipoPan <- "Pan brioche";
        3: tipoPan <- "Pan artesanal";
        4: tipoPan <- "Pan integral redondo";
    FinSegun;
	
    
	
    validoHambur <- Falso; // Se reinicia la validación para el nuevo menú
	
    Repetir
        Limpiar Pantalla;
		Escribir "===============================";
        Escribir "  ----- TIPOS DE CARNE -----";
		Escribir "===============================";
        Escribir "1. Carne de res       - $5.00";
        Escribir "2. Carne doble        - $6.00";
        Escribir "3. Carne triple       - $7.00";
        Escribir "4. Carne vegana       - $5.50";
		Escribir "===============================";
        Escribir "Seleccione el tipo de carne (1 a 4):";
        Leer entradaHambur;
		
        // Validación de la entrada del usuario
        Si entradaHambur = "1" O entradaHambur = "2" O entradaHambur = "3" O entradaHambur = "4" Entonces
            opcionCarne <- ConvertirANumero(entradaHambur);
            validoHambur <- Verdadero;
        Sino
            Escribir "Opción inválida. Intente de nuevo.";
            validoHambur <- Falso;
			Esperar 1.5 Segundos;
        FinSi;
		
    Hasta Que validoHambur = Verdadero;
	
    
    Segun opcionCarne Hacer
        1:
            tipoCarne <- "Carne de res";
            Precio <- 5.00;
        2:
            tipoCarne <- "Carne doble";
            Precio <- 6.00;
        3:
            tipoCarne <- "Carne triple";
            Precio <- 7.00;
        4:
            tipoCarne <- "Carne vegana";
            Precio <- 5.50;
    FinSegun;
	
    
	Escribir "Tipo de pan: ", tipoPan;
	Escribir "Tipo de carne: ", tipoCarne;
	Escribir "Precio total del sándwich: $", precio;
	
    // Limpia pantalla para continuar con el flujo del programa principal
    Limpiar Pantalla;

FinSubProceso


SubProceso PersonalizarSandwich(tipoPan Por Referencia, tipoCarne Por Referencia, precio Por Referencia)
    Definir opcionPan, opcionCarne Como Entero;
    Definir respuesta, entradaSand Como Cadena;
    Definir validoSand Como Logico;
	
    Repetir
		// --- Selección del tipo de pan ---
        Escribir "===============================";
        Escribir "    Seleccionar tipo de pan:";
        Escribir "===============================";
        Escribir "1. Pan blanco";
        Escribir "2. Pan integral";
        Escribir "3. Pan de centeno";
        Escribir "4. Pan de espelta";
        Escribir "5. Pan de maíz";
        Escribir "6. Pan de avena";
        Escribir "===============================";
        Escribir "Seleccione una opción (1 a 6):";
        Leer entradaSand;
        
        Si entradaSand = "1" o entradaSand = "2" o entradaSand = "3" o entradaSand = "4" o entradaSand = "5" o entradaSand = "6" Entonces
            opcionPan <- ConvertirANumero(entradaSand);
            validoSand <- Verdadero;
			Limpiar Pantalla;
        Sino
            Escribir "Opción inválida. Intente de nuevo.";
            Esperar 1.5 Segundos;
            validoSand <- Falso;
			Limpiar Pantalla;
        FinSi;
    Hasta Que validoSand = Verdadero
	
    Segun opcionPan Hacer
        1: tipoPan <- "Pan blanco";
        2: tipoPan <- "Pan integral";
        3: tipoPan <- "Pan de centeno";
        4: tipoPan <- "Pan de espelta";
        5: tipoPan <- "Pan de maíz";
        6: tipoPan <- "Pan de avena";
    FinSegun;
	
    Repetir
		// --- Selección entre carnes calientes o frías ---
        Escribir "===============================";
        Escribir "  Seleccione tipo de carne:";
        Escribir "===============================";
        Escribir "1. Carnes Calientes";
        Escribir "2. Carnes Frías";
        Escribir "===============================";
        Escribir "Ingrese opción (1 o 2):";
        Leer respuesta;
        
        Si respuesta = "1" O respuesta = "2" Entonces
            validoSand <- Verdadero;
			Limpiar Pantalla;
        Sino
            Escribir "Opción inválida. Intente de nuevo.";
            Esperar 1.5 Segundos;
            validoSand <- Falso;
			Limpiar Pantalla;
        FinSi;
    Hasta Que validoSand = Verdadero
	
    Si respuesta = "1" Entonces
        Repetir
			// --- Submenú: Carnes Calientes ---
            Escribir "===============================";
            Escribir "     Escoja Tipo de carne:";
            Escribir "===============================";
            Escribir "1. Milanesa           $6.00";
            Escribir "2. Suprema            $6.50";
            Escribir "3. Bife de chorizo    $7.00";
            Escribir "4. Bondiola           $7.25";
            Escribir "===============================";
            Escribir "Seleccione una opción (1 a 4):";
            Leer entradaSand;
			
            Si entradaSand = "1" O entradaSand = "2" O entradaSand = "3" O entradaSand = "4" Entonces
                opcionCarne <- ConvertirANumero(entradaSand);
                validoSand <- Verdadero;
				Limpiar Pantalla;
            Sino
                Escribir "Opción inválida. Intente de nuevo.";
                Esperar 1.5 Segundos;
                validoSand <- Falso;
				Limpiar Pantalla;
            FinSi;
        Hasta Que validoSand = Verdadero
		
        Segun opcionCarne Hacer
            1: tipoCarne <- "Milanesa"; 
				Precio <- 6.00;
            2: tipoCarne <- "Suprema"; 
				Precio <- 6.50;
            3: tipoCarne <- "Bife de chorizo"; 
				Precio<- 7.00;
            4: tipoCarne <- "Bondiola"; 
				Precio <- 7.25;
        FinSegun;
		
    Sino
        Repetir
			// --- Submenú: Carnes frias ---
            Escribir "===============================";
            Escribir "     Escoja Tipo de carne:";
            Escribir "===============================";
            Escribir "1. Jamón             $5.50";
            Escribir "2. Queso             $5.25";
            Escribir "3. Mortadela         $5.75";
            Escribir "4. Salame            $6.00";
            Escribir "5. Ternera           $6.50";
            Escribir "===============================";
            Escribir "Seleccione una opción (1 a 5):";
            Leer entradaSand;
			
            Si entradaSand = "1" O entradaSand = "2" O entradaSand = "3" O entradaSand = "4" o entradaSand = "5" Entonces
                opcionCarne <- ConvertirANumero(entradaSand);
                validoSand <- Verdadero;
				Limpiar Pantalla;
            Sino
                Escribir "Opción inválida. Intente de nuevo.";
                Esperar 1.5 Segundos;
                validoSand <- Falso;
				Limpiar Pantalla;
            FinSi;
        Hasta Que validoSand = Verdadero
		
        Segun opcionCarne Hacer
            1: tipoCarne <- "Jamón"; 
				Precio <- 5.50;
            2: tipoCarne <- "Queso"; 
				Precio <- 5.25;
            3: tipoCarne <- "Mortadela"; 
				Precio <- 5.75;
            4: tipoCarne <- "Salame"; 
				Precio <- 6.00;
            5: tipoCarne <- "Ternera"; 
				Precio <- 6.50;
        FinSegun;
    FinSi;
	
	Escribir "Tipo de pan: ", tipoPan;
	Escribir "Tipo de carne: ", tipoCarne;
	Escribir "Precio total del sándwich: $", precio;
	Limpiar Pantalla;
FinSubProceso


SubProceso PersonalizarPizza(tipoMasa Por Referencia, tipoSalsa Por Referencia, tipoQueso Por Referencia, precioSalsa Por Referencia, precioQueso Por Referencia, seleccionados Por Referencia)
    Definir opcionpizza como entero;
	Definir entradaPizza Como Cadena;
    Definir validoPizza Como Logico;
	Definir respuesta, ingrediente Como Cadena;
	Definir i Como Entero;
	Definir ingredientesCarnesVerduras Como Caracter;
	
	Dimension ingredientesCarnesVerduras[8]; // Array para almacenar ingredientes adicionales
	
	Repetir
		// --- Selección del tipo de masa ---
        Escribir "===============================";
        Escribir "     --- TIPOS DE MASA ---";
        Escribir "===============================";
        Escribir "1. Masa delgada";
        Escribir "2. Masa gruesa";
        Escribir "3. Masa rellena de queso";
        Escribir "===============================";
        Escribir "Seleccione una opción (1 a 3):";
        Leer entradaPizza;
		
		Si entradaPizza = "1" o entradaPizza = "2" o entradaPizza = "3" Entonces
            opcionpizza <- ConvertirANumero(entradaPizza);
            validoPizza <- Verdadero;
			Limpiar Pantalla;
        Sino
            Escribir "Opción inválida. Intente de nuevo.";
            Esperar 1.5 Segundos;
            validoPizza <- Falso;
			Limpiar Pantalla;
        FinSi;
    Hasta Que validoPizza = Verdadero
	
    Segun opcionpizza Hacer
        1: tipoMasa <- "Masa delgada";
        2: tipoMasa <- "Masa gruesa";
        3: tipoMasa <- "Masa rellena de queso";
    FinSegun;
	Escribir "tipo masa es:",tipoMasa;
	Limpiar Pantalla;
	
	
	Repetir
		// --- Selección del tipo de salsa ---
		Escribir "===============================";
		Escribir "   Seleccione el tipo de salsa:";
		Escribir "===============================";
		Escribir "1. Salsa tomate clásica - $5.00";
		Escribir "2. Salsa barbacoa       - $6.00";
		Escribir "3. Salsa blanca         - $5.50";
		Escribir "4. Pesto                - $7.00";
		Escribir "5. Salsa picante        - $6.50";
		Escribir "===============================";
		Escribir "Seleccione una opción (1 a 5):";
		Leer entradaPizza;
		
		Si entradaPizza = "1" o entradaPizza = "2" o entradaPizza = "3" o entradaPizza = "4" o entradaPizza = "5" Entonces
			opcionpizza <- ConvertirANumero(entradaPizza);
			validoPizza <- Verdadero;
			Limpiar Pantalla;
		Sino
			Escribir "Opción inválida. Intente de nuevo.";
			Esperar 1.5 Segundos;
			validoPizza <- Falso;
			Limpiar Pantalla;
		FinSi;
	Hasta Que validoPizza = Verdadero
	
	Segun opcionpizza Hacer
		1:
			tipoSalsa <- "Salsa de tomate clásica";
			precioSalsa <- 5.00;
		2:
			tipoSalsa <- "Salsa barbacoa";
			precioSalsa <- 6.00;
		3:
			tipoSalsa <- "Salsa blanca";
			precioSalsa <- 5.50;
		4:
			tipoSalsa <- "Pesto";
			precioSalsa <- 7.00;
		5:
			tipoSalsa <- "Salsa picante";
			precioSalsa <- 6.50;
	FinSegun;
	
	
	Escribir "Ha seleccionado: ", tipoSalsa;
	Escribir "Precio: $", precioSalsa;
	Limpiar Pantalla;
	Repetir
		// --- Selección del tipo de queso ---
		Escribir "===============================";
		Escribir "    Seleccione el tipo de queso:";
		Escribir "===============================";
		Escribir "1. Mozzarella     - $4.00";
		Escribir "2. Cheddar        - $4.50";
		Escribir "3. Parmesano      - $5.00";
		Escribir "4. Provolone      - $4.75";
		Escribir "5. Ricotta        - $5.25";
		Escribir "6. Queso vegano   - $6.00";
		Escribir "===============================";
		Escribir "Seleccione una opción (1 a 6):";
		Leer entradaPizza;
		
		Si entradaPizza = "1" o entradaPizza = "2" o entradaPizza = "3" o entradaPizza = "4" o entradaPizza = "5" o entradaPizza = "6" Entonces
			opcionpizza <- ConvertirANumero(entradaPizza);
			validoPizza <- Verdadero;
			Limpiar Pantalla;
		Sino
			Escribir "Opción inválida. Intente de nuevo.";
			Esperar 1.5 Segundos;
			validoPizza <- Falso;
			Limpiar Pantalla;
		FinSi;
	Hasta Que validoPizza = Verdadero
	
	Segun opcionpizza Hacer
		1:
			tipoQueso <- "Mozzarella";
			precioQueso <- 2.00;
		2:
			tipoQueso <- "Cheddar";
			precioQueso <- 2.50;
		3:
			tipoQueso <- "Parmesano";
			precioQueso <- 2.00;
		4:
			tipoQueso <- "Provolone";
			precioQueso <- 2.75;
		5:
			tipoQueso <- "Ricotta";
			precioQueso <- 2.25;
		6:
			tipoQueso <- "Queso vegano";
			precioQueso <- 2.00;
	FinSegun;
	
	Escribir "Ha seleccionado: ", tipoQueso;
	Escribir "Precio: $", precioQueso;
	Limpiar Pantalla;
	
	// Inicialización de cadena de ingredientes seleccionados
	seleccionados <- "";
	
	// Carga de ingredientes opcionales en un arreglo
	ingredientesCarnesVerduras[0] <- "Jamón";
	ingredientesCarnesVerduras[1] <- "Pepporoni";
	ingredientesCarnesVerduras[2] <- "Tocino";
	ingredientesCarnesVerduras[3] <- "Salchicha italiana";
	ingredientesCarnesVerduras[4] <- "Champiñones";
	ingredientesCarnesVerduras[5] <- "Cebolla";
	ingredientesCarnesVerduras[6] <- "Pimientos";
	ingredientesCarnesVerduras[7] <- "Espinaca";

	
	// Pregunta por cada ingrediente si se desea añadir
	Para i <- 0 Hasta 7 Hacer
		ingrediente <- ingredientesCarnesVerduras[i];
		Escribir "===============================";
		Escribir "    Seleciona Ingredientes ";
		Escribir "===============================";
		Escribir "¿Desea ", ingrediente, "? (S/N):";
		Leer respuesta;
		Limpiar Pantalla;
		// Si el usuario acepta, se concatena el ingrediente a la lista final
		Si Mayusculas(respuesta) = "S" Entonces
			seleccionados <- Concatenar(seleccionados, Concatenar(ingrediente, ", "));
		FinSi;
	FinPara;
	
	Escribir "Ingredientes seleccionados: ", seleccionados;
	Limpiar Pantalla;
FinSubProceso


SubProceso SeleccionarEnsaladasYAderezos(tipoComida Por Referencia, ensalada Por Referencia, aderezos Por Referencia)
	Definir respuesta, ingrediente Como Cadena;
	Definir i Como Entero;
    Definir ingredientesEnsalada Como Caracter;
    Definir ingredientesAderezos Como Caracter;
    Dimension ingredientesEnsalada[3];   // Lista de ingredientes para ensalada
    Dimension ingredientesAderezos[6];   // Lista de aderezos disponibles
	
    // Inicializamos las cadenas donde se guardarán las selecciones del usuario
    ensalada <- "";
    aderezos <- "";
    
    // Se cargan los ingredientes posibles de ensalada en un arreglo
    ingredientesEnsalada[0] <- "Lechuga";
    ingredientesEnsalada[1] <- "Tomate";
    ingredientesEnsalada[2] <- "Cebolla";
    
    // Se cargan los aderezos posibles en un arreglo
    ingredientesAderezos[0] <- "Mayonesa";
    ingredientesAderezos[1] <- "Mostaza";
    ingredientesAderezos[2] <- "Ketchup";
    ingredientesAderezos[3] <- "Salsa picante";
    ingredientesAderezos[4] <- "Salsa BBQ";
    ingredientesAderezos[5] <- "Salsa tartara";
	
    // Solo se piden ensalada y aderezos si el tipo de comida es 1 (hamburguesa) o 2 (sándwich)
    Si tipoComida = 1 O tipoComida = 2 Entonces
        
        // Ciclo para preguntar por cada ingrediente de ensalada
        Para i <- 0 Hasta 2 Hacer
			Escribir "===============================";
			Escribir " ingredientes para su ensalada";
			Escribir "===============================";
            ingrediente <- ingredientesEnsalada[i];
            Escribir "¿Desea ", ingrediente, "? (S/N):";
            Leer respuesta;
			Limpiar Pantalla;
            // Si la respuesta es "S", se agrega a la cadena de ensalada
            Si Mayusculas(respuesta) = "S" Entonces
                ensalada <- Concatenar(ensalada, Concatenar(ingrediente, ", "));
            FinSi;
        FinPara;
        
        // Ciclo para preguntar por cada aderezo
        Para i <- 0 Hasta 5 Hacer
			Escribir "===============================";
			Escribir "     Seleccione aderezos:";
			Escribir "===============================";
            ingrediente <- ingredientesAderezos[i];
            Escribir "¿Desea ", ingrediente, "? (S/N):";
            Leer respuesta;
			Limpiar Pantalla;
            // Si la respuesta es "S", se agrega a la cadena de aderezos
            Si Mayusculas(respuesta) = "S" Entonces
                aderezos <- Concatenar(aderezos, Concatenar(ingrediente, ", "));
            FinSi;
        FinPara;
    FinSi;
    
    Escribir "Ingredientes de ensalada seleccionados: ", ensalada;
    Escribir "Aderezos seleccionados: ", aderezos;
	Limpiar Pantalla;
FinSubProceso



SubProceso SeleccionarAcompanamiento(precioAcom Por Referencia, acompanamientoTexto Por Referencia)
    Definir opcion Como Entero;
    Definir validoAcom Como Logico;
	
	// Inicializamos la validación en Falso
    validoAcom <- Falso;
	
    
    Repetir
		// Repetimos hasta que el usuario elija una opción válida (entre 1 y 6)
        Escribir "===============================";
        Escribir "   ----- ACOMPAÑAMIENTO -----";
        Escribir "===============================";
        Escribir "1. Papas fritas       - $2.00";
        Escribir "2. Aros de cebolla    - $2.00";
        Escribir "3. Empanada           - $1.50";
        Escribir "4. Nuggets de pollo   - $2.50";
        Escribir "5. Ensalada rusa      - $1.75";
        Escribir "6. Ensalada clásica   - $1.50";
        Escribir "===============================";
        Escribir "Seleccione su acompañamiento (1 a 6):";
        Leer opcion;
		
        Si opcion >= 1 Y opcion <= 6 Entonces
            validoAcom <- Verdadero;
        Sino
            Escribir "Opción inválida. Intente de nuevo.";
            Esperar 1.5 Segundos;
			Limpiar Pantalla;
        FinSi;
    Hasta Que validoAcom = Verdadero;
    
    Segun opcion Hacer
        1:
            acompanamientoTexto <- "Papas fritas";     // Según la opción elegida, se asigna el texto y el precio del acompañamiento
            precioAcom <- 2.00;
        2:
            acompanamientoTexto <- "Aros de cebolla";
            precioAcom <- 2.00;
        3:
            acompanamientoTexto <- "Empanada";
            precioAcom <- 1.50;
        4:
            acompanamientoTexto <- "Nuggets de pollo";
            precioAcom <- 2.50;
        5:
            acompanamientoTexto <- "Ensalada rusa";
            precioAcom <- 1.75;
        6:
            acompanamientoTexto <- "Ensalada clásica";
            precioAcom <- 1.50;
    FinSegun;
	
    Limpiar Pantalla;
    Escribir "Acompañamiento seleccionado: ", acompanamientoTexto;
    Escribir "Precio total del acompañamiento: $", precioAcom;
	Limpiar Pantalla;
FinSubProceso


SubProceso SeleccionarBebida(nombreBebida Por Referencia, precioBebida Por Referencia)
    Definir opcionBebida Como Entero;
    Definir entradaBebida Como Cadena;
    Definir validoBebida Como Logico;
	
    validoBebida <- Falso;
	
    Repetir
		// Repetir hasta que el usuario seleccione una bebida
		Escribir "===============================";
        Escribir "----- BEBIDAS DISPONIBLES -----";
		Escribir "===============================";
        Escribir "1. Coca-Cola          - $1.50";
        Escribir "2. Pepsi              - $1.50";
        Escribir "3. Fanta              - $1.50";
        Escribir "4. Cerveza            - $2.00";
        Escribir "5. Agua               - $1.00";
        Escribir "6. Jugos Frutales     - $1.75";
		Escribir "===============================";
        Escribir "Seleccione una bebida (1 a 6):";
        
        Leer entradaBebida;
		
        Si entradaBebida = "1" O entradaBebida = "2" O entradaBebida = "3" O entradaBebida = "4" O entradaBebida = "5" o entradaBebida = "6" Entonces
            opcionBebida <- ConvertirANumero(entradaBebida);
            validoBebida <- Verdadero;
        Sino
            Escribir "Opción inválida. Intente de nuevo.";
            validoBebida <- Falso;
			Esperar 1.5 Segundos;
            Limpiar Pantalla;
        FinSi;
		
    Hasta Que validoBebida = Verdadero;
	
    Segun opcionBebida Hacer
        1: 
			nombreBebida <- "Coca-Cola";     
			precioBebida <- 1.50;
        2: 
			nombreBebida <- "Pepsi";       
			precioBebida <- 1.50;
        3: 
			nombreBebida <- "Fanta";       
			precioBebida <- 1.50;
        4: 
			nombreBebida <- "Cerveza";   
			precioBebida <- 2.00;
        5:
			nombreBebida <- "Agua";        
			precioBebida <- 1.00;
        6:
			nombreBebida <- "Jugos Frutales"; 
			precioBebida <- 1.75;
    FinSegun;
	
    Limpiar Pantalla;
FinSubProceso


SubProceso TicketCombos(opcionMenu, nombreCombo, nombreBebida, precioComida, precioBebida)
	Definir Total, pago, vuelto Como Real;
	Definir numeroTicket, minutosEspera Como Entero;
	Definir Combo como cadena;
	// Se genera un número de ticket aleatorio entre 100 y 999
	// Se estima un tiempo aleatorio de espera entre 10 y 25 minutos
	numeroTicket <- Aleatorio(100, 999);
	minutosEspera <- Aleatorio(10, 25);
	Total <- preciocomida + precioBebida;// Sumamos el precio del combo y la bebida
	Escribir "Total a pagar: $", Total;
	Escribir "Ingrese la cantidad con la que pagará: ";	// Se solicita el monto con el que va a pagar el cliente
	Leer pago;
	vuelto <- pago - Total; // Resta el total con el pago
	
	Si pago < Total Entonces //si el pago es menor que el total, pedir nuevamente el monto
		Escribir "Monto insuficiente. Por favor, ingrese un valor válido.";
		Repetir
			Escribir "Ingrese nuevamente la cantidad con la que pagará: ";
			Leer pago;
		Hasta Que pago >= Total
	FinSi
	Limpiar Pantalla;
	Segun opcionMenu Hacer
        1: Combo <- "  Hamburguesa "; 	// Asigna el tipo de comida seleccionada según la opción del menú
        2: Combo <- "  Sándwich ";
		3: combo <- "  pizza";	
    FinSegun;
	Escribir CartelHamburguesa;
	Esperar 2 Segundos;
	Limpiar Pantalla;
    Escribir "";
    Escribir "===============================";
    Escribir "        TICKET DE COMPRA       ";
    Escribir "===============================";
	Escribir " Nombre del combo:", Combo;
    Escribir " Combo  : ", nombreCombo;
    Escribir " Bebida : ", nombreBebida;
    Escribir "===============================";
    Escribir " Precio Combo  : $", precioComida;
    Escribir " Precio Bebida : $", precioBebida;
    Escribir "===============================";
    Escribir " TOTAL A PAGAR : $", total;
    Escribir " MONTO ENTREGADO: $", pago;
    Escribir " VUELTO         : $", vuelto;
    Escribir "===============================";
	Escribir "Su orden estará lista en ", minutosEspera, " minutos.";
	Escribir "Número de ticket: #", numeroTicket;
	Escribir "===============================";
    Esperar 2 Segundos;
    Escribir "";
    Escribir "Gracias por su compra. ¡Buen provecho!";
    Esperar 1.5 Segundos;
FinSubProceso


SubProceso TicketPizza(tipoMasa, tipoSalsa, precioSalsa, tipoQueso, precioQueso, seleccionados, acompanamientoTexto, precioAcom, precioBebida, nombreBebida)
	Definir total, pago, vuelto Como Real;
	Definir numeroTicket, minutosEspera Como Entero;
	// Se genera un número de ticket aleatorio entre 100 y 999
	// Se estima un tiempo aleatorio de espera entre 10 y 25 minutos
	numeroTicket <- Aleatorio(100, 999);
	minutosEspera <- Aleatorio(10, 25);
	total <- precioSalsa + precioQueso + precioAcom + precioBebida; // Sumamos el precio de la salsa queso acompañamiento y la bebida
	Escribir "Total a pagar: $", total;
	Escribir "Ingrese la cantidad con la que pagará: ";  // Se solicita el monto con el que va a pagar el cliente
	Leer pago;
	vuelto <- pago- total; // Resta el total con el pago 
	Si pago < total Entonces
		Escribir "Monto insuficiente. Por favor, ingrese un valor válido."; //si el pago es menor que el total, pedir nuevamente el monto
		Repetir
			Escribir "Ingrese nuevamente la cantidad con la que pagará: ";
			Leer pago;
		Hasta Que pago >= total
	FinSi
	Limpiar Pantalla;
	Escribir pizza;
	Esperar 2 Segundos;
	Limpiar Pantalla;
	Escribir "===============================";
	Escribir "         TICKET DE PIZZA       ";
	Escribir "===============================";
	Escribir "Masa: ", tipoMasa;
	Escribir "Salsa: ", tipoSalsa;
	Escribir "Queso: ", tipoQueso;
	Escribir "Ingredientes adicionales:";
	Escribir "", seleccionados;
	Escribir "Acompañamiento: ", acompanamientoTexto;
	Escribir "Bebida: ", nombreBebida;
	Escribir "Precio salsa: $", precioSalsa;
	Escribir "Precio queso: $", precioQueso;
	Escribir "Precio Acompañamiento: $", precioAcom;
	Escribir "Precio Bebida: $", precioBebida;
	Escribir "-------------------------------";
	Escribir "TOTAL A PAGAR: $", total;
	Escribir "MONTO PAGADO: $", pago;
	Escribir "VUELTO: $", vuelto;
	Escribir "===============================";
	Escribir "Su orden estará lista en ", minutosEspera, " minutos.";
	Escribir "Número de ticket: #", numeroTicket;
	Esperar 2 Segundos;
    Escribir "";
    Escribir "Gracias por su compra. ¡Buen provecho!";
  
FinSubProceso


SubProceso TicketHamburguesaYSandwich(tipoComida, tipoPan, tipoCarne, ensalada, aderezos, acompanamientoTexto, Precio, precioAcom,precioBebida, nombreBebida)
    Definir nombreComida Como Cadena;
	Definir TotalPer, pago, vuelto Como Real;
	Definir numeroTicket, minutosEspera Como Entero;
	// Se genera un número de ticket aleatorio entre 100 y 999
	// Se estima un tiempo aleatorio de espera entre 10 y 25 minutos
	numeroTicket <- Aleatorio(100, 999);
	minutosEspera <- Aleatorio(10, 25);
	TotalPer <- Precio + precioAcom + precioBebida;  // Sumamos el precio del pedido, acompañamiento y la bebida
	Escribir "Total a pagar: $", TotalPer;
	Escribir "Ingrese la cantidad con la que pagará: ";  // Se solicita el monto con el que va a pagar el cliente
	Leer pago;
	vuelto <- pago - TotalPer; // Resta el total con el pago 
	Si pago < TotalPer Entonces
		Escribir "Monto insuficiente. Por favor, ingrese un valor válido."; //si el pago es menor que el total, pedir nuevamente el monto
		Repetir
			Escribir "Ingrese nuevamente la cantidad con la que pagará: ";
			Leer pago;
		Hasta Que pago >= TotalPer
	FinSi
	Limpiar Pantalla;
	Escribir CartelHamburguesa;
	Esperar 2 Segundos;;
    Segun tipoComida Hacer
        1: nombreComida <- "Hamburguesa Personalizada";
        2: nombreComida <- "Sándwich Personalizado"; // Asigna el tipo de comida seleccionada según la opción del menú
    FinSegun;
	
    Limpiar Pantalla;
    Escribir "===============================";
    Escribir "        TICKET DE COMPRA       ";
    Escribir "===============================";
    Escribir "Producto: ", nombreComida;
	Escribir "Pan: ", tipoPan;
	Escribir "Carne: ", tipoCarne;
	Escribir "Ensalada: ", ensalada;
	Escribir "Aderezos: ", aderezos;
	Escribir "acompañamiento: ", acompanamientoTexto;
	Escribir "Bebida: ", nombreBebida;
	Escribir "Precio Hamburguesa: $", Precio;
	Escribir "Precio Acompañamiento: $", precioAcom;
	Escribir "Precio Bebida: $", precioBebida;
    Escribir "-------------------------------";
    Escribir "Total a pagar: $", TotalPer;
	Escribir "MONTO PAGADO: $", pago;
	Escribir "VUELTO: $", vuelto;
    Escribir "===============================";
	Escribir "Su orden estará lista en ", minutosEspera, " minutos.";
	Escribir "Número de ticket: #", numeroTicket;
    Escribir "===============================";
	Esperar 2 Segundos;
    Escribir "";
    Escribir "Gracias por su compra. ¡Buen provecho!";
	
FinSubProceso


Funcion  bienvenida <- bienvenida
	Escribir "  ____  _                           _     _                                   ";
	Escribir " |  _ \(_)                         (_)   | |                                  ";
	Escribir " | |_) |_  ___ _ ____   _____ _ __  _  __| | ___     __ _                     ";
	Escribir " |  _ <| |/ _ \  _ \ \ / / _ \  _ \| |/ _` |/ _ \   / _` |                   ";
	Escribir " | |_) | |  __/ | | \ V /  __/ | | | | (_| | (_) | | (_| |                   ";
	Escribir " |____/|_|\___|_| |_|\_/ \___|_| |_|_|\__,_|\___/   \__,_|        _          ";
	Escribir " |  ____|                        | |                 | |         | |         ";
	Escribir " | |__   ___  ___ _   _  __ _  __| |_ __ ___  _ __   | |     ___ | |__   ___ ";
	Escribir " |  __| / __|/ __| | | |/ _` |/ _` |  __/ _ \|  _ \  | |    / _ \|  _ \ / _ \";
	Escribir " | |____\__ \ (__| |_| | (_| | (_| | | | (_) | | | | | |___| (_) | |_) | (_) |";
	Escribir " |______|___/\___|\__,_|\__,_|\__,_|_|  \___/|_| |_| |______\___/|_.__/ \___/ ";
	Escribir "                                                                              ";
	Escribir "                       Precione una Tecla                                                       ";
FinFuncion

Funcion  lobo <- lobo	
	Escribir "_¶¶¶¶¶____________________________________________¶¶¶¶";
	Escribir "__¶¶____¶¶¶_______¶¶¶¶¶¶_¶¶¶_¶¶¶¶¶___________¶¶¶¶___¶";
	Escribir "__¶_¶¶_____¶¶¶¶¶¶______________________¶¶¶¶¶¶_____¶¶";
	Escribir "__¶___¶__________¶_______________________________¶__¶";
	Escribir "__¶____¶_______________________________________¶¶___¶";
	Escribir "__¶______¶__________________________________¶_______¶";
	Escribir "__¶______¶____________________________________¶_____¶";
	Escribir "___¶____¶______________________________________¶___¶";
	Escribir "__¶¶___¶________________________________________¶___¶";
	Escribir "__¶_¶¶¶__________________________________________¶_¶";
	Escribir "_¶________________¶¶¶¶¶¶________¶¶¶¶¶¶______________¶_¶";
	Escribir "¶__¶____________¶¶¶¶¶¶¶¶________¶¶¶¶¶¶¶¶____________¶_¶";
	Escribir "¶__¶__________¶¶__¶¶¶¶¶¶________¶¶¶____¶¶¶¶_________¶_¶";
	Escribir "¶_¶¶________¶¶¶_¶¶¶__¶¶¶________¶¶___¶¶¶_¶¶¶_________¶_¶";
	Escribir "¶_¶¶______¶__¶_¶¶¶¶_¶¶____________¶¶_¶¶¶¶¶_¶__¶_____¶¶_¶";
	Escribir "¶_¶¶¶____¶¶¶_¶¶_¶¶¶_¶¶¶__________¶¶¶__¶¶¶_¶_¶_¶____¶¶¶_¶";
	Escribir "¶_¶_¶____¶_¶¶__¶___¶¶¶____________¶¶¶___¶__¶¶_¶____¶_¶_¶";
	Escribir "_¶_¶_¶_¶¶___¶¶¶¶_¶¶¶¶¶____________¶¶¶¶__¶¶¶¶___¶____¶_¶";
	Escribir "__¶_¶_¶¶______¶¶__¶¶_¶____________¶¶¶__¶¶¶___¶__¶¶¶¶_¶";
	Escribir "___¶¶¶¶____¶___¶¶____¶__________¶___¶¶¶___¶______¶";
	Escribir "_____¶¶¶¶______¶¶____¶__________¶___¶¶¶_______¶¶";
	Escribir "_________¶¶____¶¶___¶___________¶___¶¶____¶¶";
	Escribir "___________¶¶_¶¶¶___¶___________¶___¶¶_¶¶¶";
	Escribir "______________¶_¶___¶___________¶___¶_¶";
	Escribir "_______________¶¶___¶___________¶___¶¶";
	Escribir "________________¶___¶_¶¶¶¶¶¶¶¶_¶___¶";
	Escribir "________________¶___¶¶¶¶¶¶¶¶¶¶¶¶___¶";
	Escribir "_________________¶__¶¶¶¶¶¶¶¶¶¶¶¶__¶";
	Escribir "__________________¶___¶¶¶¶¶¶¶¶___¶";
	Escribir "___________________¶___¶¶¶¶¶¶___¶";
	Escribir "____________________¶__________¶";
	Escribir "_____________________¶¶¶¶¶¶¶¶¶¶";
FinFuncion

Funcion  cartelHamburguesa <- CartelHamburguesa
	Escribir "       _______________________";
	Escribir "	    /                          \";
    Escribir "   /                             \";
	Escribir " /                                 \";
    Escribir " (_________________________________)";
    Escribir "  {_.-`-._.-`-._.-`-._.-`-._.-`-._}";
    Escribir "  :MM\ /MMMMMMMMMMMMMMMMMMMMMMMMMM:";
    Escribir "  :MMMMMMMMMM\ /MMMMMMMMMMMMMMMMMM:";
	Escribir "  {_.-`-._.-  -._.-`-._.-`-._.-`-._}";
    Escribir " (_________________________________)";
	Escribir " \                                 /";
	Escribir "   \                              /";
    Escribir "    \___________________________/ ";
	Escribir " ";
	Escribir "	        Generando Ticket...   ";
FinFuncion

Funcion   pizza <- pizza
    Escribir "                       ___;";
    Escribir "                       |  ~~--.;";
    Escribir "                       |#=@##/;";
    Escribir "                       |o# #/;";
    Escribir "                    __ |##o/;";
    Escribir "              _,--~~ | |(_/ ._;";
    Escribir "           ,/   m####| |o/ /   `\\.;";
    Escribir "          /  m##o(_)#| |/ /o##m  `\\;";
    Escribir "         /  #@=#o###o|   /(_)o###   `\\;";
    Escribir "        /  #o####=#@#|  / ##o##@=#     \\;";
    Escribir "       |  (_)#(_)##o#| / ##=#@(_)###    |;";
    Escribir "       | #o####o###(_|/ #o##o####o###   |;";
    Escribir "       | #o#(_)#####o#(_) ###o##o#o##   |;";
    Escribir "       |  (_)##=@#(_)#o#o#(_)#o(_)#    |;";
    Escribir "        \\ ~##o####o#o#=@##o##@##o#~  /;";
    Escribir "         \\. ~o#(_)###o#(_)#(_)o~   ,/;";
    Escribir "           \\_ ~o#=@#(_)#o##(_)#~  _/;";
    Escribir "             `\\_~~o###o####~~   _/ ";
    Escribir "                 --..____,,--";
	Escribir " ";
	Escribir "	             Generando Ticket...   ";
FinFuncion
Funcion integrantes <- integrantes
	Escribir "***********************************************";
	Escribir "*         ESCUADRÓN LOBO - 2025               *";
	Escribir "*            Proyecto Integrador              *";
	Escribir "***********************************************";
	Escribir "* Participante:                               *";
	Escribir "* Proyecto: MENU DE COMIDAS                   *";
	Escribir "* Fecha: 30 de junio de 2025                  *";
	Escribir "***********************************************";
	Escribir "* Participante: Aguilar Lucas Nicolas         *"	;
	Escribir "* Participante: Altamiranda Matías            *";
	Escribir "* Participante: Bertolone Valentín            *";
	Escribir "* Participante: Farias Andrea Cecilia         *";
	Escribir "* Participante: Moreno Juan                   *";
	Escribir "* Participante: Pinaya Valeria                *";
	Escribir "* Participante: Sosa Jairo                    *";
	Escribir "* Participante: Scilipoti Darío               *";
	Escribir "* Participante: Zelada Orlando                *";
	Escribir "* Proyecto: MENU DE COMIDAS                   *";
	Escribir "* Fecha: 20 de junio de 2025                  *";
	Escribir "***********************************************";
	Escribir "Presiona una tecla para terminar la presentacion";
FinFuncion

