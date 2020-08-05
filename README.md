# UITesting-test
Primera prueba de UITesting con XCTest sin utilizar algun framework como EarlGrey y pequeña prueba para demostrar conocimientos.

## Contenido 🧐

_Involucra distintos conocimientos como constrains, metodos para evitar fugas de memoria, implementacion de pruebas unitarias y en interface._

* Explico brevemente un fragmento de codigo

```
  measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
   
  }
```
_Esta parte es importante comentar, ya que nos permite obtener metricas sobre el rendimiento de nuestro codigo con la intencion de comparar el tiempo y cantidad de recursos que se llegan a utilizar._
_Para esto utilizamos en su primera version ciclos for anidados con la intención de añadir los caracteres introducidos por un textfield a un arrray y posteriormente comparar._
_La versión final utilizamos foreach con expresiones matematicas para reducir la cantidad de codigo, mejorar el rendimiento del proceso y abstraer los datos._
```
  let digits = text.compactMap{ $0.wholeNumberValue }
```
_De esta manera solo ingresamos a nuestro Diccionario los valores de tipo numerico._
```
  var counter = [Int: Int]()
  numbers.forEach { counter[$0] = (counter[$0] ?? 0) + 1 }
```
_Con Esta ingresamos cada caracter numerico a nuestro Diccionario y junto con su contador._
```
  if let (number, count) = counter.max(by: {$0.1 < $1.1}) {
    return (number, count)
  }
```
_Y Con estas lineas de codigo pasamos de tener un Diccionario de tipo [Int: Int] a una tupla de tipo (Int, Int)._
## Autor ✒️

* **Carlos Andrés Ponce Flores** - *Desarrollador iOS* - [PonceDev](https://github.com/Ponce156C)

## Expresiones de Gratitud 🎁

* Dejo esta pequeña muestra de conocimientos para que alguien mas pueda encontrar esta informacion de una manera mas rapida.

* Invitame una cheve 🍺 y a colaborar contigo 👨🏻‍💻. 

---
⌨️ con ❤️ por [PonceDev](https://github.com/Ponce156C) 😊
