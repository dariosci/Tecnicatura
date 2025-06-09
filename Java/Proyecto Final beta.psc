Proceso Menu_De_Comida
	
    // Declaramos variables principales
    Definir opcionMenu, opcionCombo, opcionBebida Como Entero; 
    Definir precioComida, precioBebida, efectivo, vuelto, total Como Real;
    Definir nombreCombo, nombreBebida Como Cadena;
 
	//Inicializamos variables principales
    opcionMenu <- 0;
    opcionCombo <- 0;
    opcionBebida <- 0;
    precioComida <- 0;
    precioBebida <- 0;
    efectivo <- 0;
    vuelto <- 0;
    nombreCombo <- "";
    nombreBebida <- "";
	
	Escribir  bienvenida;
	Esperar Tecla;
	Limpiar Pantalla;
	Escribir lobo;
	Esperar 2 Segundos;
	Limpiar Pantalla;

    Definir entrada Como Cadena;  //Para ingresar una opcion
	
    Repetir
        Escribir "===============================";
        Escribir "        MENU PRINCIPAL         ";
        Escribir "===============================";
        Escribir "1. Combos de Hamburguesas";
        Escribir "2. Combos de Sándwiches";
        Escribir "3. Combos de Pizzas";
        Escribir "4. Personalizar Pedido";
        Escribir "5. Salir";
        Escribir "-------------------------------";
		
        // Validación de entrada
        Repetir
            Escribir "Ingrese una opción (1-5):";
            Leer entrada;
			
            Si entrada = "1" O entrada = "2" O entrada = "3" O entrada = "4" O entrada = "5" Entonces
                opcionMenu <- ConvertirANumero(entrada);
            Sino
                Escribir "Opción inválida. Ingrese un número entre 1 y 5.";
                opcionMenu <- 0; // Valor inválido para que siga el bucle
            FinSi;
			
        Hasta Que opcionMenu >= 1 Y opcionMenu <= 5;
		
        Limpiar Pantalla;
		
        // Ejecutar según la opción seleccionada
        Segun opcionMenu Hacer
            1:
                SeleccionarCombo(1, opcionCombo, precioComida, nombreCombo);
            2:
                SeleccionarCombo(2, opcionCombo, precioComida, nombreCombo);
            3:
                SeleccionarCombo(3, opcionCombo, precioComida, nombreCombo);
            4: 
				SeleccionarPersonalizarPedido;
			5:  
				Escribir "Gracias por visitar Escuadrón Lobo. ¡Hasta pronto!";
        FinSegun;
		
        // Preguntar si desea otra compra
        Si opcionMenu >= 1 Y opcionMenu <= 4 Entonces
			
			// Seleccion de bebida
			SeleccionarBebida(nombreBebida, precioBebida);				//estas 2 funciones 'SeleccionarBebida' y 'ImprimirTicket' van dentro del Si, porque solo se mostraran si el usuario elegi algo para pedir,
																		//y no se sale. Si los pongo fuera, aunque él ponga que quiere 'Salir' le pedira la bebida y le mostrara el ticket.
			
			//CALCULAR MONTO A PAGAR
			total <- precioComida + precioBebida;
			
			Escribir "Total a pagar: $", total;
			
			// Solicitar efectivo hasta que sea suficiente
			Repetir
				Escribir "Ingrese monto en efectivo:";
				Leer efectivo;
				
				Si efectivo < total Entonces
					Escribir "Monto insuficiente. Por favor ingrese al menos $", total;
				FinSi;
			Hasta Que efectivo >= total;
			
			vuelto <- efectivo - total;
			
			Limpiar Pantalla;
			//Generar ticket
			ImprimirTicket(nombreCombo, nombreBebida, precioComida, precioBebida, total, efectivo, vuelto);	   
			
            Escribir "";
            Escribir "¿Desea realizar otra compra? (S/N):";
            Leer entrada;
            Si Mayusculas(entrada) <> "S" Entonces
                opcionMenu <- 5;
            Sino
                Limpiar Pantalla;
            FinSi;
        FinSi;
		
    Hasta Que opcionMenu = 5;
	
FinProceso

SubProceso SeleccionarPersonalizarPedido
	Escribir "En proceso...";
FinSubProceso

SubProceso SeleccionarCombo(tipoCombo, opcionCombo Por Referencia, precioComida Por Referencia, nombreCombo Por Referencia)
    Definir entrada Como caracter;
    Definir valido Como Logico;
    valido <- Falso;
	
    Repetir
        // Mostrar el menú según el tipo de combo
        Segun tipoCombo Hacer
            1:
                Escribir "----- COMBOS DE HAMBURGUESAS -----";
                Escribir "1. Combo Clásico         - $5.00";
                Escribir "2. Combo BBQ             - $5.50";
                Escribir "3. Combo Doble Carne     - $6.50";
                Escribir "4. Combo Veggie          - $5.25";
                Escribir "5. Combo Picante         - $5.75";
            2:
                Escribir "----- COMBOS DE SÁNDWICHES -----";
                Escribir "1. Combo Milanesa        - $6.00";
                Escribir "2. Combo Pollo Clásico   - $5.75";
                Escribir "3. Combo Club Suprema    - $6.50";
                Escribir "4. Combo Bife de Chorizo - $7.25";
                Escribir "5. Combo Bondiola        - $7.00";
            3:
                Escribir "----- COMBOS DE PIZZAS -----";
                Escribir "1. Combo Clásico         - $7.00";
                Escribir "2. Combo Napolitano      - $7.50";
                Escribir "3. Combo Familiar        - $10.00";
                Escribir "4. Combo Veggie          - $7.25";
                Escribir "5. Combo Cuatro Quesos   - $8.00";
        FinSegun;
		
		// Validar selección del combo
        Repetir
            Escribir "Seleccione un combo (1-5):";
            Leer entrada;
			
            Si entrada = "1" O entrada = "2" O entrada = "3" O entrada = "4" O entrada = "5" Entonces
                opcionCombo <- ConvertirANumero(entrada);
                valido <- Verdadero;
            Sino
                Escribir "Opción inválida. Ingrese un número del 1 al 5.";
                valido <- Falso;
            FinSi;
        Hasta Que valido = Verdadero;
		
        // Asignar precio y nombre según la opción válida
        Segun tipoCombo Hacer
            1:
                Segun opcionCombo Hacer
                    1: nombreCombo <- "Combo Clásico";        precioComida <- 5.00; valido <- Verdadero;
                    2: nombreCombo <- "Combo BBQ";            precioComida <- 5.50; valido <- Verdadero;
                    3: nombreCombo <- "Combo Doble Carne";    precioComida <- 6.50; valido <- Verdadero;
                    4: nombreCombo <- "Combo Veggie";         precioComida <- 5.25; valido <- Verdadero;
                    5: nombreCombo <- "Combo Picante";        precioComida <- 5.75; valido <- Verdadero;
                    De Otro Modo:
                        Escribir "Opción inválida. Intente de nuevo.";
                FinSegun;
            2:
                Segun opcionCombo Hacer
                    1: nombreCombo <- "Combo Milanesa";       precioComida <- 6.00; valido <- Verdadero;
                    2: nombreCombo <- "Combo Pollo Clásico";  precioComida <- 5.75; valido <- Verdadero;
                    3: nombreCombo <- "Combo Club Suprema";   precioComida <- 6.50; valido <- Verdadero;
                    4: nombreCombo <- "Combo Bife de Chorizo";precioComida <- 7.25; valido <- Verdadero;
                    5: nombreCombo <- "Combo Bondiola";       precioComida <- 7.00; valido <- Verdadero;
                    De Otro Modo:
                        Escribir "Opción inválida. Intente de nuevo.";
                FinSegun;
            3:
                Segun opcionCombo Hacer
                    1: nombreCombo <- "Combo Clásico";        precioComida <- 7.00; valido <- Verdadero;
                    2: nombreCombo <- "Combo Napolitano";     precioComida <- 7.50; valido <- Verdadero;
                    3: nombreCombo <- "Combo Familiar";       precioComida <- 10.00;valido <- Verdadero;
                    4: nombreCombo <- "Combo Veggie";         precioComida <- 7.25; valido <- Verdadero;
                    5: nombreCombo <- "Combo Cuatro Quesos";  precioComida <- 8.00; valido <- Verdadero;
                    De Otro Modo:
                        Escribir "Opción inválida. Intente de nuevo.";
                FinSegun;
        FinSegun;
		
        Si valido = Falso Entonces
            Esperar 1.5 Segundos;
            Limpiar Pantalla;
        FinSi;
		
    Hasta Que valido = Verdadero;
	
    Limpiar Pantalla;
	
FinSubProceso


SubProceso SeleccionarBebida(nombreBebida Por Referencia, precioBebida Por Referencia)
    Definir opcionBebida Como Entero;
    Definir entrada Como Cadena;
    Definir valido Como Logico;
	
    valido <- Falso;
	
    Repetir
        Escribir "----- BEBIDAS DISPONIBLES -----";
        Escribir "1. Coca-Cola        - $1.50";
        Escribir "2. Pepsi            - $1.50";
        Escribir "3. Fanta            - $1.50";
        Escribir "4. Cerveza          - $2.00";
        Escribir "5. Agua             - $1.00";
        Escribir "6. Jugos Frutales   - $1.75";
        Escribir "Seleccione una bebida (1 a 6):";
        
        Leer entrada;
		
        Si entrada >= "1" Y entrada <= "6" Entonces
            opcionBebida <- ConvertirANumero(entrada);
            valido <- Verdadero;
        Sino
            Escribir "Opción inválida. Intente de nuevo.";
            valido <- Falso;
        FinSi;
		
        Si valido = Falso Entonces
            Esperar 1.5 Segundos;
            Limpiar Pantalla;
        FinSi;
		
    Hasta Que valido = Verdadero;
	
    // Asignar nombre y precio de la bebida
    Segun opcionBebida Hacer
        1: nombreBebida <- "Coca-Cola";      precioBebida <- 1.50;
        2: nombreBebida <- "Pepsi";          precioBebida <- 1.50;
        3: nombreBebida <- "Fanta";          precioBebida <- 1.50;
        4: nombreBebida <- "Cerveza";        precioBebida <- 2.00;
        5: nombreBebida <- "Agua";           precioBebida <- 1.00;
        6: nombreBebida <- "Jugos Frutales"; precioBebida <- 1.75;
    FinSegun;
	
    Limpiar Pantalla;
FinSubProceso

SubProceso ImprimirTicket(nombreCombo, nombreBebida, precioComida, precioBebida,total, efectivo, vuelto)
    Escribir "";
    Escribir "===============================";
    Escribir "        TICKET DE COMPRA       ";
    Escribir "===============================";
    Escribir " Combo  : ", nombreCombo;
    Escribir " Bebida : ", nombreBebida;
    Escribir "===============================";
    Escribir " Precio Combo  : $", precioComida;
    Escribir " Precio Bebida : $", precioBebida;
    Escribir "===============================";
    Escribir " TOTAL A PAGAR : $", total;
    Escribir " MONTO ENTREGADO: $", efectivo;
    Escribir " VUELTO         : $", vuelto;
    Escribir "===============================";
    Esperar 2 Segundos;
    Escribir "";
    Escribir "Gracias por su compra. ¡Buen provecho!";
    Esperar 2 Segundos;
FinSubProceso

SubProceso bienvenida <- bienvenida
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
FinSubProceso
SubProceso lobo <- lobo	
	Escribir "_¶¶¶¶¶____________________________________________¶¶¶¶";
	Escribir "__¶¶____¶¶¶_______¶¶¶¶¶¶_¶¶¶_¶¶¶¶¶___________¶¶¶¶___¶";
	Escribir "__¶_¶¶_____¶¶¶¶¶¶______________________¶¶¶¶¶¶_____¶¶";
	Escribir "__¶___¶__________¶_______________________________¶__¶";
	Escribir "__¶____¶_______________________________________¶¶___¶";
	Escribir "__¶______¶¶___________________________________¶_____¶";
	Escribir "__¶_______¶________________________________¶¶_______¶";
	Escribir "__¶______¶____________________________________¶_____¶";
	Escribir "___¶____¶______________________________________¶___¶";
	Escribir "__¶¶___¶________________________________________¶___¶";
	Escribir "__¶_¶¶¶__________________________________________¶_¶";
	Escribir "_¶___¶____________________________________________¶¶_¶";
	Escribir "_¶________________¶¶¶¶¶¶________¶¶¶¶¶¶______________¶_¶";
	Escribir "¶__¶____________¶¶¶¶¶¶¶¶________¶¶¶¶¶¶¶¶____________¶_¶";
	Escribir "¶__¶__________¶¶__¶¶¶¶¶¶________¶¶¶____¶¶¶¶_________¶_¶";
	Escribir "¶_¶¶________¶¶¶_¶¶¶__¶¶¶________¶¶___¶¶¶_¶¶¶_________¶_¶";
	Escribir "¶_¶¶________¶¶_¶¶¶¶¶¶_¶__________¶_¶¶¶¶¶¶¶¶_¶_______¶¶_¶";
	Escribir "¶_¶¶______¶__¶_¶¶¶¶_¶¶____________¶¶_¶¶¶¶¶_¶__¶_____¶¶_¶";
	Escribir "¶_¶¶¶____¶¶¶_¶¶_¶¶¶_¶¶¶__________¶¶¶__¶¶¶_¶_¶_¶____¶¶¶_¶";
	Escribir "¶_¶_¶____¶_¶¶__¶___¶¶¶____________¶¶¶___¶__¶¶_¶____¶_¶_¶";
	Escribir "¶_¶¶_¶__¶___¶¶___¶¶¶¶¶____________¶¶¶¶¶___¶¶¶__¶__¶__¶_¶";
	Escribir "_¶_¶_¶_¶¶___¶¶¶¶_¶¶¶¶¶____________¶¶¶¶__¶¶¶¶___¶____¶_¶";
	Escribir "__¶_¶_¶¶______¶¶__¶¶_¶____________¶¶¶__¶¶¶___¶__¶¶¶¶_¶";
	Escribir "___¶¶¶¶____¶___¶¶____¶__________¶___¶¶¶___¶______¶";
	Escribir "_____¶¶¶¶______¶¶____¶__________¶___¶¶¶_______¶¶";
	Escribir "_______¶¶¶¶____¶¶___¶___________¶___¶¶______¶";
	Escribir "_________¶¶____¶¶___¶___________¶___¶¶____¶¶";
	Escribir "___________¶¶_¶¶¶___¶___________¶___¶¶_¶¶¶";
	Escribir "______________¶_¶___¶___________¶___¶_¶";
	Escribir "_______________¶¶___¶___________¶___¶¶";
	Escribir "________________¶___¶_¶¶¶¶¶¶¶¶_¶___¶";
	Escribir "________________¶___¶¶¶¶¶¶¶¶¶¶¶¶___¶";
	Escribir "_________________¶__¶¶¶¶¶¶¶¶¶¶¶¶__¶";
	Escribir "__________________¶_¶¶¶¶¶¶¶¶¶¶¶¶_¶";
	Escribir "__________________¶___¶¶¶¶¶¶¶¶___¶";
	Escribir "___________________¶___¶¶¶¶¶¶___¶";
	Escribir "____________________¶__________¶";
	Escribir "_____________________¶¶¶¶¶¶¶¶¶¶";
FinSubProceso