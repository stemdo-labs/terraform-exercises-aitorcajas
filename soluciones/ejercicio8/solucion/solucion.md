Para hacer este ejercicio he creado un modulo para crear un contenedor en la cuenta de almacenamiento que tenemos con nuestra cuenta (en mi caso `staacajasdvfinlab`) y luego he añadido un backend con los siguientes valores:
```
backend "azurerm" {
    storage_account_name = "staacajasdvfinlab"
    container_name = "terraform-state"
    key = "terraform.tfstate"
    resource_group_name = "rg-acajas-dvfinlab"
}
```

Después de esto al hacer un init te pedirá que compartas el state con el backend nuevo y deberás aceptar:<br>
<img src="../../img/ejercicio8.png" alt="captura"/>
