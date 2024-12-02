// grafica.js

// Espera a que el contenido del DOM se cargue
document.addEventListener('DOMContentLoaded', () => {
    var ctx = document.getElementById('mi_tabla_del_año').getContext('2d');
    
    // Crear una nueva gráfica de barras
    var myChart = new Chart(ctx, {
        type: 'bar', // Tipo de gráfico (barras)
        data: {
            labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo'], // Etiquetas del eje X
            datasets: [{
                label: 'Ventas 2024', // Título de la serie
                data: [12, 19, 3, 5, 2], // Datos para cada mes
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)', // Color de fondo de las barras
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)', // Color de borde de las barras
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)'
                ],
                borderWidth: 1 // Grosor del borde de las barras
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true // Inicia el eje Y desde cero
                }
            }
        }
    });
});
document.addEventListener('DOMContentLoaded', () => {
    var ctx = document.getElementById('mi_tabla_del_mes').getContext('2d');
    
    // Crear una nueva gráfica de barras
    var myChart = new Chart(ctx, {
        type: 'bar', // Tipo de gráfico (barras)
        data: {
            labels: ['1', '2', '3', '4', '5','6', '7', '8', '9', '10'], // Etiquetas del eje X
            datasets: [{
                label: 'Ventas men noviembre ', // Título de la serie
                data: [50, 39, 52, 20, 27,82,14,41,54,96], // Datos para cada mes
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)', // Color de fondo de las barras
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 99, 132, 0.2)', // Color de fondo de las barras
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)', // Color de borde de las barras
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 99, 132, 1)', // Color de borde de las barras
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)'
                ],
                borderWidth: 1 // Grosor del borde de las barras
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true // Inicia el eje Y desde cero
                }
            }
        }
    });
});

