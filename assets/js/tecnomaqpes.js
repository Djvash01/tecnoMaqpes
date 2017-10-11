function cargar() {
	var categoria = document.getElementById('categoria');
    window.location.href = "http://localhost/tecnomaqpes/php/productos.php?categoria="+categoria.value; 
}