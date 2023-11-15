function validarCaracteresEspeciales(inputElement) {
    inputElement.value = inputElement.value.replace(/[!"'-.*+\/]/g, '');
    inputElement.value = inputElement.value.toUpperCase();
}
function obligatorio() {
    
  document.getElementById('miFormulario').addEventListener('submit', function(event) {
  var tipoVia = document.getElementById("tipo_via");
  var numVia = document.getElementById("let_num_principal");
  var numViaGen = document.getElementById("let_num_via_gener");
  var numPlaca = document.getElementById("num_placa");
  var barrio = document.getElementById("barrio");
  var tipoPredio = document.getElementById("tipo_predio");
  
  if (tipoVia.value.trim() === '' || 
      numVia.value.trim() === '' || 
      numViaGen.value.trim() === ''|| 
      numPlaca.value.trim() === '' || 
      barrio.value.trim() === '' || 
      tipoPredio.value.trim() === '' ) {
    alert('Por favor, complete todos los campos.');
    event.preventDefault(); // Evita que se envíe el formulario si algún campo está vacío
  }
});}
function actualizarCampoTexto() {
    const tipoVia = document.getElementById("tipo_via").value;
    const numNomPrincipal = document.getElementById("num_nom_principal").value;
    const letNumPrincipal = document.getElementById("let_num_principal").value;
    const prefBis = document.getElementById("prefBis").value;
    const letNumPreBis = document.getElementById("let_num_prebis").value;
    const cuadrante = document.getElementById("cuadrante").value;
    const numViaGener = document.getElementById("num_via_gener").value;
    const letNumViaGener = document.getElementById("let_num_via_gener").value;
    const sufBis = document.getElementById("sufBis").value;
    const letNumSuBis = document.getElementById("let_num_su_bis").value;
    const numPlaca = document.getElementById("num_placa").value;
    const cuadranteViaGener = document.getElementById("cuadrante_via_gener").value;
    const barrio = document.getElementById("barrio").value;
    const nomBarrio = document.getElementById("nom_barrio").value;
    const urbanizacion = document.getElementById("urbanizacion").value;
    const nomUrbanizacion = document.getElementById("nom_urbanizacion").value;
    const manzana = document.getElementById("manzana").value;
    const nomManzana = document.getElementById("nom_manzana").value;
    const tipoPredio = document.getElementById("tipo_predio").value;
    const nomPredio = document.getElementById("nom_predio").value;
    const complemento2 = document.getElementById("complemento2").value;

    const campoTexto = document.getElementById("direccion");
    campoTexto.value = `${tipoVia} ${numNomPrincipal} ${letNumPrincipal} ${prefBis} ${letNumPreBis} ${cuadrante} ${numViaGener} ${letNumViaGener} ${sufBis} ${letNumSuBis} ${numPlaca} ${cuadranteViaGener} ${barrio} ${nomBarrio} ${urbanizacion} ${nomUrbanizacion} ${manzana} ${nomManzana} ${tipoPredio} ${nomPredio} ${complemento2}`;
}

function añadirTel() {

    var cel = document.createElement('input');
    cel.type = 'text';
    cel.setAttribute('placeholder', 'Número de telefono');
    cel.className = 'celular';
    cel.id = 'celular';
    var container = document.getElementById('contTel');
    container.appendChild(cel);
}
function añadirCorreo() {
    var cel = document.createElement('input');
    cel.type = 'text';
    cel.setAttribute('placeholder', 'Correo electronico');
    cel.className = 'correo';
    cel.id = 'correo';
    var container = document.getElementById('contCorr');
    container.appendChild(cel);

}

function mostrarOcultarDiv() {
    var div = document.getElementById("direc");
    if (div.style.display === "none") {
        div.style.display = "block"; // Cambia a 'block' para mostrar el div
    } else {
        div.style.display = "none"; // Cambia a 'none' para ocultar el div
    }
}

function duplicarDiv(node) {
    console.log(node);
    var copy = node.parentNode.cloneNode(true);
    var cont = document.getElementById("contenedor");
    cont.appendChild(copy);
}