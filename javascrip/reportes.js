function generarReporte(tipo) {
    const resultado = document.getElementById('resultado-reporte');
    resultado.innerHTML = `<h3>Generando Reporte de ${tipo.charAt(0).toUpperCase() + tipo.slice(1)}</h3>
                            <p>Por favor, espera unos segundos...</p>`;
    setTimeout(() => {
        resultado.innerHTML = `<h3>Reporte de ${tipo.charAt(0).toUpperCase() + tipo.slice(1)}</h3>
                                <p>El reporte de ${tipo} ha sido generado exitosamente.</p>`;
    }, 2000);
}
