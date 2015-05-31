var xmlhttp;

///////////////////VALIDACIONES CEDULA//////////////////////////////////////////
function verificarCedula(cedula)
{
	xmlhttp = GetXmlHttpObject();
	
	if (xmlhttp == null)
	{
		alert ("El navegador no soporta la solicitud HTTP realizada.");
		return;
	}
	var url = "validarCedula.php";
	url = url + "?q=" + cedula;
	xmlhttp.onreadystatechange = stateChangedCedula;
	xmlhttp.open("GET", url, true);
	xmlhttp.send(null);
}


function stateChangedCedula()
{
	if (xmlhttp.readyState == 4)
	{
		if(xmlhttp.responseText.charAt(0) == '1')
		{
                    alert ("El numero de cedula ya existe en la base de datos.");
                    document.getElementById("campo5").value = '';
		}
	}
}

///////////////////VALIDACIONES USUARIO//////////////////////////////////////////

function verificarUsuario(usuario)
{
	xmlhttp = GetXmlHttpObject();
	
	if (xmlhttp == null)
	{
		alert ("El navegador no soporta la solicitud HTTP realizada.");
		return;
	}
	var url = "validarUsuario.php";
	url = url + "?q=" + usuario;
	xmlhttp.onreadystatechange = stateChangedUsuario;
	xmlhttp.open("GET", url, true);
	xmlhttp.send(null);
}

function stateChangedUsuario()
{
	if (xmlhttp.readyState == 4)
	{
		if(xmlhttp.responseText.charAt(0) == '1')
		{
                    alert ("El nombre de usuario ya existe en la base de datos.");
                    document.getElementById("campo8").value = '';
		}
	}
}

///////////////////VALIDACIONES CORREO//////////////////////////////////////////

function verificarCorreo(correo)
{
	xmlhttp = GetXmlHttpObject();
	
	if (xmlhttp == null)
	{
		alert ("El navegador no soporta la solicitud HTTP realizada.");
		return;
	}
	var url = "validarCorreo.php";
	url = url + "?q=" + correo;
	xmlhttp.onreadystatechange = stateChangedCorreo;
	xmlhttp.open("GET", url, true);
	xmlhttp.send(null);
}




function stateChangedCorreo()
{
	if (xmlhttp.readyState == 4)
	{
		if(xmlhttp.responseText.charAt(0) == '1')
		{
                    alert ("El correo electronico ya existe en la base de datos.");
                    document.getElementById("campo4").value = '';
		}
	}
}






function GetXmlHttpObject()
{
	if (window.XMLHttpRequest)
	{
		// Codigo para IE7+, Firefox, Chrome, Opera, Safari
		return new XMLHttpRequest();
	}
	
	if (window.ActiveXObject)
	{
		// Codigo para IE6, IE5
		return new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	return null;
}




function justNumbers(e)
    {
        var keynum = window.event ? window.event.keyCode : e.which;
        if ((keynum == 8) || (keynum == 46))
            return true;
    
        return /\d/.test(String.fromCharCode(keynum));
    }
////Agregar a misfunciones.js//
///////////////Funciones para el administrador////////
////No es la mejor forma de hacerlo, pero es la única que se me ocurre
//function getProvincia1(id_ComboPais)
//{ 
//    
//    xmlhttp = GetXmlHttpObject();
//
//    if (xmlhttp == null)
//    {
//            alert ("El navegador no soporta la solicitud HTTP realizada.");
//            return;
//    }
//    xmlhttp.onreadystatechange = stateChangedProvincia1;
//    xmlhttp.open("POST","buscarProvincias.php",true);
//
////establece el header para la respuesta
//    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
//
////enviamos las variables al archivo get_combo2.php
//    xmlhttp.send("q=" + id_ComboPais);	
//
//}
//
//function stateChangedProvincia1()
//{
//    if (xmlhttp.readyState===4 && xmlhttp.status===200)
//    {
//        document.getElementById("com_Provincia1").innerHTML=xmlhttp.responseText;
//    }
//}
