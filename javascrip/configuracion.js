const themeSelect = document.getElementById('theme-select');
themeSelect.addEventListener('change', () => {
  const theme = themeSelect.value;
  const style = document.getElementById('theme-style');
  if (theme === 'dark') {
    style.innerHTML = 'body { background-color: black; color: white; }';
  } else {
    style.innerHTML = 'body { background-color: white; color: black; }';
  }
  // Guardar configuración en el navegador
  localStorage.setItem('theme', theme);
});

// Cargar configuración guardada
const savedTheme = localStorage.getItem('theme');
if (savedTheme) {
  themeSelect.value = savedTheme;
  themeSelect.dispatchEvent(new Event('change'));
}