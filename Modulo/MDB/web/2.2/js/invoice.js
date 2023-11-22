var i = 1;
function validarCaracteresEspeciales(inputElement) {
    inputElement.value = inputElement.value.replace(/[!"'-.*+\/]/g, '');
    inputElement.value = inputElement.value.toUpperCase();
}

function añadirProd() {
    var prod = document.createElement('tr');
    var code = document.createElement('td');
    var input = document.createElement('input');
    input.name="item"+i;
    code.appendChild(input);
    prod.appendChild(code);

    prod.appendChild(document.createElement('td'));

    var cant = document.createElement('td');
    var input = document.createElement('input');
    input.name="cant"+i;
    cant.appendChild(input);
    prod.appendChild(cant);

    prod.appendChild(document.createElement('td'));

    var container = document.getElementById('tbody');
    container.appendChild(prod);
    i++;
    console.log(i);

}

function sumarValoresTabla() {
    var tabla = document.getElementById('tbody');
    var tot = 0;

    for (i = 1; tabla.childNodes[i]; i++) {
        var nodovalor = tabla.childNodes[i].childNodes[3];
        var valor = nodovalor.textContent;

        var nodocant = tabla.childNodes[i].childNodes[2];
        var cant = nodocant.textContent;
        tot += Number(valor) * Number(cant);

    }
    document.getElementById('total').textContent = tot;
}


function genPDF() {

    const pdf = new jsPDF('p', 'pt', 'letter'); // Especifica el tamaño de la página (puedes ajustarlo)
    const contenido = document.querySelector("#capture");

    // Configurar los parámetros para ajustar el contenido en el PDF
    const options = {
        width: 130,
        height: 100,
        margin: {top: 15, bottom: 15, left: 15, right: 15},
        pagesplit: true
    };

    // Generar el PDF con el contenido HTML y los parámetros configurados
    pdf.fromHTML(contenido, 60, 15, options);

    // Guardar el PDF generado
    pdf.save('archivo.pdf');

}
function nonulo(){
    const contenido = document.querySelector("#PersonaImplicada").value;
    if(contenido===''){
        alert("ingrese el documento");
    }
    console.log(contenido);
}