function cargar() {
	var categoria = document.getElementById('categoria');
    window.location.href = "http://localhost/tecnomaqpes/php/productos.php?categoria="+categoria.value+"&sub=1"; 
}

function cargarSub() {
	var categoria = document.getElementById('categoria');
	var subCategoria = document.getElementById('subcategoria');
    window.location.href = "http://localhost/tecnomaqpes/php/productos.php?categoria="+categoria.value+"&sub="+subcategoria.value; 
}
