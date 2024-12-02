// Función para registrar un producto
function registerClient() {
    const name = document.getElementById("name").value;
    const email = document.getElementById("email").value;
    const phone = document.getElementById("phone").value;

    if (name && email && phone) {
        const table = document.getElementById("INVENTARIO TABLA");
        const newRow = table.insertRow();
        newRow.insertCell().textContent = name;
        newRow.insertCell().textContent = email;
        newRow.insertCell().textContent = phone;

        document.getElementById("clientForm").reset();
        saveTableToLocalStorage();
    } else {
        alert("Por favor, completa todos los campos.");
    }
}

// Función para guardar la tabla en localStorage
function saveTableToLocalStorage() {
    const table = document.getElementById("INVENTARIO TABLA");
    const rows = Array.from(table.rows).slice(1); // Excluir encabezado
    const tableData = rows.map(row => {
        return Array.from(row.cells).map(cell => cell.textContent);
    });

    localStorage.setItem("INVENTARIO TABLA", JSON.stringify(tableData));
}

// Función para cargar la tabla desde localStorage
function loadTableFromLocalStorage() {
    const tableData = localStorage.getItem("INVENTARIO TABLA");
    if (tableData) {
        const parsedData = JSON.parse(tableData);
        const table = document.getElementById("INVENTARIO TABLA");

        parsedData.forEach(dataRow => {
            const newRow = table.insertRow();
            dataRow.forEach(cellData => {
                newRow.insertCell().textContent = cellData;
            });
        });
    }
}

// Cargar tabla al cargar la página
window.onload = loadTableFromLocalStorage;
