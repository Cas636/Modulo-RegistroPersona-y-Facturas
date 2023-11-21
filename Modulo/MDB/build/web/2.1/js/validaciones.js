var suma = '';
function validarCaracteresEspeciales(inputElement) {
    inputElement.value = inputElement.value.replace(/[!"'-.*+\/]/g, '');
    inputElement.value = inputElement.value.toUpperCase();
}


function handleSubmit(event) {
    event.preventDefault(); // Evitar el envío automático del formulario
    var form = event.target; // Obtener el formulario
    var formData = new FormData(form); // Crear un objeto FormData con los datos del formulario
    var dic = {};
    // Obtener los datos del formulario
    for (var pair of formData.entries()) {
        //console.log(pair[0] + ': ' + pair[1]); // Mostrar los datos en la consola (clave: valor)
        dic[pair[0]] = pair[1];
    }
    var a = false;
    for (let clave in dic) {
        if (dic.hasOwnProperty(clave)) {
            if (clave === '1' ||
                    clave === '2' ||
                    clave === '7' ||
                    clave === '11' ||
                    clave === '13' ||
                    clave === '19' ||
                    clave === 'tipoPersona' ||
                    clave === 'tipoDocumento' ||
                    clave === 'nDocumento' ||
                    clave === 'nombre' ||
                    clave === 'apellido') {
                // console.log(dic[clave]);
                if (dic[clave] === "" || dic[clave].trim() === "") {
                    alert(`El valor para la clave ${clave} está vacío.`);
                    var a = true;
                }
            }
        }
    }
    if (!a) {
        form.submit();
    }

}

function actualizarCampoTexto(node) {
    const valor = node.value;

    const campoTexto = document.getElementById("direccion");
    campoTexto.value = `${suma} ${valor}`;
    suma = suma + ' ' + valor;
}

function añadirCont() {
    var cel = document.createElement('input');
    cel.type = 'text';
    cel.setAttribute('placeholder', 'Correo electronico');
    cel.className = 'correo';
    cel.id = 'correo';
    var container = document.getElementById('contCorr');
    container.appendChild(cel);
}

function mostrarOcultarDiv(node) {
    var div = node.nextElementSibling;
    if (div.style.display === "none") {
        div.style.display = "block"; // Cambia a 'block' para mostrar el div
    } else {
        div.style.display = "none"; // Cambia a 'none' para ocultar el div
    }
}

function duplicarDiv(node) {
    var copy = node.parentNode.cloneNode(true);
    var cont = node.nextElementSibling;
    cont.appendChild(copy);
}









