// Ejercicio 1: Función que valide una contraseña (mínimo 8 caracteres, 1 número, 1 mayúscula)
function validatePassword(password) {
    const tieneMayus = /[A-Z]/.test(password);
    const tieneNum = /[0-9]/.test(password);

    if (password.length >= 8) {
        return tieneMayus && tieneNum;
    } else {
        return false;
    }    
}
console.log(validatePassword("Abc12345")); // true
console.log(validatePassword("weak")); // false

// Ejercicio 2: Crear un sistema simple de gestión de tareas
function createTaskManager() {
    let tasks = [];
    return {
        addTask: function(task) {
            // Tu código aquí
        },
        completeTask: function(taskId) {
            // Tu código aquí
        },
        listTasks: function() {
            // Tu código aquí
        }
    };
}

// Uso:
const myTasks = createTaskManager();
myTasks.addTask("Aprender JavaScript");
myTasks.addTask("Hacer ejercicio");

