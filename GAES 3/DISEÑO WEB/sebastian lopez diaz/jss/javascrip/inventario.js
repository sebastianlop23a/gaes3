// Función para registrar un cliente
function registerClient() {
    // Obtiene los valores del formulario
    const name = document.getElementById("name").value;
    const email = document.getElementById("email").value;
    const phone = document.getElementById("phone").value;

    // Verifica que todos los campos estén completos
    if (name && email && phone) {
        // Obtiene la tabla y crea una nueva fila
        const table = document.getElementById("clientTable");
        if (table) {
            const newRow = table.insertRow();

            // Añade una celda para cada dato del cliente
            newRow.insertCell().textContent = name;
            newRow.insertCell().textContent = email;
            newRow.insertCell().textContent = phone;

            // Limpia el formulario después de registrar el cliente
            document.getElementById("clientForm").reset();
        } else {
            console.error("La tabla no se ha encontrado.");
        }
    } else {
        alert("Por favor, completa todos los campos.");
    }
}
